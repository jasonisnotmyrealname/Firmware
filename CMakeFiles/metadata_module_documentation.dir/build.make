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

# Utility rule file for metadata_module_documentation.

# Include the progress variables for this target.
include CMakeFiles/metadata_module_documentation.dir/progress.make

CMakeFiles/metadata_module_documentation:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jason/Project/PX4/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating module documentation"
	/usr/local/bin/cmake -E make_directory /home/jason/Project/PX4/Firmware/docs
	/usr/bin/python /home/jason/Project/PX4/Firmware/Tools/px_process_module_doc.py -v --src-path /home/jason/Project/PX4/Firmware/src --markdown /home/jason/Project/PX4/Firmware/docs/modules

metadata_module_documentation: CMakeFiles/metadata_module_documentation
metadata_module_documentation: CMakeFiles/metadata_module_documentation.dir/build.make

.PHONY : metadata_module_documentation

# Rule to build all files generated by this target.
CMakeFiles/metadata_module_documentation.dir/build: metadata_module_documentation

.PHONY : CMakeFiles/metadata_module_documentation.dir/build

CMakeFiles/metadata_module_documentation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/metadata_module_documentation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/metadata_module_documentation.dir/clean

CMakeFiles/metadata_module_documentation.dir/depend:
	cd /home/jason/Project/PX4/Firmware && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware /home/jason/Project/PX4/Firmware/CMakeFiles/metadata_module_documentation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/metadata_module_documentation.dir/depend

