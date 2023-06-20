// #include <opencv2/highgui/highgui.hpp>
// #include <opencv2/calib3d/calib3d.hpp>

// #include "photobundle.h"
// #include "utils.h"
// #include "debug.h"
// #include "dataset.h"
// #include "imgproc.h"
// #include "pose_utils.h"

// #include <fstream>
// #include <signal.h>
// #include <iostream>
// #include <vector>
// #include <sstream>
// #include <stdexcept>

// bool gStop = false;

// void sigHandler(int) { gStop = true; }

// int main(int argc, char** argv)
// {
//   signal(SIGINT, sigHandler);

//   utils::ProgramOptions options;
//   options
//       ("output,o", "refined_poses_cache_sequences01.txt", "trajectory output file")
//       ("config,c", "../config/kitti_stereo.cfg", "config file")
//       .parse(argc, argv);

//   utils::ConfigFile cf(options.get<std::string>("config"));

//   // create kitti dataset
//   auto dataset = Dataset::Create(options.get<std::string>("config"));

//   // Take baseline * focus length (intrinsic matrix)
//   auto Bf = dataset->calibration().b() * dataset->calibration().fx();

//   // Take pose (extrinsic matrix)
//   auto T_init = loadPosesKittiFormat(cf.get<std::string>("trajectory"));
//   //auto T_init = convertPoseToLocal(T_init_global);

//   // for(size_t i = 0; i < T_init.size(); ++i) {  
//   //   for(int r = 0; r < 3; ++r) {
//   //     for(int c = 0; c < 4; ++c) {
//   //         T_init[i](r,c) = T_init[i](r,c) + 0.09;
//   //     }
//   //   }
//   // }   

//   PhotometricBundleAdjustment::Result result;
//   PhotometricBundleAdjustment photoba(dataset->calibration(), dataset->imageSize(), {cf});

//   EigenAlignedContainer_<Mat44> T_opt;

//   cv::Mat_<float> zmap;
//   UniquePointer<DatasetFrame> frame;
//   for(int f_i = 0; /*(frame = dataset->getFrame(f_i))*/ (f_i <6) && !gStop; ++f_i) {
//     printf("Frame %05d\n", f_i);


//     disparityToDepth(frame->disparity(), Bf, zmap);

//     auto I = frame->image().ptr<const uint8_t>();
//     auto Z = zmap.ptr<float>();

//     photoba.addFrame(I, Z, T_init[f_i],  &result);
//     if(!result.refinedPoints.empty()) {
//       // store the refinement points if you'd like
//       Info("Refined points oke!\n");
//     }
//   }

//   auto output_fn = options.get<std::string>("output");
//   Info("Writing refined poses to %s\n", output_fn.c_str());
//   writePosesKittiFormat(output_fn, result.poses);
//   Info("Write refined poses done!\n");
//   printf("End!");
//   return 0;
//   // printf("refined points: %d!",result.refinedPoints.size());

//   //std::ofstream ofspoint("test.txt");
//   //for(int i=0;i<10;i++){
//   //std::cout << result.refinedPoints[0] << "\n";
//   // ofspoint << result.refinedPoints[0] << "\n";
//   //}
//   //ofspoint << result.refinedPoints.size() << "\n";
//   //Info("Write refined points done!\n")

//   // std::ofstream ofs0("image0.txt");
//   // std::ofstream ofs1("image1.txt");
//   // const std::vector<double>& p0 = result.intensity0;
//   // const std::vector<double>& gx0 = result.gx0;
//   // const std::vector<double>& gy0 = result.gy0;

//   //const std::vector<double>& p1 = result.intensity1;
//   // ofs0 << "\nI:\n";
//   // for (int i=0;i<result.intensity0.size();i++){
//   //   ofs0 << result.intensity0[i] << "\n";
//   //   ofs0 << "abs : "<<fabs(result.intensity0[i]) << "\n";
//   // }
//   // ofs0 << "\nGx:\n";
//   // for (int i=0;i<result.gx0.size();i++){
//   //   ofs0 << result.gx0[i] << "\n";
//   //   ofs0 << "abs : "<<fabs(result.gx0[i]) << "\n";
//   // }
//   // ofs0 << "\nGy:\n";
//   // for (int i=0;i<result.gy0.size();i++){
//   //   ofs0 << result.gy0[i] << "\n";
//   //   ofs0 << "abs : "<<fabs(result.gy0[i]) << "\n";
//   // }

//   // ofs1 << "\nI:\n";
//   // for (int i=0;i<result.intensity1.size();i++){
//   //   ofs1 << result.intensity1[i] << "\n";
//   // }
//   // ofs1 << "\nGx:\n";
//   // for (int i=0;i<result.gx1.size();i++){
//   //   ofs1 << result.gx1[i] << "\n";
//   // }
//   // ofs1 << "\nGy:\n";
//   // for (int i=0;i<result.gy1.size();i++){
//   //   ofs1 << result.gy1[i] << "\n";
//   // }
//   // for (int i=0;i<p0.size();i++){
//   //   ofs1 << p1[i] << "\n";
//   // }
//   // printf("End!");
//   // return 0;
// }

#include <opencv2/highgui/highgui.hpp>
#include <opencv2/calib3d/calib3d.hpp>

#include "photobundle.h"
#include "utils.h"
#include "debug.h"
#include "dataset.h"
#include "imgproc.h"
#include "pose_utils.h"

#include <signal.h>
#include <fstream>

bool gStop = false;

void sigHandler(int) { gStop = true; }

int main(int argc, char** argv)
{
  signal(SIGINT, sigHandler);

  utils::ProgramOptions options;
  options
      ("output,o", "refined_poses_new_00_01_r2.txt", "trajectory output file")
      ("config,c", "../config/kitti_stereo.cfg", "config file")
      .parse(argc, argv);

  utils::ConfigFile cf(options.get<std::string>("config"));

  // create kitti dataset
  auto dataset = Dataset::Create(options.get<std::string>("config"));

  // Take baseline * focus length (intrinsic matrix)
  auto Bf = dataset->calibration().b() * dataset->calibration().fx();

  // Take pose (extrinsic matrix)
  auto T_init = loadPosesKittiFormat(cf.get<std::string>("trajectory"));
  //auto T_init = convertPoseToLocal(T_init_global);

  // for(size_t i = 0; i < T_init.size(); ++i) {  
  //   for(int r = 0; r < 3; ++r) {
  //     for(int c = 0; c < 4; ++c) {
  //         T_init[i](r,c) = T_init[i](r,c) + 0.09;
  //     }
  //   }
  // }   

  PhotometricBundleAdjustment::Result result;
  PhotometricBundleAdjustment photoba(dataset->calibration(), dataset->imageSize(), {cf});

  EigenAlignedContainer_<Mat44> T_opt;

  cv::Mat_<float> zmap;
  UniquePointer<DatasetFrame> frame;
  for(int f_i = 0; (frame = dataset->getFrame(f_i)) && !gStop; ++f_i) {
    printf("Frame %05d\n", f_i);


    disparityToDepth(frame->disparity(), Bf, zmap);

    auto I = frame->image().ptr<const uint8_t>();
    auto Z = zmap.ptr<float>();

    photoba.addFrame(I, Z, T_init[f_i],  &result);
    if(!result.refinedPoints.empty()) {
      // store the refinement points if you'd like
      Info("Writing refined points done \n");
    }
  }

  auto output_fn = options.get<std::string>("output");
  Info("Writing refined poses to %s\n", output_fn.c_str());
  writePosesKittiFormat(output_fn, result.poses);
  Info("Alpha: %s\n",cf.get<std::string>("alpha"));
  Info("Path Radius: %s\n",cf.get<std::string>("patchRadius"));

  //RunKittiEvaluation("a","b","c");
  // std::ofstream ofs0("image0.txt");
  // std::ofstream ofs1("image1.txt");
  // const std::vector<double>& p0 = result.intensity0;
  // const std::vector<double>& gx0 = result.gx0;
  // const std::vector<double>& gy0 = result.gy0;

  // ofs0 << "\nI:\n";
  // for (int i=0;i<result.intensity0.size();i++){
  //   ofs0 << result.intensity0[i] << "\n";
  //   //ofs0 << "abs : "<<(result.intensity0[i]) << "\n";
  // }
  // ofs0 << "\nGx:\n";
  // for (int i=0;i<result.gx0.size();i++){
  //   ofs0 << result.gx0[i] << "\n";
  //   //ofs0 << "abs : "<<(result.gx0[i]) << "\n";
  // }
  // ofs0 << "\nGy:\n";
  // for (int i=0;i<result.gy0.size();i++){
  //   ofs0 << result.gy0[i] << "\n";
  //   //ofs0 << "abs : "<<(result.gy0[i]) << "\n";
  // }

  // return 0;
}
