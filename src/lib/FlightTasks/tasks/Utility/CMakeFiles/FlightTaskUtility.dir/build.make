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
include src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/depend.make

# Include the progress variables for this target.
include src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/progress.make

# Include the compile flags for this target's objects.
include src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/flags.make

src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/ManualSmoothingZ.cpp.o: src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/flags.make
src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/ManualSmoothingZ.cpp.o: src/lib/FlightTasks/tasks/Utility/ManualSmoothingZ.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/ManualSmoothingZ.cpp.o"
	cd /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FlightTaskUtility.dir/ManualSmoothingZ.cpp.o -c /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility/ManualSmoothingZ.cpp

src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/ManualSmoothingZ.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlightTaskUtility.dir/ManualSmoothingZ.cpp.i"
	cd /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility/ManualSmoothingZ.cpp > CMakeFiles/FlightTaskUtility.dir/ManualSmoothingZ.cpp.i

src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/ManualSmoothingZ.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlightTaskUtility.dir/ManualSmoothingZ.cpp.s"
	cd /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility/ManualSmoothingZ.cpp -o CMakeFiles/FlightTaskUtility.dir/ManualSmoothingZ.cpp.s

src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/ManualSmoothingXY.cpp.o: src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/flags.make
src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/ManualSmoothingXY.cpp.o: src/lib/FlightTasks/tasks/Utility/ManualSmoothingXY.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/ManualSmoothingXY.cpp.o"
	cd /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FlightTaskUtility.dir/ManualSmoothingXY.cpp.o -c /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility/ManualSmoothingXY.cpp

src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/ManualSmoothingXY.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlightTaskUtility.dir/ManualSmoothingXY.cpp.i"
	cd /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility/ManualSmoothingXY.cpp > CMakeFiles/FlightTaskUtility.dir/ManualSmoothingXY.cpp.i

src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/ManualSmoothingXY.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlightTaskUtility.dir/ManualSmoothingXY.cpp.s"
	cd /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility/ManualSmoothingXY.cpp -o CMakeFiles/FlightTaskUtility.dir/ManualSmoothingXY.cpp.s

src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/StraightLine.cpp.o: src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/flags.make
src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/StraightLine.cpp.o: src/lib/FlightTasks/tasks/Utility/StraightLine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/StraightLine.cpp.o"
	cd /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FlightTaskUtility.dir/StraightLine.cpp.o -c /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility/StraightLine.cpp

src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/StraightLine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlightTaskUtility.dir/StraightLine.cpp.i"
	cd /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility/StraightLine.cpp > CMakeFiles/FlightTaskUtility.dir/StraightLine.cpp.i

src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/StraightLine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlightTaskUtility.dir/StraightLine.cpp.s"
	cd /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility/StraightLine.cpp -o CMakeFiles/FlightTaskUtility.dir/StraightLine.cpp.s

# Object files for target FlightTaskUtility
FlightTaskUtility_OBJECTS = \
"CMakeFiles/FlightTaskUtility.dir/ManualSmoothingZ.cpp.o" \
"CMakeFiles/FlightTaskUtility.dir/ManualSmoothingXY.cpp.o" \
"CMakeFiles/FlightTaskUtility.dir/StraightLine.cpp.o"

# External object files for target FlightTaskUtility
FlightTaskUtility_EXTERNAL_OBJECTS =

src/lib/FlightTasks/tasks/Utility/libFlightTaskUtility.a: src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/ManualSmoothingZ.cpp.o
src/lib/FlightTasks/tasks/Utility/libFlightTaskUtility.a: src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/ManualSmoothingXY.cpp.o
src/lib/FlightTasks/tasks/Utility/libFlightTaskUtility.a: src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/StraightLine.cpp.o
src/lib/FlightTasks/tasks/Utility/libFlightTaskUtility.a: src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/build.make
src/lib/FlightTasks/tasks/Utility/libFlightTaskUtility.a: src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libFlightTaskUtility.a"
	cd /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility && $(CMAKE_COMMAND) -P CMakeFiles/FlightTaskUtility.dir/cmake_clean_target.cmake
	cd /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FlightTaskUtility.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/build: src/lib/FlightTasks/tasks/Utility/libFlightTaskUtility.a

.PHONY : src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/build

src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/clean:
	cd /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility && $(CMAKE_COMMAND) -P CMakeFiles/FlightTaskUtility.dir/cmake_clean.cmake
.PHONY : src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/clean

src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/depend:
	cd /home/jason/Project/PX4/Firmware && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility /home/jason/Project/PX4/Firmware/src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lib/FlightTasks/tasks/Utility/CMakeFiles/FlightTaskUtility.dir/depend

