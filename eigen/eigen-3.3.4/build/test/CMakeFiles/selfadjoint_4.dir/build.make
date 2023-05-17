# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/build

# Include any dependencies generated for this target.
include test/CMakeFiles/selfadjoint_4.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/selfadjoint_4.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/selfadjoint_4.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/selfadjoint_4.dir/flags.make

test/CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.o: test/CMakeFiles/selfadjoint_4.dir/flags.make
test/CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.o: ../test/selfadjoint.cpp
test/CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.o: test/CMakeFiles/selfadjoint_4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.o"
	cd /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/build/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.o -MF CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.o.d -o CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.o -c /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/test/selfadjoint.cpp

test/CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.i"
	cd /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/build/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/test/selfadjoint.cpp > CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.i

test/CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.s"
	cd /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/build/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/test/selfadjoint.cpp -o CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.s

# Object files for target selfadjoint_4
selfadjoint_4_OBJECTS = \
"CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.o"

# External object files for target selfadjoint_4
selfadjoint_4_EXTERNAL_OBJECTS =

test/selfadjoint_4: test/CMakeFiles/selfadjoint_4.dir/selfadjoint.cpp.o
test/selfadjoint_4: test/CMakeFiles/selfadjoint_4.dir/build.make
test/selfadjoint_4: test/CMakeFiles/selfadjoint_4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable selfadjoint_4"
	cd /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/selfadjoint_4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/selfadjoint_4.dir/build: test/selfadjoint_4
.PHONY : test/CMakeFiles/selfadjoint_4.dir/build

test/CMakeFiles/selfadjoint_4.dir/clean:
	cd /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/build/test && $(CMAKE_COMMAND) -P CMakeFiles/selfadjoint_4.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/selfadjoint_4.dir/clean

test/CMakeFiles/selfadjoint_4.dir/depend:
	cd /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4 /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/test /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/build /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/build/test /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/build/test/CMakeFiles/selfadjoint_4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/selfadjoint_4.dir/depend

