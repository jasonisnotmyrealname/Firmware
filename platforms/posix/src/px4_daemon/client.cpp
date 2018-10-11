/****************************************************************************
 *
 *   Copyright (C) 2016 PX4 Development Team. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 * 3. Neither the name PX4 nor the names of its contributors may be
 *    used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 ****************************************************************************/
/**
 * @file client.cpp
 *
 * @author Julian Oes <julian@oes.ch>
 * @author Beat Küng <beat-kueng@gmx.net>
 */

#include <errno.h>
#include <stdio.h>
#include <fcntl.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/un.h>

#include <string>

#include <px4_log.h>
#include "client.h"

namespace px4_daemon
{


namespace client
{
static Client *_instance;
}

Client::Client(int instance_id) :
	_uuid(0),
	_client_send_pipe_fd(-1),
	_instance_id(instance_id)
{
	client::_instance = this;
}

Client::~Client()
{
	client::_instance = nullptr;
}

int
Client::generate_uuid()
{
	int rand_fd = open("/dev/urandom", O_RDONLY);

	if (rand_fd < 0) {
		PX4_ERR("open urandom");
		return rand_fd;
	}

	int ret = 0;

	int rand_read = read(rand_fd, &_uuid, sizeof(_uuid));

	if (rand_read != sizeof(_uuid)) {
		PX4_ERR("rand read fail");
		ret = -errno;
	}

	close(rand_fd);
	return ret;
}

//在client中执行argv
int
Client::process_args(const int argc, const char **argv)
{
	// Prepare return pipe first to avoid a race.
	// 先创建client自己的recv_pipe
	int ret = _prepare_recv_pipe();

	if (ret != 0) {
		PX4_ERR("Could not prepare recv pipe");
		return -2;
	}

	//组织packet写入到client send pipe中
	ret = _send_cmds(argc, argv);

	if (ret != 0) {
		PX4_ERR("Could not send commands");
		return -3;
	}

	//监听client recv pipe
	return _listen();
}


int
Client::_prepare_recv_pipe()
{
	//给client的recv_pipe命名
	int ret = get_client_recv_pipe_path(_uuid, _recv_pipe_path, sizeof(_recv_pipe_path));

	if (ret < 0) {
		PX4_ERR("failed to assemble path");
		return ret;
	}
	//创建pipe（0666:rwxrwxrwx,x表示可执行）
	ret = mkfifo(_recv_pipe_path, 0666);

	if (ret < 0) {
		PX4_ERR("pipe %s already exists, errno: %d, %s", _recv_pipe_path, errno, strerror(errno));
		return ret;
	}

	return 0;
}

int
Client::_send_cmds(const int argc, const char **argv)
{
	// Send the command to server.
	client_send_packet_s packet;
	packet.header.msg_id = client_send_packet_s::message_header_s::e_msg_id::EXECUTE;
	packet.header.client_uuid = _uuid;
	packet.payload.execute_msg.is_atty = isatty(STDOUT_FILENO);

	// Concat arguments to send them.
	std::string cmd_buf;

	for (int i = 0; i < argc; ++i) {
		cmd_buf += argv[i];

		if (i + 1 != argc) {
			cmd_buf += " ";
		}
	}

	if (cmd_buf.size() >= sizeof(packet.payload.execute_msg.cmd)) {
		PX4_ERR("commmand too long");
		return -1;
	}

	strcpy((char *)packet.payload.execute_msg.cmd, cmd_buf.c_str());

	// The size is +1 because we want to include the null termination.
	packet.header.payload_length = cmd_buf.size() + 1 + sizeof(packet.payload.execute_msg.is_atty);

	// 打开client_send_pipe(这个_instance_id和server中的不一样，怎么保证client和server用的是一个pipe???)
	_client_send_pipe_fd = open(get_client_send_pipe_path(_instance_id).c_str(), O_WRONLY);

	if (_client_send_pipe_fd < 0) {
		PX4_ERR("pipe open fail (%i)", errno);
		return _client_send_pipe_fd;
	}

	//将packet写入到pipe中
	int bytes_to_send = get_client_send_packet_length(&packet);
	int bytes_sent = write(_client_send_pipe_fd, &packet, bytes_to_send);

	if (bytes_sent != bytes_to_send) {
		PX4_ERR("write fail (%i)", errno);
		return bytes_sent;
	}

	return 0;
}

//监听server返回的消息
int
Client::_listen()
{
	int client_recv_pipe_fd = open(_recv_pipe_path, O_RDONLY);

	if (client_recv_pipe_fd < 0) {
		PX4_ERR("open failed, errno: %d, %s", errno, strerror(errno));
	}

	bool exit_loop = false;
	int exit_arg = 0;

	while (!exit_loop) {

		// We only read as much as we need, otherwise we might get out of
		// sync with packets.
		client_recv_packet_s packet_recv;
		int bytes_read = read(client_recv_pipe_fd, &packet_recv, sizeof(client_recv_packet_s::header));

		if (bytes_read > 0) {

			// Using the header we can determine how big the payload is.
			int payload_to_read = sizeof(packet_recv)
					      - sizeof(packet_recv.header)
					      - sizeof(packet_recv.payload)
					      + packet_recv.header.payload_length;

			// Again, we only read as much as we need because otherwise we need
			// hold a buffer and parse it.
			bytes_read = read(client_recv_pipe_fd, ((uint8_t *)&packet_recv) + bytes_read, payload_to_read);

			if (bytes_read > 0) {

				int retval = 0;
				bool should_exit = false;

				int parse_ret = _parse_client_recv_packet(packet_recv, retval, should_exit);

				if (parse_ret != 0) {
					PX4_ERR("retval could not be parsed");
					exit_arg = -1;

				} else {
					exit_arg = retval;
				}

				exit_loop = should_exit;

			} else if (bytes_read == 0) {
				exit_arg = 0;
				exit_loop = true;
			}

		} else if (bytes_read == 0) {
			// 0 means the pipe has been closed by all clients.
			exit_arg = 0;
			exit_loop = true;
		}
	}

	close(_client_send_pipe_fd);
	return exit_arg;
}

//server返回的消息有两种，一种是retval(return value)，一种是stdout(向终端print消息)
int
Client::_parse_client_recv_packet(const client_recv_packet_s &packet, int &retval, bool &should_exit)
{
	switch (packet.header.msg_id) {
	case client_recv_packet_s::message_header_s::e_msg_id::RETVAL:

		should_exit = true;
		return _retval_cmd_packet(packet, retval);

	case client_recv_packet_s::message_header_s::e_msg_id::STDOUT:

		should_exit = false;
		return _stdout_msg_packet(packet);

	default:
		should_exit = true;
		PX4_ERR("recv msg_id not handled: %d", (int)packet.header.msg_id);
		return -1;
	}
}

int
Client::_retval_cmd_packet(const client_recv_packet_s &packet, int &retval)
{
	if (packet.header.payload_length == sizeof(packet.payload.retval_msg.retval)) {
		retval = packet.payload.retval_msg.retval;
		return 0;

	} else {
		PX4_ERR("payload size wrong");
		return -1;
	}
}

int
Client::_stdout_msg_packet(const client_recv_packet_s &packet)
{
	if (packet.header.payload_length <= sizeof(packet.payload.stdout_msg.text)) {

		printf("%s", packet.payload.stdout_msg.text);

		return 0;

	} else {
		PX4_ERR("payload size wrong (%i > %i)", packet.header.payload_length, sizeof(packet.payload.stdout_msg.text));
		return -1;
	}
}

void
Client::register_sig_handler()
{
	// Register handlers for Ctrl+C to kill the thread if something hangs.
	struct sigaction sig_int {};
	sig_int.sa_handler = Client::_static_sig_handler;

	// Without the flag SA_RESTART, we can't use open() after Ctrl+C has
	// been pressed, and we can't wait for the return value from the
	// cancelled command.
	sig_int.sa_flags = SA_RESTART;
	sigaction(SIGINT, &sig_int, nullptr);
	sigaction(SIGTERM, &sig_int, nullptr);
}

void
Client::_static_sig_handler(int sig_num)
{
	client::_instance->_sig_handler(sig_num);
}

void
Client::_sig_handler(int sig_num)
{
	client_send_packet_s packet;
	packet.header.msg_id = client_send_packet_s::message_header_s::e_msg_id::KILL;
	packet.header.client_uuid = _uuid;
	packet.payload.kill_msg.cmd_id = sig_num;
	packet.header.payload_length = sizeof(packet.payload.kill_msg.cmd_id);

	if (_client_send_pipe_fd < 0) {
		PX4_ERR("pipe open fail");
		system_exit(-1);
	}

	int bytes_to_send = get_client_send_packet_length(&packet);
	int bytes_sent = write(_client_send_pipe_fd, &packet, bytes_to_send);

	if (bytes_sent != bytes_to_send) {
		PX4_ERR("write fail");
		system_exit(-1);
	}
}

} // namespace px4_daemon

