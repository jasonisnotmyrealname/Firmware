[  1%] Built target git_ecl  在modules/mavlink
[  1%] Built target ver_gen  在src/lib/version
[  2%] Built target uorb_headers 
[  6%] Built target df_driver_framework
[  6%] Built target git_mavlink_v2  在modules/mavlink
[  6%] Built target tinybson 在lib/paramters
[  7%] Built target perf 在lib/paramters
[ 12%] Built target work_queue  在px4_layer
[ 13%] Built target ecl_geo 在modules/mavlink
[ 14%] Built target ecl_validation  在modules/sensor
[ 14%] Generating parameters.xml
[ 14%] Built target version 在modules/mavlink
[ 45%] Built target uorb_msgs
[ 45%] Generating px4_parameters.c, px4_parameters.h, px4_parameters_public.h
Scanning dependencies of target parameters
[ 46%] Building C object src/lib/parameters/CMakeFiles/parameters.dir/px4_parameters.c.o
[ 46%] Building CXX object src/lib/parameters/CMakeFiles/parameters.dir/parameters.cpp.o
[ 46%] Linking CXX static library libparameters.a
[ 46%] Built target parameters
Scanning dependencies of target battery
[ 46%] Built target DriverFramework__framework
[ 46%] Built target airspeed  在modules/mavlink
[ 49%] Built target px4_daemon
[ 49%] Building CXX object src/lib/battery/CMakeFiles/battery.dir/battery.cpp.o
[ 50%] Built target cdev  在src/lib/dirver/device
[ 50%] Built target circuit_breaker
[ 54%] Built target controllib
Scanning dependencies of target FlightTask
[ 54%] Built target conversion  在modules/mavlink
[ 55%] Built target drivers__device  在module/sensors
[ 55%] Building CXX object src/lib/FlightTasks/tasks/FlightTask/CMakeFiles/FlightTask.dir/FlightTask.cpp.o
[ 56%] Built target landing_slope
[ 58%] Built target mathlib  在modules/sensors
[ 59%] Built target pwm_limit
[ 60%] Built target platforms__common
[ 62%] Built target systemlib
[ 64%] Built target px4_layer
[ 64%] Built target drivers__airspeed
[ 67%] Built target modules__uORB
Scanning dependencies of target modules__commander
Scanning dependencies of target modules__mavlink
[ 67%] Building CXX object src/modules/commander/CMakeFiles/modules__commander.dir/Commander.cpp.o
[ 69%] Linking CXX static library libbattery.a
[ 69%] Built target battery
[ 70%] Linking CXX static library libFlightTask.a
[ 70%] Built target FlightTask
Scanning dependencies of target modules__navigator
[ 70%] Building CXX object src/modules/mavlink/CMakeFiles/modules__mavlink.dir/mavlink_ftp.cpp.o
[ 71%] Built target modules__vtol_att_control
[ 71%] Built target modules__dataman
[ 72%] Building CXX object src/modules/commander/CMakeFiles/modules__commander.dir/failure_detector/FailureDetector.cpp.o
[ 72%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/navigator_main.cpp.o
[ 74%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/navigator_mode.cpp.o
[ 74%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/mission_block.cpp.o
[ 74%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/mission.cpp.o
[ 74%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/loiter.cpp.o
[ 74%] Building CXX object src/modules/mavlink/CMakeFiles/modules__mavlink.dir/mavlink_high_latency2.cpp.o
[ 75%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/rtl.cpp.o
[ 75%] Linking CXX static library libmodules__commander.a
[ 79%] Built target modules__commander
[ 80%] Built target modules__landing_target_estimator
Scanning dependencies of target FlightTaskUtility
[ 80%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/takeoff.cpp.o
[ 80%] Building CXX object src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/ManualSmoothingZ.cpp.o
[ 80%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/land.cpp.o
[ 80%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/precland.cpp.o
[ 80%] Building CXX object src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/ManualSmoothingXY.cpp.o
[ 80%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/mission_feasibility_checker.cpp.o
[ 80%] Building CXX object src/modules/mavlink/CMakeFiles/modules__mavlink.dir/mavlink_log_handler.cpp.o
[ 80%] Building CXX object src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/StraightLine.cpp.o
[ 81%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/geofence.cpp.o
[ 81%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/datalinkloss.cpp.o
[ 82%] Linking CXX static library libFlightTaskUtility.a
Scanning dependencies of target FlightTaskManual
[ 82%] Built target FlightTaskUtility
[ 82%] Building CXX object src/lib/FlightTasks/tasks/Manual/CMakeFiles/FlightTaskManual.dir/FlightTaskManual.cpp.o
Scanning dependencies of target FlightTaskAuto
[ 82%] Building CXX object src/lib/FlightTasks/tasks/Auto/CMakeFiles/FlightTaskAuto.dir/FlightTaskAuto.cpp.o
[ 82%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/rcloss.cpp.o
[ 82%] Linking CXX static library libFlightTaskManual.a
[ 82%] Built target FlightTaskManual
[ 83%] Building CXX object src/modules/mavlink/CMakeFiles/modules__mavlink.dir/mavlink_main.cpp.o
[ 83%] Building CXX object src/modules/mavlink/CMakeFiles/modules__mavlink.dir/mavlink_messages.cpp.o
[ 83%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/enginefailure.cpp.o
[ 85%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/gpsfailure.cpp.o
[ 85%] Linking CXX static library libFlightTaskAuto.a
[ 85%] Built target FlightTaskAuto
[ 85%] Building CXX object src/modules/mavlink/CMakeFiles/modules__mavlink.dir/mavlink_mission.cpp.o
[ 85%] Building CXX object src/modules/navigator/CMakeFiles/modules__navigator.dir/follow_target.cpp.o
[ 85%] Linking CXX static library libmodules__navigator.a
[ 85%] Built target modules__navigator
Scanning dependencies of target FlightTaskOffboard
[ 85%] Building CXX object src/lib/FlightTasks/tasks/Offboard/CMakeFiles/FlightTaskOffboard.dir/FlightTaskOffboard.cpp.o
[ 85%] Linking CXX static library libFlightTaskOffboard.a
[ 85%] Built target FlightTaskOffboard
[ 85%] Building CXX object src/modules/mavlink/CMakeFiles/modules__mavlink.dir/mavlink_parameters.cpp.o
[ 85%] Building CXX object src/modules/mavlink/CMakeFiles/modules__mavlink.dir/mavlink_receiver.cpp.o
[ 86%] Building CXX object src/modules/mavlink/CMakeFiles/modules__mavlink.dir/mavlink_stream.cpp.o
[ 86%] Building CXX object src/modules/mavlink/CMakeFiles/modules__mavlink.dir/mavlink_timesync.cpp.o
Scanning dependencies of target FlightTaskFailsafe
[ 87%] Building CXX object src/lib/FlightTasks/tasks/Failsafe/CMakeFiles/FlightTaskFailsafe.dir/FlightTaskFailsafe.cpp.o
[ 88%] Built target drivers__sdp3x_airspeed
Scanning dependencies of target modules__sensors
[ 88%] Building CXX object src/modules/sensors/CMakeFiles/modules__sensors.dir/sensors.cpp.o
[ 88%] Linking CXX static library libFlightTaskFailsafe.a
[ 88%] Built target FlightTaskFailsafe
Scanning dependencies of target FlightTaskAutoMapper
[ 88%] Building CXX object src/lib/FlightTasks/tasks/AutoMapper/CMakeFiles/FlightTaskAutoMapper.dir/FlightTaskAutoMapper.cpp.o
Scanning dependencies of target FlightTaskManualStabilized
[ 88%] Building CXX object src/lib/FlightTasks/tasks/ManualStabilized/CMakeFiles/FlightTaskManualStabilized.dir/FlightTaskManualStabilized.cpp.o
[ 88%] Linking CXX static library libFlightTaskAutoMapper.a
[ 88%] Linking CXX static library libmodules__sensors.a
[ 88%] Built target FlightTaskAutoMapper
Scanning dependencies of target FlightTaskAutoFollowMe
[ 90%] Built target modules__sensors
Scanning dependencies of target FlightTaskAutoLine
[ 90%] Building CXX object src/lib/FlightTasks/tasks/AutoFollowMe/CMakeFiles/FlightTaskAutoFollowMe.dir/FlightTaskAutoFollowMe.cpp.o
[ 90%] Building CXX object src/lib/FlightTasks/tasks/AutoLine/CMakeFiles/FlightTaskAutoLine.dir/FlightTaskAutoLine.cpp.o
[ 91%] Linking CXX static library libFlightTaskAutoFollowMe.a
[ 91%] Built target FlightTaskAutoFollowMe
[ 92%] Linking CXX static library libFlightTaskManualStabilized.a
[ 92%] Built target FlightTaskManualStabilized
Scanning dependencies of target FlightTaskManualAltitude
[ 93%] Building CXX object src/lib/FlightTasks/tasks/ManualAltitude/CMakeFiles/FlightTaskManualAltitude.dir/FlightTaskManualAltitude.cpp.o
[ 93%] Linking CXX static library libFlightTaskAutoLine.a
[ 93%] Built target FlightTaskAutoLine
[ 93%] Linking CXX static library libFlightTaskManualAltitude.a
[ 93%] Built target FlightTaskManualAltitude
Scanning dependencies of target FlightTaskManualAltitudeSmooth
Scanning dependencies of target FlightTaskManualPosition
[ 93%] Building CXX object src/lib/FlightTasks/tasks/ManualAltitudeSmooth/CMakeFiles/FlightTaskManualAltitudeSmooth.dir/FlightTaskManualAltitudeSmooth.cpp.o
[ 95%] Building CXX object src/lib/FlightTasks/tasks/ManualPosition/CMakeFiles/FlightTaskManualPosition.dir/FlightTaskManualPosition.cpp.o
[ 95%] Linking CXX static library libFlightTaskManualPosition.a
[ 95%] Built target FlightTaskManualPosition
Scanning dependencies of target FlightTaskManualPositionSmooth
[ 95%] Building CXX object src/lib/FlightTasks/tasks/ManualPositionSmooth/CMakeFiles/FlightTaskManualPositionSmooth.dir/FlightTaskManualPositionSmooth.cpp.o
[ 95%] Linking CXX static library libFlightTaskManualAltitudeSmooth.a
[ 95%] Built target FlightTaskManualAltitudeSmooth
Scanning dependencies of target FlightTaskOrbit
[ 95%] Building CXX object src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o
[ 95%] Linking CXX static library libFlightTaskManualPositionSmooth.a
[ 95%] Built target FlightTaskManualPositionSmooth
[ 96%] Linking CXX static library libFlightTaskOrbit.a
[ 96%] Built target FlightTaskOrbit
Scanning dependencies of target FlightTasks
[ 96%] Building CXX object src/lib/FlightTasks/CMakeFiles/FlightTasks.dir/FlightTasks_generated.cpp.o
[ 96%] Building CXX object src/lib/FlightTasks/CMakeFiles/FlightTasks.dir/FlightTasks.cpp.o
[ 96%] Linking CXX static library libmodules__mavlink.a
[ 98%] Built target modules__mavlink
[ 98%] Linking CXX static library libFlightTasks.a
[ 98%] Built target FlightTasks
Scanning dependencies of target modules__mc_pos_control
[100%] Building CXX object src/modules/mc_pos_control/CMakeFiles/modules__mc_pos_control.dir/PositionControl.cpp.o
[100%] Building CXX object src/modules/mc_pos_control/CMakeFiles/modules__mc_pos_control.dir/mc_pos_control_main.cpp.o
[100%] Linking CXX static library libmodules__mc_pos_control.a
[100%] Built target modules__mc_pos_control
Scanning dependencies of target px4
[100%] Building CXX object platforms/posix/CMakeFiles/px4.dir/apps.cpp.o
[100%] Linking CXX executable ../../bin/px4
[100%] Built target px4
