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
include apps/MDPtools/CMakeFiles/mdpscreenx.dir/depend.make

# Include the progress variables for this target.
include apps/MDPtools/CMakeFiles/mdpscreenx.dir/progress.make

# Include the compile flags for this target's objects.
include apps/MDPtools/CMakeFiles/mdpscreenx.dir/flags.make

apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o: apps/MDPtools/CMakeFiles/mdpscreenx.dir/flags.make
apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o: ../apps/MDPtools/mdpscreen.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ww/pppbox/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o"
	cd /home/ww/pppbox/build/apps/MDPtools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o -c /home/ww/pppbox/apps/MDPtools/mdpscreen.cpp

apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.i"
	cd /home/ww/pppbox/build/apps/MDPtools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ww/pppbox/apps/MDPtools/mdpscreen.cpp > CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.i

apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.s"
	cd /home/ww/pppbox/build/apps/MDPtools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ww/pppbox/apps/MDPtools/mdpscreen.cpp -o CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.s

apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o.requires:
.PHONY : apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o.requires

apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o.provides: apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o.requires
	$(MAKE) -f apps/MDPtools/CMakeFiles/mdpscreenx.dir/build.make apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o.provides.build
.PHONY : apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o.provides

apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o.provides.build: apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o

apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o: apps/MDPtools/CMakeFiles/mdpscreenx.dir/flags.make
apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o: ../apps/MDPtools/ScreenProc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ww/pppbox/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o"
	cd /home/ww/pppbox/build/apps/MDPtools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o -c /home/ww/pppbox/apps/MDPtools/ScreenProc.cpp

apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.i"
	cd /home/ww/pppbox/build/apps/MDPtools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ww/pppbox/apps/MDPtools/ScreenProc.cpp > CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.i

apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.s"
	cd /home/ww/pppbox/build/apps/MDPtools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ww/pppbox/apps/MDPtools/ScreenProc.cpp -o CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.s

apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o.requires:
.PHONY : apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o.requires

apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o.provides: apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o.requires
	$(MAKE) -f apps/MDPtools/CMakeFiles/mdpscreenx.dir/build.make apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o.provides.build
.PHONY : apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o.provides

apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o.provides.build: apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o

# Object files for target mdpscreenx
mdpscreenx_OBJECTS = \
"CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o" \
"CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o"

# External object files for target mdpscreenx
mdpscreenx_EXTERNAL_OBJECTS =

apps/MDPtools/mdpscreenx: apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o
apps/MDPtools/mdpscreenx: apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o
apps/MDPtools/mdpscreenx: apps/MDPtools/CMakeFiles/mdpscreenx.dir/build.make
apps/MDPtools/mdpscreenx: apps/MDPtools/libmdplib.a
apps/MDPtools/mdpscreenx: libpppbox.so
apps/MDPtools/mdpscreenx: apps/MDPtools/CMakeFiles/mdpscreenx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable mdpscreenx"
	cd /home/ww/pppbox/build/apps/MDPtools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mdpscreenx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/MDPtools/CMakeFiles/mdpscreenx.dir/build: apps/MDPtools/mdpscreenx
.PHONY : apps/MDPtools/CMakeFiles/mdpscreenx.dir/build

apps/MDPtools/CMakeFiles/mdpscreenx.dir/requires: apps/MDPtools/CMakeFiles/mdpscreenx.dir/mdpscreen.cpp.o.requires
apps/MDPtools/CMakeFiles/mdpscreenx.dir/requires: apps/MDPtools/CMakeFiles/mdpscreenx.dir/ScreenProc.cpp.o.requires
.PHONY : apps/MDPtools/CMakeFiles/mdpscreenx.dir/requires

apps/MDPtools/CMakeFiles/mdpscreenx.dir/clean:
	cd /home/ww/pppbox/build/apps/MDPtools && $(CMAKE_COMMAND) -P CMakeFiles/mdpscreenx.dir/cmake_clean.cmake
.PHONY : apps/MDPtools/CMakeFiles/mdpscreenx.dir/clean

apps/MDPtools/CMakeFiles/mdpscreenx.dir/depend:
	cd /home/ww/pppbox/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ww/pppbox /home/ww/pppbox/apps/MDPtools /home/ww/pppbox/build /home/ww/pppbox/build/apps/MDPtools /home/ww/pppbox/build/apps/MDPtools/CMakeFiles/mdpscreenx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/MDPtools/CMakeFiles/mdpscreenx.dir/depend
