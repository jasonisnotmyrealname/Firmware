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

# Utility rule file for none_typhoon_h480_gdb.

# Include the progress variables for this target.
include platforms/posix/CMakeFiles/none_typhoon_h480_gdb.dir/progress.make

platforms/posix/CMakeFiles/none_typhoon_h480_gdb:
	cd /home/jason/Project/PX4/Firmware/tmp && /home/jason/Project/PX4/Firmware/Tools/sitl_run.sh /home/jason/Project/PX4/Firmware/bin/px4 gdb none typhoon_h480 /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware

none_typhoon_h480_gdb: platforms/posix/CMakeFiles/none_typhoon_h480_gdb
none_typhoon_h480_gdb: platforms/posix/CMakeFiles/none_typhoon_h480_gdb.dir/build.make

.PHONY : none_typhoon_h480_gdb

# Rule to build all files generated by this target.
platforms/posix/CMakeFiles/none_typhoon_h480_gdb.dir/build: none_typhoon_h480_gdb

.PHONY : platforms/posix/CMakeFiles/none_typhoon_h480_gdb.dir/build

platforms/posix/CMakeFiles/none_typhoon_h480_gdb.dir/clean:
	cd /home/jason/Project/PX4/Firmware/platforms/posix && $(CMAKE_COMMAND) -P CMakeFiles/none_typhoon_h480_gdb.dir/cmake_clean.cmake
.PHONY : platforms/posix/CMakeFiles/none_typhoon_h480_gdb.dir/clean

platforms/posix/CMakeFiles/none_typhoon_h480_gdb.dir/depend:
	cd /home/jason/Project/PX4/Firmware && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/platforms/posix /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/platforms/posix /home/jason/Project/PX4/Firmware/platforms/posix/CMakeFiles/none_typhoon_h480_gdb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platforms/posix/CMakeFiles/none_typhoon_h480_gdb.dir/depend

