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
include src/lib/version/CMakeFiles/version.dir/depend.make

# Include the progress variables for this target.
include src/lib/version/CMakeFiles/version.dir/progress.make

# Include the compile flags for this target's objects.
include src/lib/version/CMakeFiles/version.dir/flags.make

src/lib/version/CMakeFiles/version.dir/version.c.o: src/lib/version/CMakeFiles/version.dir/flags.make
src/lib/version/CMakeFiles/version.dir/version.c.o: src/lib/version/version.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/lib/version/CMakeFiles/version.dir/version.c.o"
	cd /home/jason/Project/PX4/Firmware/src/lib/version && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/version.dir/version.c.o   -c /home/jason/Project/PX4/Firmware/src/lib/version/version.c

src/lib/version/CMakeFiles/version.dir/version.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/version.dir/version.c.i"
	cd /home/jason/Project/PX4/Firmware/src/lib/version && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jason/Project/PX4/Firmware/src/lib/version/version.c > CMakeFiles/version.dir/version.c.i

src/lib/version/CMakeFiles/version.dir/version.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/version.dir/version.c.s"
	cd /home/jason/Project/PX4/Firmware/src/lib/version && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jason/Project/PX4/Firmware/src/lib/version/version.c -o CMakeFiles/version.dir/version.c.s

# Object files for target version
version_OBJECTS = \
"CMakeFiles/version.dir/version.c.o"

# External object files for target version
version_EXTERNAL_OBJECTS =

src/lib/version/libversion.a: src/lib/version/CMakeFiles/version.dir/version.c.o
src/lib/version/libversion.a: src/lib/version/CMakeFiles/version.dir/build.make
src/lib/version/libversion.a: src/lib/version/CMakeFiles/version.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libversion.a"
	cd /home/jason/Project/PX4/Firmware/src/lib/version && $(CMAKE_COMMAND) -P CMakeFiles/version.dir/cmake_clean_target.cmake
	cd /home/jason/Project/PX4/Firmware/src/lib/version && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/version.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lib/version/CMakeFiles/version.dir/build: src/lib/version/libversion.a

.PHONY : src/lib/version/CMakeFiles/version.dir/build

src/lib/version/CMakeFiles/version.dir/clean:
	cd /home/jason/Project/PX4/Firmware/src/lib/version && $(CMAKE_COMMAND) -P CMakeFiles/version.dir/cmake_clean.cmake
.PHONY : src/lib/version/CMakeFiles/version.dir/clean

src/lib/version/CMakeFiles/version.dir/depend:
	cd /home/jason/Project/PX4/Firmware && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/src/lib/version /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/src/lib/version /home/jason/Project/PX4/Firmware/src/lib/version/CMakeFiles/version.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lib/version/CMakeFiles/version.dir/depend

