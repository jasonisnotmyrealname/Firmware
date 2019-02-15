# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "C"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_C
  "/home/jason/Project/PX4/Firmware/src/systemcmds/shutdown/shutdown.c" "/home/jason/Project/PX4/Firmware/src/systemcmds/shutdown/CMakeFiles/systemcmds__shutdown.dir/shutdown.c.o"
  )
set(CMAKE_C_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
set(CMAKE_TARGET_DEFINITIONS_C
  "CONFIG_ARCH_BOARD_SITL"
  "MODULE_NAME=\"shutdown\""
  "PX4_MAIN=shutdown_app_main"
  "__DF_LINUX"
  "__PX4_LINUX"
  "__PX4_POSIX"
  "__STDC_FORMAT_MACROS"
  "noreturn_function=__attribute__((noreturn))"
  )

# The include file search paths:
set(CMAKE_C_TARGET_INCLUDE_PATH
  "."
  "src"
  "src/lib"
  "src/modules"
  "src/drivers/boards/sitl"
  "src/include"
  "src/lib/DriverFramework/framework/include"
  "src/lib/matrix"
  "src/platforms"
  "platforms/posix/include"
  "external/Install/include"
  )

# Targets to which this target links.
set(CMAKE_TARGET_LINKED_INFO_FILES
  "/home/jason/Project/PX4/Firmware/src/platforms/common/CMakeFiles/platforms__common.dir/DependInfo.cmake"
  "/home/jason/Project/PX4/Firmware/platforms/posix/src/px4_layer/CMakeFiles/px4_layer.dir/DependInfo.cmake"
  "/home/jason/Project/PX4/Firmware/src/modules/systemlib/CMakeFiles/systemlib.dir/DependInfo.cmake"
  "/home/jason/Project/PX4/Firmware/src/lib/parameters/CMakeFiles/parameters.dir/DependInfo.cmake"
  "/home/jason/Project/PX4/Firmware/platforms/posix/src/px4_daemon/CMakeFiles/px4_daemon.dir/DependInfo.cmake"
  "/home/jason/Project/PX4/Firmware/src/lib/drivers/device/CMakeFiles/drivers__device.dir/DependInfo.cmake"
  "/home/jason/Project/PX4/Firmware/src/lib/cdev/CMakeFiles/cdev.dir/DependInfo.cmake"
  "/home/jason/Project/PX4/Firmware/src/platforms/common/work_queue/CMakeFiles/work_queue.dir/DependInfo.cmake"
  "/home/jason/Project/PX4/Firmware/src/lib/perf/CMakeFiles/perf.dir/DependInfo.cmake"
  "/home/jason/Project/PX4/Firmware/src/lib/parameters/tinybson/CMakeFiles/tinybson.dir/DependInfo.cmake"
  "/home/jason/Project/PX4/Firmware/msg/CMakeFiles/uorb_msgs.dir/DependInfo.cmake"
  )

# Fortran module output directory.
set(CMAKE_Fortran_TARGET_MODULE_DIR "")
