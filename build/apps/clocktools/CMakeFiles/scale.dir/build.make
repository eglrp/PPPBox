# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ww/pppbox

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ww/pppbox/build

# Include any dependencies generated for this target.
include apps/clocktools/CMakeFiles/scale.dir/depend.make

# Include the progress variables for this target.
include apps/clocktools/CMakeFiles/scale.dir/progress.make

# Include the compile flags for this target's objects.
include apps/clocktools/CMakeFiles/scale.dir/flags.make

apps/clocktools/CMakeFiles/scale.dir/scale.cpp.o: apps/clocktools/CMakeFiles/scale.dir/flags.make
apps/clocktools/CMakeFiles/scale.dir/scale.cpp.o: ../apps/clocktools/scale.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ww/pppbox/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/clocktools/CMakeFiles/scale.dir/scale.cpp.o"
	cd /home/ww/pppbox/build/apps/clocktools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/scale.dir/scale.cpp.o -c /home/ww/pppbox/apps/clocktools/scale.cpp

apps/clocktools/CMakeFiles/scale.dir/scale.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scale.dir/scale.cpp.i"
	cd /home/ww/pppbox/build/apps/clocktools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ww/pppbox/apps/clocktools/scale.cpp > CMakeFiles/scale.dir/scale.cpp.i

apps/clocktools/CMakeFiles/scale.dir/scale.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scale.dir/scale.cpp.s"
	cd /home/ww/pppbox/build/apps/clocktools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ww/pppbox/apps/clocktools/scale.cpp -o CMakeFiles/scale.dir/scale.cpp.s

apps/clocktools/CMakeFiles/scale.dir/scale.cpp.o.requires:
.PHONY : apps/clocktools/CMakeFiles/scale.dir/scale.cpp.o.requires

apps/clocktools/CMakeFiles/scale.dir/scale.cpp.o.provides: apps/clocktools/CMakeFiles/scale.dir/scale.cpp.o.requires
	$(MAKE) -f apps/clocktools/CMakeFiles/scale.dir/build.make apps/clocktools/CMakeFiles/scale.dir/scale.cpp.o.provides.build
.PHONY : apps/clocktools/CMakeFiles/scale.dir/scale.cpp.o.provides

apps/clocktools/CMakeFiles/scale.dir/scale.cpp.o.provides.build: apps/clocktools/CMakeFiles/scale.dir/scale.cpp.o

# Object files for target scale
scale_OBJECTS = \
"CMakeFiles/scale.dir/scale.cpp.o"

# External object files for target scale
scale_EXTERNAL_OBJECTS =

apps/clocktools/scale: apps/clocktools/CMakeFiles/scale.dir/scale.cpp.o
apps/clocktools/scale: apps/clocktools/CMakeFiles/scale.dir/build.make
apps/clocktools/scale: libpppbox.so
apps/clocktools/scale: apps/clocktools/CMakeFiles/scale.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable scale"
	cd /home/ww/pppbox/build/apps/clocktools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scale.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/clocktools/CMakeFiles/scale.dir/build: apps/clocktools/scale
.PHONY : apps/clocktools/CMakeFiles/scale.dir/build

apps/clocktools/CMakeFiles/scale.dir/requires: apps/clocktools/CMakeFiles/scale.dir/scale.cpp.o.requires
.PHONY : apps/clocktools/CMakeFiles/scale.dir/requires

apps/clocktools/CMakeFiles/scale.dir/clean:
	cd /home/ww/pppbox/build/apps/clocktools && $(CMAKE_COMMAND) -P CMakeFiles/scale.dir/cmake_clean.cmake
.PHONY : apps/clocktools/CMakeFiles/scale.dir/clean

apps/clocktools/CMakeFiles/scale.dir/depend:
	cd /home/ww/pppbox/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ww/pppbox /home/ww/pppbox/apps/clocktools /home/ww/pppbox/build /home/ww/pppbox/build/apps/clocktools /home/ww/pppbox/build/apps/clocktools/CMakeFiles/scale.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/clocktools/CMakeFiles/scale.dir/depend
