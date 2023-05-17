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

# Utility rule file for pch_Generate_opencv_test_ml.

# Include any custom commands dependencies for this target.
include modules/ml/CMakeFiles/pch_Generate_opencv_test_ml.dir/compiler_depend.make

# Include the progress variables for this target.
include modules/ml/CMakeFiles/pch_Generate_opencv_test_ml.dir/progress.make

modules/ml/CMakeFiles/pch_Generate_opencv_test_ml: modules/ml/test_precomp.hpp.gch/opencv_test_ml_Release.gch

modules/ml/test_precomp.hpp.gch/opencv_test_ml_Release.gch: ../modules/ml/test/test_precomp.hpp
modules/ml/test_precomp.hpp.gch/opencv_test_ml_Release.gch: modules/ml/test_precomp.hpp
modules/ml/test_precomp.hpp.gch/opencv_test_ml_Release.gch: lib/libopencv_test_ml_pch_dephelp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating test_precomp.hpp.gch/opencv_test_ml_Release.gch"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ml && /usr/bin/cmake -E make_directory /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ml/test_precomp.hpp.gch
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ml && /usr/bin/g++ -O3 -DNDEBUG -DNDEBUG -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/ml/test" -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/features2d/include" -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/highgui/include" -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/imgproc/include" -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/flann/include" -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/core/include" -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/highgui/include" -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/ts/include" -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/ml/include" -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/core/include" -isystem"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ml" -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/ml/src" -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/ml/include" -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/core/include" -isystem"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ml" -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/ml/src" -I"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/ml/include" -isystem"/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build" -fsigned-char -W -Wall -Werror=return-type -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -msse -msse2 -msse3 -ffunction-sections -x c++-header -o /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ml/test_precomp.hpp.gch/opencv_test_ml_Release.gch /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ml/test_precomp.hpp

modules/ml/test_precomp.hpp: ../modules/ml/test/test_precomp.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating test_precomp.hpp"
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ml && /usr/bin/cmake -E copy /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/ml/test/test_precomp.hpp /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ml/test_precomp.hpp

pch_Generate_opencv_test_ml: modules/ml/CMakeFiles/pch_Generate_opencv_test_ml
pch_Generate_opencv_test_ml: modules/ml/test_precomp.hpp
pch_Generate_opencv_test_ml: modules/ml/test_precomp.hpp.gch/opencv_test_ml_Release.gch
pch_Generate_opencv_test_ml: modules/ml/CMakeFiles/pch_Generate_opencv_test_ml.dir/build.make
.PHONY : pch_Generate_opencv_test_ml

# Rule to build all files generated by this target.
modules/ml/CMakeFiles/pch_Generate_opencv_test_ml.dir/build: pch_Generate_opencv_test_ml
.PHONY : modules/ml/CMakeFiles/pch_Generate_opencv_test_ml.dir/build

modules/ml/CMakeFiles/pch_Generate_opencv_test_ml.dir/clean:
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ml && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_test_ml.dir/cmake_clean.cmake
.PHONY : modules/ml/CMakeFiles/pch_Generate_opencv_test_ml.dir/clean

modules/ml/CMakeFiles/pch_Generate_opencv_test_ml.dir/depend:
	cd /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9 /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules/ml /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ml /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ml/CMakeFiles/pch_Generate_opencv_test_ml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/ml/CMakeFiles/pch_Generate_opencv_test_ml.dir/depend
