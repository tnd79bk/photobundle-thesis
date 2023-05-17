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
CMAKE_SOURCE_DIR = /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build

# Include any dependencies generated for this target.
include apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/progress.make

# Include the compile flags for this target's objects.
include apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/flags.make

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.o: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/flags.make
apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.o: ../apps/haartraining/cvboost.cpp
apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.o: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.o"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.o -MF CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.o.d -o CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.o -c /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvboost.cpp

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.i"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvboost.cpp > CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.i

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.s"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvboost.cpp -o CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.s

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.o: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/flags.make
apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.o: ../apps/haartraining/cvcommon.cpp
apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.o: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.o"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.o -MF CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.o.d -o CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.o -c /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvcommon.cpp

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.i"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvcommon.cpp > CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.i

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.s"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvcommon.cpp -o CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.s

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.o: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/flags.make
apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.o: ../apps/haartraining/cvhaarclassifier.cpp
apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.o: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.o"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.o -MF CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.o.d -o CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.o -c /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvhaarclassifier.cpp

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.i"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvhaarclassifier.cpp > CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.i

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.s"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvhaarclassifier.cpp -o CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.s

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.o: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/flags.make
apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.o: ../apps/haartraining/cvhaartraining.cpp
apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.o: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.o"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.o -MF CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.o.d -o CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.o -c /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvhaartraining.cpp

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.i"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvhaartraining.cpp > CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.i

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.s"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvhaartraining.cpp -o CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.s

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.o: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/flags.make
apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.o: ../apps/haartraining/cvsamples.cpp
apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.o: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.o"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.o -MF CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.o.d -o CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.o -c /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvsamples.cpp

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.i"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvsamples.cpp > CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.i

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.s"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining/cvsamples.cpp -o CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.s

# Object files for target opencv_haartraining_engine
opencv_haartraining_engine_OBJECTS = \
"CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.o" \
"CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.o" \
"CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.o" \
"CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.o" \
"CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.o"

# External object files for target opencv_haartraining_engine
opencv_haartraining_engine_EXTERNAL_OBJECTS =

lib/libopencv_haartraining_engine.a: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvboost.cpp.o
lib/libopencv_haartraining_engine.a: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvcommon.cpp.o
lib/libopencv_haartraining_engine.a: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaarclassifier.cpp.o
lib/libopencv_haartraining_engine.a: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvhaartraining.cpp.o
lib/libopencv_haartraining_engine.a: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/cvsamples.cpp.o
lib/libopencv_haartraining_engine.a: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/build.make
lib/libopencv_haartraining_engine.a: apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library ../../lib/libopencv_haartraining_engine.a"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && $(CMAKE_COMMAND) -P CMakeFiles/opencv_haartraining_engine.dir/cmake_clean_target.cmake
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_haartraining_engine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/build: lib/libopencv_haartraining_engine.a
.PHONY : apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/build

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/clean:
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining && $(CMAKE_COMMAND) -P CMakeFiles/opencv_haartraining_engine.dir/cmake_clean.cmake
.PHONY : apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/clean

apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/depend:
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9 /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/apps/haartraining /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/haartraining/CMakeFiles/opencv_haartraining_engine.dir/depend

