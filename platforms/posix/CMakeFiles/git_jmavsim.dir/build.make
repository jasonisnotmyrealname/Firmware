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

# Utility rule file for git_jmavsim.

# Include the progress variables for this target.
include platforms/posix/CMakeFiles/git_jmavsim.dir/progress.make

platforms/posix/CMakeFiles/git_jmavsim: platforms/posix/git_init__home_jason_Project_PX4_Firmware_Tools_jMAVSim.stamp


platforms/posix/git_init__home_jason_Project_PX4_Firmware_Tools_jMAVSim.stamp: .gitmodules
platforms/posix/git_init__home_jason_Project_PX4_Firmware_Tools_jMAVSim.stamp: Tools/jMAVSim/.git
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "git submodule /home/jason/Project/PX4/Firmware/Tools/jMAVSim"
	cd /home/jason/Project/PX4/Firmware/platforms/posix && bash /home/jason/Project/PX4/Firmware/Tools/check_submodules.sh /home/jason/Project/PX4/Firmware/Tools/jMAVSim
	cd /home/jason/Project/PX4/Firmware/platforms/posix && /usr/local/bin/cmake -E touch /home/jason/Project/PX4/Firmware/platforms/posix/git_init__home_jason_Project_PX4_Firmware_Tools_jMAVSim.stamp

git_jmavsim: platforms/posix/CMakeFiles/git_jmavsim
git_jmavsim: platforms/posix/git_init__home_jason_Project_PX4_Firmware_Tools_jMAVSim.stamp
git_jmavsim: platforms/posix/CMakeFiles/git_jmavsim.dir/build.make

.PHONY : git_jmavsim

# Rule to build all files generated by this target.
platforms/posix/CMakeFiles/git_jmavsim.dir/build: git_jmavsim

.PHONY : platforms/posix/CMakeFiles/git_jmavsim.dir/build

platforms/posix/CMakeFiles/git_jmavsim.dir/clean:
	cd /home/jason/Project/PX4/Firmware/platforms/posix && $(CMAKE_COMMAND) -P CMakeFiles/git_jmavsim.dir/cmake_clean.cmake
.PHONY : platforms/posix/CMakeFiles/git_jmavsim.dir/clean

platforms/posix/CMakeFiles/git_jmavsim.dir/depend:
	cd /home/jason/Project/PX4/Firmware && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/platforms/posix /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/platforms/posix /home/jason/Project/PX4/Firmware/platforms/posix/CMakeFiles/git_jmavsim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platforms/posix/CMakeFiles/git_jmavsim.dir/depend
