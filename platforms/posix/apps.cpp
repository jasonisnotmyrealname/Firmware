/* definitions of builtin command list - automatically generated, do not edit */
#include "px4_posix.h"
#include "px4_log.h"

#include "apps.h"

#include <cstdio>
#include <map>
#include <string>

#include <cstdlib>

extern "C" {

int uorb_main(int argc, char *argv[]);
int camera_trigger_main(int argc, char *argv[]);
int sensors_main(int argc, char *argv[]);
int param_main(int argc, char *argv[]);
int reboot_main(int argc, char *argv[]);
int shutdown_main(int argc, char *argv[]);
int top_main(int argc, char *argv[]);
int listener_main(int argc, char *argv[]);
int camera_feedback_main(int argc, char *argv[]);
int commander_main(int argc, char *argv[]);
int mavlink_main(int argc, char *argv[]);
int logger_main(int argc, char *argv[]);
int dataman_main(int argc, char *argv[]);

int shutdown_main(int argc, char *argv[]);
int list_tasks_main(int argc, char *argv[]);
int list_files_main(int argc, char *argv[]);
int list_devices_main(int argc, char *argv[]);
int list_topics_main(int argc, char *argv[]);
int sleep_main(int argc, char *argv[]);
int wait_for_topic(int argc, char *argv[]);

}

extern void px4_show_devices(void);

void init_app_map(apps_map_type &apps)
{
	apps["uorb"] = uorb_main;
	apps["camera_trigger"] = camera_trigger_main;
	apps["sensors"] = sensors_main;
	apps["param"] = param_main;
	apps["reboot"] = reboot_main;
	apps["shutdown"] = shutdown_main;
	apps["top"] = top_main;
	apps["listener"] = listener_main;
	apps["camera_feedback"] = camera_feedback_main;
	apps["commander"] = commander_main;
	apps["mavlink"] = mavlink_main;
	apps["logger"] = logger_main;
	apps["dataman"] = dataman_main;

	apps["shutdown"] = shutdown_main;
	apps["list_tasks"] = list_tasks_main;
	apps["list_files"] = list_files_main;
	apps["list_devices"] = list_devices_main;
	apps["list_topics"] = list_topics_main;
	apps["sleep"] = sleep_main;
	apps["wait_for_topic"] = wait_for_topic;
}

void list_builtins(apps_map_type &apps)
{
	printf("Builtin Commands:\n");
	for (apps_map_type::iterator it = apps.begin(); it != apps.end(); ++it) {
		printf("  %s\n", it->first.c_str());
	}
}

int shutdown_main(int argc, char *argv[])
{
	printf("Shutting down\n");
	system_exit(0);
}

int list_tasks_main(int argc, char *argv[])
{
	px4_show_tasks();
	return 0;
}

int list_devices_main(int argc, char *argv[])
{
	px4_show_devices();
	return 0;
}

int list_topics_main(int argc, char *argv[])
{
	px4_show_topics();
	return 0;
}

int list_files_main(int argc, char *argv[])
{
	px4_show_files();
	return 0;
}

int sleep_main(int argc, char *argv[])
{
        if (argc != 2) {
           PX4_WARN( "Usage: sleep <seconds>" );
           return 1;
        }

        unsigned long usecs = 1000000UL * atol(argv[1]);
        printf("Sleeping for %s s; (%lu us).\n", argv[1], usecs);
        usleep(usecs);
        return 0;
}

#include "uORB/uORB.h"

int wait_for_topic(int argc, char *argv[])
{
	if (argc < 2 || argc > 3) {
		printf("Usage: wait_for_topic <topic> [timeout_sec]\n");
		return 1;
	}

	struct orb_metadata meta = { .o_name = argv[1],
				     .o_size = 0,
				     .o_size_no_padding = 0,
				     .o_fields = nullptr };

	unsigned int timeout = (argc == 3) ? (unsigned int)atoi(argv[2]) : 0;
	unsigned int elapsed = 0;

	printf("Waiting for topic %s timeout %u\n", argv[1], timeout);

	while (orb_exists(&meta, 0) != 0 && (timeout && (elapsed < timeout)))
	{
		sleep(1);
		elapsed += 1;
	}

	return 0;
}

