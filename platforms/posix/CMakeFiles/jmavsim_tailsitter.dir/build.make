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

# Utility rule file for jmavsim_tailsitter.

# Include the progress variables for this target.
include platforms/posix/CMakeFiles/jmavsim_tailsitter.dir/progress.make

platforms/posix/CMakeFiles/jmavsim_tailsitter:
	cd /home/jason/Project/PX4/Firmware/tmp && /home/jason/Project/PX4/Firmware/Tools/sitl_run.sh /home/jason/Project/PX4/Firmware/bin/px4 none jmavsim tailsitter /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware

jmavsim_tailsitter: platforms/posix/CMakeFiles/jmavsim_tailsitter
jmavsim_tailsitter: platforms/posix/CMakeFiles/jmavsim_tailsitter.dir/build.make

.PHONY : jmavsim_tailsitter

# Rule to build all files generated by this target.
platforms/posix/CMakeFiles/jmavsim_tailsitter.dir/build: jmavsim_tailsitter

.PHONY : platforms/posix/CMakeFiles/jmavsim_tailsitter.dir/build

platforms/posix/CMakeFiles/jmavsim_tailsitter.dir/clean:
	cd /home/jason/Project/PX4/Firmware/platforms/posix && $(CMAKE_COMMAND) -P CMakeFiles/jmavsim_tailsitter.dir/cmake_clean.cmake
.PHONY : platforms/posix/CMakeFiles/jmavsim_tailsitter.dir/clean

platforms/posix/CMakeFiles/jmavsim_tailsitter.dir/depend:
	cd /home/jason/Project/PX4/Firmware && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/platforms/posix /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/platforms/posix /home/jason/Project/PX4/Firmware/platforms/posix/CMakeFiles/jmavsim_tailsitter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platforms/posix/CMakeFiles/jmavsim_tailsitter.dir/depend

