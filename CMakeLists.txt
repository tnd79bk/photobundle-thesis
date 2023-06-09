cmake_minimum_required(VERSION 2.8.11 FATAL_ERROR)

project(photobundle CXX)

set(BASE_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin/)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin/)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH}
  ${CMAKE_SOURCE_DIR}/cmake
  ${CMAKE_SOURCE_DIR}/cmake/modules)

option(BUILD_STATIC   "Build static libraries"  ON)

option(WITH_TBB      "with Intel TBB"          ON)
option(WITH_OPENMP   "with openmp"             ON)
option(WITH_OPENCV   "with opencv"             ON)

option(WITH_MATLAB   "compile with Matlab interface" OFF)


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -Wextra -Wparentheses")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fomit-frame-pointer")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -funroll-loops -fpeel-loops")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mtune=native -msse2 -mssse3 -msse4.1 -mpopcnt")

if(BUILD_STATIC)
  set(LIBRARY_TYPE STATIC)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")
else()
  set(LIBRARY_TYPE SHARED)
endif()


#set(Ceres_DIR /home/trung/PBA/ceres-solver-1.10.0)
#find_package(Ceres  REQUIRED PATHS ../ceres-solver-1.10.0/ )


#Cai nay set cai thu muc Ceres ma khong can phai find_package(Ceres)
#set(Ceres_INCLUDE_DIRS /home/duc/Desktop/Photometric/photobundle-master/ceres-solver/ceres-solver-1.11.0/build/config)
#find_package(Ceres REQUIRED )
set(Ceres_INCLUDE_DIRS /home/duc/Desktop/Photometric/lib/ceres-solver/ceres-solver-1.11.0/build/config)
include_directories(${Ceres_INCLUDE_DIRS})

list(APPEND MY_LIBRARIES ${CERES_LIBRARIES})



find_package(Eigen  REQUIRED)

include_directories(${EIGEN_INCLUDE_DIR})

include_directories(${CMAKE_SOURCE_DIR}/src)



find_package(TBB REQUIRED)
find_package(OpenMP REQUIRED)
#find_package(OpenCV REQUIRED PATHS "/home/duc/Desktop/Photometric/photobundle-master/lib/opencv/opencv-2.4.9")
find_package(OpenCV REQUIRED)
if(TBB_FOUND AND WITH_TBB)
  include_directories(${TBB_INCLUDE_DIRS})
  list(APPEND MY_LIBRARIES ${TBB_LIBRARIES})
  add_definitions(-DWITH_TBB)
endif()

if(OpenCV_FOUND AND WITH_OPENCV)
  include_directories(${OpenCV_INCLUDE_DIRS})
  list(APPEND MY_LIBRARIES ${OpenCV_LIBS})
  add_definitions(-DWITH_OPENCV)
endif()

if(OPENMP_FOUND)
  add_definitions(-DWITH_OPENMP)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
endif()

set(Boost_USE_MULTITHREAD ON)
set(Boost_USE_STATIC_LIBS ON)
set(Boost_USE_STATIC_RUNTIME ON)
# find_package(Boost 1.59.0 REQUIRED COMPONENTS filesystem system program_options )	
# add_definitions(${Boost_LIB_DIAGNOSTIC_DEFINITIONS})
# add_definitions(-DWITH_BOOST)
# add_definitions(-DWITH_SIMD)
# include_directories(${Boost_INCLUDE_DIRS})
# list(APPEND MY_LIBRARIES ${Boost_LIBRARIES})

#Tao duong dan den boost
set(Boost_INCLUDE_DIRS /home/duc/Desktop/Photometric/photobundle-master/lib/boost/boost_1_59_0/boost)
#find_package(Boost REQUIRED )
include_directories(${Boost_INCLUDE_DIRS})

add_subdirectory(src)
#add_subdirectory(apps)

