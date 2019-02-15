# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jason/Project/PX4/Firmware

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jason/Project/PX4/Firmware

# Include any dependencies generated for this target.
include src/lib/parameters/CMakeFiles/parameters.dir/depend.make

# Include the progress variables for this target.
include src/lib/parameters/CMakeFiles/parameters.dir/progress.make

# Include the compile flags for this target's objects.
include src/lib/parameters/CMakeFiles/parameters.dir/flags.make

src/lib/parameters/px4_parameters.c: parameters.xml
src/lib/parameters/px4_parameters.c: src/lib/parameters/px_generate_params.py
src/lib/parameters/px4_parameters.c: src/lib/parameters/templates/px4_parameters.c.jinja
src/lib/parameters/px4_parameters.c: src/lib/parameters/templates/px4_parameters.h.jinja
src/lib/parameters/px4_parameters.c: src/lib/parameters/templates/px4_parameters_public.h.jinja
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating px4_parameters.c, px4_parameters.h, px4_parameters_public.h"
	cd /home/jason/Project/PX4/Firmware/src/lib/parameters && /usr/bin/python /home/jason/Project/PX4/Firmware/src/lib/parameters/px_generate_params.py --xml /home/jason/Project/PX4/Firmware/parameters.xml --dest /home/jason/Project/PX4/Firmware/src/lib/parameters

src/lib/parameters/px4_parameters.h: src/lib/parameters/px4_parameters.c
	@$(CMAKE_COMMAND) -E touch_nocreate src/lib/parameters/px4_parameters.h

src/lib/parameters/px4_parameters_public.h: src/lib/parameters/px4_parameters.c
	@$(CMAKE_COMMAND) -E touch_nocreate src/lib/parameters/px4_parameters_public.h

parameters.xml: src/drivers/camera_trigger/camera_trigger_params.c
parameters.xml: src/drivers/gps/params.c
parameters.xml: src/drivers/heater/heater_params.c
parameters.xml: src/drivers/mkblctrl/mkblctrl_params.c
parameters.xml: src/drivers/px4fmu/px4fmu_params.c
parameters.xml: src/drivers/px4io/px4io_params.c
parameters.xml: src/drivers/rgbled/rgbled_params.c
parameters.xml: src/drivers/telemetry/iridiumsbd/iridiumsbd_params.c
parameters.xml: src/drivers/vmount/vmount_params.c
parameters.xml: src/examples/bottle_drop/bottle_drop_params.c
parameters.xml: src/examples/fixedwing_control/params.c
parameters.xml: src/examples/rover_steering_control/params.c
parameters.xml: src/examples/segway/params.c
parameters.xml: src/examples/subscriber/subscriber_params.c
parameters.xml: src/lib/battery/battery_params.c
parameters.xml: src/lib/circuit_breaker/circuit_breaker_params.c
parameters.xml: src/lib/controllib/controllib_test/test_params.c
parameters.xml: src/modules/attitude_estimator_q/attitude_estimator_q_params.c
parameters.xml: src/modules/camera_feedback/camera_feedback_params.c
parameters.xml: src/modules/commander/commander_params.c
parameters.xml: src/modules/commander/failure_detector/failure_detector_params.c
parameters.xml: src/modules/ekf2/ekf2_params.c
parameters.xml: src/modules/events/events_params.c
parameters.xml: src/modules/fw_att_control/fw_att_control_params.c
parameters.xml: src/modules/fw_pos_control_l1/fw_pos_control_l1_params.c
parameters.xml: src/modules/fw_pos_control_l1/launchdetection/launchdetection_params.c
parameters.xml: src/modules/fw_pos_control_l1/runway_takeoff/runway_takeoff_params.c
parameters.xml: src/modules/gnd_att_control/gnd_att_control_params.c
parameters.xml: src/modules/gnd_pos_control/gnd_pos_control_params.c
parameters.xml: src/modules/land_detector/land_detector_params.c
parameters.xml: src/modules/landing_target_estimator/landing_target_estimator_params.c
parameters.xml: src/modules/local_position_estimator/params.c
parameters.xml: src/modules/logger/params.c
parameters.xml: src/modules/mavlink/mavlink_params.c
parameters.xml: src/modules/mc_att_control/mc_att_control_params.c
parameters.xml: src/modules/mc_pos_control/mc_pos_control_params.c
parameters.xml: src/modules/navigator/datalinkloss_params.c
parameters.xml: src/modules/navigator/follow_target_params.c
parameters.xml: src/modules/navigator/geofence_params.c
parameters.xml: src/modules/navigator/gpsfailure_params.c
parameters.xml: src/modules/navigator/mission_params.c
parameters.xml: src/modules/navigator/navigator_params.c
parameters.xml: src/modules/navigator/precland_params.c
parameters.xml: src/modules/navigator/rcloss_params.c
parameters.xml: src/modules/navigator/rtl_params.c
parameters.xml: src/modules/position_estimator_inav/params.c
parameters.xml: src/modules/sensors/motor_params.c
parameters.xml: src/modules/sensors/rc_params.c
parameters.xml: src/modules/sensors/sensor_params.c
parameters.xml: src/modules/simulator/simulator_params.c
parameters.xml: src/modules/syslink/syslink_params.c
parameters.xml: src/modules/systemlib/system_params.c
parameters.xml: src/modules/uavcan/uavcan_params.c
parameters.xml: src/modules/uavcanesc/uavcanesc_params.c
parameters.xml: src/modules/uavcannode/uavcannode_params.c
parameters.xml: src/modules/vtol_att_control/standard_params.c
parameters.xml: src/modules/vtol_att_control/tailsitter_params.c
parameters.xml: src/modules/vtol_att_control/tiltrotor_params.c
parameters.xml: src/modules/vtol_att_control/vtol_att_control_params.c
parameters.xml: src/modules/wind_estimator/wind_estimator_params.c
parameters.xml: src/platforms/qurt/fc_addon/mpu_spi/mpu9x50_params.c
parameters.xml: src/platforms/qurt/fc_addon/rc_receiver/rc_receiver_params.c
parameters.xml: src/platforms/qurt/fc_addon/uart_esc/uart_esc_params.c
parameters.xml: src/systemcmds/tests/params.c
parameters.xml: src/lib/parameters/parameters_injected.xml
parameters.xml: src/lib/parameters/px4params/srcparser.py
parameters.xml: src/lib/parameters/px4params/srcscanner.py
parameters.xml: src/lib/parameters/px4params/xmlout.py
parameters.xml: src/lib/parameters/px_process_params.py
parameters.xml: src/lib/parameters/parameters_injected.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating parameters.xml"
	cd /home/jason/Project/PX4/Firmware/src/lib/parameters && /usr/bin/python /home/jason/Project/PX4/Firmware/src/lib/parameters/px_process_params.py --src-path /home/jason/Project/PX4/Firmware/src/lib/DriverFramework/framework /home/jason/Project/PX4/Firmware/src/lib/airspeed /home/jason/Project/PX4/Firmware/src/lib/battery /home/jason/Project/PX4/Firmware/src/lib/bezier /home/jason/Project/PX4/Firmware/src/lib/cdev /home/jason/Project/PX4/Firmware/src/lib/circuit_breaker /home/jason/Project/PX4/Firmware/src/lib/controllib /home/jason/Project/PX4/Firmware/src/lib/conversion /home/jason/Project/PX4/Firmware/src/lib/drivers/airspeed /home/jason/Project/PX4/Firmware/src/lib/drivers/device /home/jason/Project/PX4/Firmware/src/lib/drivers/led /home/jason/Project/PX4/Firmware/src/lib/FlightTasks /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/FlightTask /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Manual /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Auto /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/AutoMapper /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/ManualStabilized /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/ManualAltitude /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/ManualAltitudeSmooth /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/ManualPosition /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/ManualPositionSmooth /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/AutoLine /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/AutoFollowMe /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Offboard /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Failsafe /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Orbit /home/jason/Project/PX4/Firmware/src/lib/landing_slope /home/jason/Project/PX4/Firmware/src/lib/led /home/jason/Project/PX4/Firmware/src/lib/mathlib /home/jason/Project/PX4/Firmware/src/lib/pid /home/jason/Project/PX4/Firmware/src/lib/pwm_limit /home/jason/Project/PX4/Firmware/src/lib/terrain_estimation /home/jason/Project/PX4/Firmware/src/lib/tunes /home/jason/Project/PX4/Firmware/src/platforms/common /home/jason/Project/PX4/Firmware/src/modules/systemlib /home/jason/Project/PX4/Firmware/src/modules/uORB /home/jason/Project/PX4/Firmware/src/drivers/boards/sitl /home/jason/Project/PX4/Firmware/src/drivers/camera_trigger /home/jason/Project/PX4/Firmware/src/modules/sensors /home/jason/Project/PX4/Firmware/src/systemcmds/param /home/jason/Project/PX4/Firmware/src/systemcmds/reboot /home/jason/Project/PX4/Firmware/src/systemcmds/shutdown /home/jason/Project/PX4/Firmware/src/systemcmds/top /home/jason/Project/PX4/Firmware/src/systemcmds/topic_listener /home/jason/Project/PX4/Firmware/src/modules/camera_feedback /home/jason/Project/PX4/Firmware/src/modules/commander /home/jason/Project/PX4/Firmware/src/modules/mavlink /home/jason/Project/PX4/Firmware/src/modules/logger /home/jason/Project/PX4/Firmware/src/modules/dataman /home/jason/Project/PX4/Firmware/src/drivers/camera_trigger/CMakeFiles /home/jason/Project/PX4/Firmware/src/drivers/camera_trigger/interfaces /home/jason/Project/PX4/Firmware/src/modules/sensors/CMakeFiles /home/jason/Project/PX4/Firmware/src/systemcmds/param/CMakeFiles /home/jason/Project/PX4/Firmware/src/systemcmds/reboot/CMakeFiles /home/jason/Project/PX4/Firmware/src/systemcmds/shutdown/CMakeFiles /home/jason/Project/PX4/Firmware/src/systemcmds/top/CMakeFiles /home/jason/Project/PX4/Firmware/src/systemcmds/topic_listener/CMakeFiles /home/jason/Project/PX4/Firmware/src/modules/camera_feedback/CMakeFiles /home/jason/Project/PX4/Firmware/src/modules/commander/CMakeFiles /home/jason/Project/PX4/Firmware/src/modules/commander/commander_tests /home/jason/Project/PX4/Firmware/src/modules/commander/failure_detector /home/jason/Project/PX4/Firmware/src/modules/mavlink/CMakeFiles /home/jason/Project/PX4/Firmware/src/modules/mavlink/mavlink_tests /home/jason/Project/PX4/Firmware/src/modules/logger/CMakeFiles /home/jason/Project/PX4/Firmware/src/modules/dataman/CMakeFiles --xml /home/jason/Project/PX4/Firmware/parameters.xml --inject-xml /home/jason/Project/PX4/Firmware/src/lib/parameters/parameters_injected.xml --overrides {} --board sitl

src/lib/parameters/CMakeFiles/parameters.dir/parameters.cpp.o: src/lib/parameters/CMakeFiles/parameters.dir/flags.make
src/lib/parameters/CMakeFiles/parameters.dir/parameters.cpp.o: src/lib/parameters/parameters.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/lib/parameters/CMakeFiles/parameters.dir/parameters.cpp.o"
	cd /home/jason/Project/PX4/Firmware/src/lib/parameters && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parameters.dir/parameters.cpp.o -c /home/jason/Project/PX4/Firmware/src/lib/parameters/parameters.cpp

src/lib/parameters/CMakeFiles/parameters.dir/parameters.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parameters.dir/parameters.cpp.i"
	cd /home/jason/Project/PX4/Firmware/src/lib/parameters && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jason/Project/PX4/Firmware/src/lib/parameters/parameters.cpp > CMakeFiles/parameters.dir/parameters.cpp.i

src/lib/parameters/CMakeFiles/parameters.dir/parameters.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parameters.dir/parameters.cpp.s"
	cd /home/jason/Project/PX4/Firmware/src/lib/parameters && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jason/Project/PX4/Firmware/src/lib/parameters/parameters.cpp -o CMakeFiles/parameters.dir/parameters.cpp.s

src/lib/parameters/CMakeFiles/parameters.dir/px4_parameters.c.o: src/lib/parameters/CMakeFiles/parameters.dir/flags.make
src/lib/parameters/CMakeFiles/parameters.dir/px4_parameters.c.o: src/lib/parameters/px4_parameters.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/lib/parameters/CMakeFiles/parameters.dir/px4_parameters.c.o"
	cd /home/jason/Project/PX4/Firmware/src/lib/parameters && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/parameters.dir/px4_parameters.c.o   -c /home/jason/Project/PX4/Firmware/src/lib/parameters/px4_parameters.c

src/lib/parameters/CMakeFiles/parameters.dir/px4_parameters.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/parameters.dir/px4_parameters.c.i"
	cd /home/jason/Project/PX4/Firmware/src/lib/parameters && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jason/Project/PX4/Firmware/src/lib/parameters/px4_parameters.c > CMakeFiles/parameters.dir/px4_parameters.c.i

src/lib/parameters/CMakeFiles/parameters.dir/px4_parameters.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/parameters.dir/px4_parameters.c.s"
	cd /home/jason/Project/PX4/Firmware/src/lib/parameters && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jason/Project/PX4/Firmware/src/lib/parameters/px4_parameters.c -o CMakeFiles/parameters.dir/px4_parameters.c.s

# Object files for target parameters
parameters_OBJECTS = \
"CMakeFiles/parameters.dir/parameters.cpp.o" \
"CMakeFiles/parameters.dir/px4_parameters.c.o"

# External object files for target parameters
parameters_EXTERNAL_OBJECTS =

src/lib/parameters/libparameters.a: src/lib/parameters/CMakeFiles/parameters.dir/parameters.cpp.o
src/lib/parameters/libparameters.a: src/lib/parameters/CMakeFiles/parameters.dir/px4_parameters.c.o
src/lib/parameters/libparameters.a: src/lib/parameters/CMakeFiles/parameters.dir/build.make
src/lib/parameters/libparameters.a: src/lib/parameters/CMakeFiles/parameters.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libparameters.a"
	cd /home/jason/Project/PX4/Firmware/src/lib/parameters && $(CMAKE_COMMAND) -P CMakeFiles/parameters.dir/cmake_clean_target.cmake
	cd /home/jason/Project/PX4/Firmware/src/lib/parameters && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/parameters.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lib/parameters/CMakeFiles/parameters.dir/build: src/lib/parameters/libparameters.a

.PHONY : src/lib/parameters/CMakeFiles/parameters.dir/build

src/lib/parameters/CMakeFiles/parameters.dir/clean:
	cd /home/jason/Project/PX4/Firmware/src/lib/parameters && $(CMAKE_COMMAND) -P CMakeFiles/parameters.dir/cmake_clean.cmake
.PHONY : src/lib/parameters/CMakeFiles/parameters.dir/clean

src/lib/parameters/CMakeFiles/parameters.dir/depend: src/lib/parameters/px4_parameters.c
src/lib/parameters/CMakeFiles/parameters.dir/depend: src/lib/parameters/px4_parameters.h
src/lib/parameters/CMakeFiles/parameters.dir/depend: src/lib/parameters/px4_parameters_public.h
src/lib/parameters/CMakeFiles/parameters.dir/depend: parameters.xml
	cd /home/jason/Project/PX4/Firmware && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/src/lib/parameters /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/src/lib/parameters /home/jason/Project/PX4/Firmware/src/lib/parameters/CMakeFiles/parameters.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lib/parameters/CMakeFiles/parameters.dir/depend
