# Install script for directory: /home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/Cholesky"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/CholmodSupport"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/Core"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/Dense"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/Eigen"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/Eigenvalues"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/Geometry"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/Householder"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/IterativeLinearSolvers"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/Jacobi"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/LU"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/MetisSupport"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/OrderingMethods"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/PaStiXSupport"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/PardisoSupport"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/QR"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/QtAlignedMalloc"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/SPQRSupport"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/SVD"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/Sparse"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/SparseCholesky"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/SparseCore"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/SparseLU"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/SparseQR"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/StdDeque"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/StdList"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/StdVector"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/SuperLUSupport"
    "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/UmfPackSupport"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE DIRECTORY FILES "/home/duc/Desktop/Photometric/lib/eigen/eigen-3.3.4/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

