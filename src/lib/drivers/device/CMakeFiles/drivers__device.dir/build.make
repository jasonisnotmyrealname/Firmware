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
include src/lib/drivers/device/CMakeFiles/drivers__device.dir/depend.make

# Include the progress variables for this target.
include src/lib/drivers/device/CMakeFiles/drivers__device.dir/progress.make

# Include the compile flags for this target's objects.
include src/lib/drivers/device/CMakeFiles/drivers__device.dir/flags.make

src/lib/drivers/device/CMakeFiles/drivers__device.dir/CDev.cpp.o: src/lib/drivers/device/CMakeFiles/drivers__device.dir/flags.make
src/lib/drivers/device/CMakeFiles/drivers__device.dir/CDev.cpp.o: src/lib/drivers/device/CDev.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/lib/drivers/device/CMakeFiles/drivers__device.dir/CDev.cpp.o"
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/drivers__device.dir/CDev.cpp.o -c /home/jason/Project/PX4/Firmware/src/lib/drivers/device/CDev.cpp

src/lib/drivers/device/CMakeFiles/drivers__device.dir/CDev.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drivers__device.dir/CDev.cpp.i"
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jason/Project/PX4/Firmware/src/lib/drivers/device/CDev.cpp > CMakeFiles/drivers__device.dir/CDev.cpp.i

src/lib/drivers/device/CMakeFiles/drivers__device.dir/CDev.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drivers__device.dir/CDev.cpp.s"
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jason/Project/PX4/Firmware/src/lib/drivers/device/CDev.cpp -o CMakeFiles/drivers__device.dir/CDev.cpp.s

src/lib/drivers/device/CMakeFiles/drivers__device.dir/ringbuffer.cpp.o: src/lib/drivers/device/CMakeFiles/drivers__device.dir/flags.make
src/lib/drivers/device/CMakeFiles/drivers__device.dir/ringbuffer.cpp.o: src/lib/drivers/device/ringbuffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/lib/drivers/device/CMakeFiles/drivers__device.dir/ringbuffer.cpp.o"
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/drivers__device.dir/ringbuffer.cpp.o -c /home/jason/Project/PX4/Firmware/src/lib/drivers/device/ringbuffer.cpp

src/lib/drivers/device/CMakeFiles/drivers__device.dir/ringbuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drivers__device.dir/ringbuffer.cpp.i"
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jason/Project/PX4/Firmware/src/lib/drivers/device/ringbuffer.cpp > CMakeFiles/drivers__device.dir/ringbuffer.cpp.i

src/lib/drivers/device/CMakeFiles/drivers__device.dir/ringbuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drivers__device.dir/ringbuffer.cpp.s"
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jason/Project/PX4/Firmware/src/lib/drivers/device/ringbuffer.cpp -o CMakeFiles/drivers__device.dir/ringbuffer.cpp.s

src/lib/drivers/device/CMakeFiles/drivers__device.dir/integrator.cpp.o: src/lib/drivers/device/CMakeFiles/drivers__device.dir/flags.make
src/lib/drivers/device/CMakeFiles/drivers__device.dir/integrator.cpp.o: src/lib/drivers/device/integrator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/lib/drivers/device/CMakeFiles/drivers__device.dir/integrator.cpp.o"
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/drivers__device.dir/integrator.cpp.o -c /home/jason/Project/PX4/Firmware/src/lib/drivers/device/integrator.cpp

src/lib/drivers/device/CMakeFiles/drivers__device.dir/integrator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drivers__device.dir/integrator.cpp.i"
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jason/Project/PX4/Firmware/src/lib/drivers/device/integrator.cpp > CMakeFiles/drivers__device.dir/integrator.cpp.i

src/lib/drivers/device/CMakeFiles/drivers__device.dir/integrator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drivers__device.dir/integrator.cpp.s"
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jason/Project/PX4/Firmware/src/lib/drivers/device/integrator.cpp -o CMakeFiles/drivers__device.dir/integrator.cpp.s

src/lib/drivers/device/CMakeFiles/drivers__device.dir/posix/I2C.cpp.o: src/lib/drivers/device/CMakeFiles/drivers__device.dir/flags.make
src/lib/drivers/device/CMakeFiles/drivers__device.dir/posix/I2C.cpp.o: src/lib/drivers/device/posix/I2C.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/lib/drivers/device/CMakeFiles/drivers__device.dir/posix/I2C.cpp.o"
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/drivers__device.dir/posix/I2C.cpp.o -c /home/jason/Project/PX4/Firmware/src/lib/drivers/device/posix/I2C.cpp

src/lib/drivers/device/CMakeFiles/drivers__device.dir/posix/I2C.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drivers__device.dir/posix/I2C.cpp.i"
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jason/Project/PX4/Firmware/src/lib/drivers/device/posix/I2C.cpp > CMakeFiles/drivers__device.dir/posix/I2C.cpp.i

src/lib/drivers/device/CMakeFiles/drivers__device.dir/posix/I2C.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drivers__device.dir/posix/I2C.cpp.s"
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jason/Project/PX4/Firmware/src/lib/drivers/device/posix/I2C.cpp -o CMakeFiles/drivers__device.dir/posix/I2C.cpp.s

# Object files for target drivers__device
drivers__device_OBJECTS = \
"CMakeFiles/drivers__device.dir/CDev.cpp.o" \
"CMakeFiles/drivers__device.dir/ringbuffer.cpp.o" \
"CMakeFiles/drivers__device.dir/integrator.cpp.o" \
"CMakeFiles/drivers__device.dir/posix/I2C.cpp.o"

# External object files for target drivers__device
drivers__device_EXTERNAL_OBJECTS =

src/lib/drivers/device/libdrivers__device.a: src/lib/drivers/device/CMakeFiles/drivers__device.dir/CDev.cpp.o
src/lib/drivers/device/libdrivers__device.a: src/lib/drivers/device/CMakeFiles/drivers__device.dir/ringbuffer.cpp.o
src/lib/drivers/device/libdrivers__device.a: src/lib/drivers/device/CMakeFiles/drivers__device.dir/integrator.cpp.o
src/lib/drivers/device/libdrivers__device.a: src/lib/drivers/device/CMakeFiles/drivers__device.dir/posix/I2C.cpp.o
src/lib/drivers/device/libdrivers__device.a: src/lib/drivers/device/CMakeFiles/drivers__device.dir/build.make
src/lib/drivers/device/libdrivers__device.a: src/lib/drivers/device/CMakeFiles/drivers__device.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libdrivers__device.a"
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && $(CMAKE_COMMAND) -P CMakeFiles/drivers__device.dir/cmake_clean_target.cmake
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drivers__device.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lib/drivers/device/CMakeFiles/drivers__device.dir/build: src/lib/drivers/device/libdrivers__device.a

.PHONY : src/lib/drivers/device/CMakeFiles/drivers__device.dir/build

src/lib/drivers/device/CMakeFiles/drivers__device.dir/clean:
	cd /home/jason/Project/PX4/Firmware/src/lib/drivers/device && $(CMAKE_COMMAND) -P CMakeFiles/drivers__device.dir/cmake_clean.cmake
.PHONY : src/lib/drivers/device/CMakeFiles/drivers__device.dir/clean

src/lib/drivers/device/CMakeFiles/drivers__device.dir/depend:
	cd /home/jason/Project/PX4/Firmware && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/src/lib/drivers/device /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/src/lib/drivers/device /home/jason/Project/PX4/Firmware/src/lib/drivers/device/CMakeFiles/drivers__device.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lib/drivers/device/CMakeFiles/drivers__device.dir/depend

