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

# Utility rule file for logs_symlink.

# Include the progress variables for this target.
include platforms/posix/CMakeFiles/logs_symlink.dir/progress.make

platforms/posix/CMakeFiles/logs_symlink: logs


logs:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../../logs"
	/usr/local/bin/cmake -E create_symlink /home/jason/Project/PX4/Firmware/tmp/rootfs/log logs

logs_symlink: platforms/posix/CMakeFiles/logs_symlink
logs_symlink: logs
logs_symlink: platforms/posix/CMakeFiles/logs_symlink.dir/build.make

.PHONY : logs_symlink

# Rule to build all files generated by this target.
platforms/posix/CMakeFiles/logs_symlink.dir/build: logs_symlink

.PHONY : platforms/posix/CMakeFiles/logs_symlink.dir/build

platforms/posix/CMakeFiles/logs_symlink.dir/clean:
	cd /home/jason/Project/PX4/Firmware/platforms/posix && $(CMAKE_COMMAND) -P CMakeFiles/logs_symlink.dir/cmake_clean.cmake
.PHONY : platforms/posix/CMakeFiles/logs_symlink.dir/clean

platforms/posix/CMakeFiles/logs_symlink.dir/depend:
	cd /home/jason/Project/PX4/Firmware && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/platforms/posix /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/platforms/posix /home/jason/Project/PX4/Firmware/platforms/posix/CMakeFiles/logs_symlink.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platforms/posix/CMakeFiles/logs_symlink.dir/depend

