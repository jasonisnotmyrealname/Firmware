
set(CMAKE_TOOLCHAIN_FILE ${PX4_SOURCE_DIR}/cmake/toolchains/Toolchain-native.cmake)

set(config_module_list
	#drivers/barometer
	drivers/differential_pressure  #不能删除 依赖drivers__airspeed link drivers__device link cdev
	drivers/distance_sensor
	#drivers/telemetry

	drivers/batt_smbus
	drivers/camera_trigger
	drivers/gps
	drivers/linux_gpio
	drivers/pwm_out_sim
	drivers/vmount

	modules/sensors  #不能删除 依赖airspeed/battery/conversion/drivers__device/git_ecl/ecl_validation/mathlib

	platforms/posix/drivers/tonealrmsim

	#
	# System commands
	#
	#systemcmds/bl_update
	#systemcmds/config
	#systemcmds/dumpfile
	systemcmds/esc_calib
	systemcmds/led_control
	systemcmds/mixer
	systemcmds/motor_ramp
	#systemcmds/mtd
	#systemcmds/nshterm
	systemcmds/param
	systemcmds/perf
	systemcmds/pwm
	systemcmds/reboot
	systemcmds/shutdown
	systemcmds/sd_bench
	systemcmds/top
	systemcmds/topic_listener
	systemcmds/tune_control
	systemcmds/ver

	#
	# Testing
	#
	drivers/distance_sensor/sf0x/sf0x_tests
	#drivers/test_ppm
	lib/rc/rc_tests
	modules/commander/commander_tests
	lib/controllib/controllib_test
	modules/mavlink/mavlink_tests
	modules/uORB/uORB_tests
	systemcmds/tests

	platforms/posix/tests/hello
	platforms/posix/tests/hrt_test
	platforms/posix/tests/vcdev_test  

	#
	# General system control
	#
	modules/camera_feedback
	modules/commander   #不能删, 依赖circuit_breaker/df_driver_framework/git_ecl/ecl_geo
	modules/events
	#modules/gpio_led
	modules/land_detector
	modules/load_mon
	modules/mavlink   #不能删，依赖airspeed/git_mavlink_v2/conversion/git_ecl/ecl_geo/version
	modules/navigator    #不能删,依赖git_ecl/ecl_geo/landing_slope
	modules/replay
	modules/simulator  #和drivers/differential_pressusre留一个就行.....
	#modules/uavcan

	#
	# Estimation modules
	#
#	modules/attitude_estimator_q
#	modules/ekf2
#	modules/local_position_estimator
#	modules/position_estimator_inav
#	modules/wind_estimator

	#
	# Vehicle Control
	#
#	modules/fw_att_control
#	modules/fw_pos_control_l1
#	modules/gnd_att_control
#	modules/gnd_pos_control
#	modules/mc_att_control
	modules/mc_pos_control   #不能删 依赖controllib/FlightTasks/git_ecl/ecl_geo
	modules/vtol_att_control    #不能删 依赖pwm_limit

	#
	# Logging
	#
#	modules/logger

	#
	# Library modules
	#
	modules/dataman  #不能删 无依赖项
	modules/landing_target_estimator  #不能删 无依赖项
 
	#
	# OBC challenge
	#
#	examples/bottle_drop

	#
	# Rover apps
	#
#	examples/rover_steering_control

	#
	# HippoCampus example (AUV from TUHH)
	#
#	examples/uuv_example_app

	#
	# Segway
	#
#	examples/segway

	#
	# Demo apps
	#

	# Tutorial code from
	# https://px4.io/dev/px4_simple_app
#	examples/px4_simple_app

	# Tutorial code from
	# https://px4.io/dev/debug_values
#	examples/px4_mavlink_debug

	# Tutorial code from
	# https://px4.io/dev/example_fixedwing_control
#	examples/fixedwing_control

	# Template Module
#	templates/module

	# Hardware test
	#examples/hwtest
)

set(config_sitl_viewer jmavsim CACHE STRING "viewer for sitl")
set_property(CACHE config_sitl_viewer PROPERTY STRINGS "jmavsim;none")

set(config_sitl_debugger disable CACHE STRING "debugger for sitl")
set_property(CACHE config_sitl_debugger PROPERTY STRINGS "disable;gdb;lldb")

# If the environment variable 'replay' is defined, we are building with replay
# support. In this case, we enable the orb publisher rules.
set(REPLAY_FILE "$ENV{replay}")
if(REPLAY_FILE)
	message("Building with uorb publisher rules support")
	add_definitions(-DORB_USE_PUBLISHER_RULES)
endif()

