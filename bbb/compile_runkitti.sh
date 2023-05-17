clear

g++ -std=c++11  run_kitti.cc -o run_kitti_1 -Wall -Wpointer-arith -L"/usr/lib/x86_64-linux-gnu/" -l:libstdc++.so -L"../aaa/bin" -l:libphotobundle.a  -L"/usr/lib/x86_64-linux-gnu/" -lm -lpthread -lgomp -L"../glog/glog-0.3.4/libs" -l:libglog.a -l:libglog.so -L"../gflags/gflags-2.2.0/build/lib" -l:libgflags.a -ldl -I/home/duc/Desktop/Photometric/photobundle-master/opencv-2.4.9/modules/calib3d/include -I/home/duc/Desktop/Photometric/photobundle-master/opencv-2.4.9/modules/highgui/include -I/home/duc/Desktop/Photometric/photobundle-master/opencv-2.4.9/modules/core/include -I/home/duc/Desktop/Photometric/photobundle-master/opencv-2.4.9/modules/features2d/include -I/home/duc/Desktop/Photometric/photobundle-master/opencv-2.4.9/modules/flann/include -I/home/duc/Desktop/Photometric/photobundle-master/src -I/usr/local/include/eigen3  -L"../opencv/opencv-2.4.9/build/lib/" -l:libopencv_highgui.so -l:libopencv_core.so -l:libopencv_calib3d.so -l:libopencv_imgproc.so -l:libopencv_flann.so -l:libopencv_contrib.so -L"../../boost_1_59_0/bin.v2/libs/program_options/build/gcc-5.4.0/release/link-static/threading-multi/" -l:libboost_program_options.a -L"../boost/boost_1_59_0/bin.v2/libs/filesystem/build/gcc-5.3.1/release/link-static/threading-multi/" -l:libboost_filesystem.a -I/home/duc/Desktop/Photometric/photobundle-master/ceres-solver/ceres-solver-1.10.0/include -I/home/duc/Desktop/Photometric/photobundle-master/ceres-solver/ceres-solver-1.10.0/config -L"../build/lib" -l:libceres.a -L"../openmp/build/libomptarget/" -l:libomptarget.so -L"../SuiteSparse-4.5.5/SuiteSparse/lib" -l:libcholmod.so -l:libcxsparse.so -l:libblas.so -L"/usr/lib/lapack/" -l:liblapack.so
