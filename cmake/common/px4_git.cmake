############################################################################
#
# Copyright (c) 2017 PX4 Development Team. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in
#    the documentation and/or other materials provided with the
#    distribution.
# 3. Neither the name PX4 nor the names of its contributors may be
#    used to endorse or promote products derived from this software
#    without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
# OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
# AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
############################################################################

include(CMakeParseArguments)
include(common/px4_base)

#=============================================================================
#
#	Defined functions in this file
#
# 	utility functions
#
#		* px4_add_git_submodule
#

#=============================================================================
#
#	px4_add_git_submodule
#
#	This function add a git submodule target.
#
#	Usage:
#		px4_add_git_submodule(TARGET <target> PATH <path>)
#
#	Input:
#		PATH		: git submodule path
#
#	Output:
#		TARGET		: git target
#
#	Example:
#		px4_add_git_submodule(TARGET git_nuttx PATH "NuttX")
#       px4_add_git_submodule(TARGET git_gps_devices PATH "devices")
#       其中PATH指的是生成文件所在的文件夹
#
function(px4_add_git_submodule)
	#解析参数:TARGET和PATH是单值的变量（ONE_VALUE），也是必需的（REQUIRED）
	px4_parse_function_args(
		NAME px4_add_git_submodule
		ONE_VALUE TARGET PATH
		REQUIRED TARGET PATH
		ARGN ${ARGN})
	# check_submodules用于检查submodule是不是存在等，执行git submodule update等...
	execute_process(COMMAND ${PX4_SOURCE_DIR}/Tools/check_submodules.sh ${PATH}
			WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
			)

	string(REPLACE "/" "_" NAME ${PATH})
	string(REPLACE "." "_" NAME ${NAME})

	add_custom_command(OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/git_init_${NAME}.stamp
		COMMAND bash ${PX4_SOURCE_DIR}/Tools/check_submodules.sh ${PATH}
		COMMAND ${CMAKE_COMMAND} -E touch ${CMAKE_CURRENT_BINARY_DIR}/git_init_${NAME}.stamp
		DEPENDS ${PX4_SOURCE_DIR}/.gitmodules ${PATH}/.git
		COMMENT "git submodule ${PATH}"
		WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
		USES_TERMINAL
		)

	add_custom_target(${TARGET} DEPENDS git_init_${NAME}.stamp)  #对于mavlink来说,这个stamp是空文件，写不写都行
endfunction()
