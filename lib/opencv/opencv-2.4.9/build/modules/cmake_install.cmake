# Install script for directory: /home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/modules

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/androidcamera/.androidcamera/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/calib3d/.calib3d/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/contrib/.contrib/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/core/.core/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/dynamicuda/.dynamicuda/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/features2d/.features2d/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/flann/.flann/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/gpu/.gpu/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/highgui/.highgui/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/imgproc/.imgproc/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/java/.java/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/legacy/.legacy/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ml/.ml/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/nonfree/.nonfree/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/objdetect/.objdetect/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ocl/.ocl/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/photo/.photo/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/python/.python/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/stitching/.stitching/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/superres/.superres/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ts/.ts/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/video/.video/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/videostab/.videostab/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/viz/.viz/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/world/.world/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/core/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/flann/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/imgproc/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/highgui/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/features2d/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/calib3d/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ml/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/video/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/legacy/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/objdetect/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/photo/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/gpu/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ocl/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/nonfree/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/contrib/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/stitching/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/superres/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/ts/cmake_install.cmake")
  include("/home/duc/Desktop/Photometric/lib/opencv/opencv-2.4.9/build/modules/videostab/cmake_install.cmake")

endif()

