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
      ("output,o", "./poses/refined_poses_origin_03_r1.txt", "trajectory output file")
      ("config,c", "../config/kitti_stereo.cfg", "config file")
      .parse(argc, argv);

  utils::ConfigFile cf(options.get<std::string>("config"));

  // create kitti dataset
  auto dataset = Dataset::Create(options.get<std::string>("config"));

  // Take baseline * focus length (intrinsic matrix)
  auto Bf = dataset->calibration().b() * dataset->calibration().fx();

  // Take pose (extrinsic matrix)
  auto T_init = loadPosesKittiFormat(cf.get<std::string>("trajectory"));  

  auto output_fn = options.get<std::string>("output");

  PhotometricBundleAdjustment::Result result;
  PhotometricBundleAdjustment photoba(dataset->calibration(), dataset->imageSize(), {cf});

  EigenAlignedContainer_<Mat44> T_opt;

  cv::Mat_<float> zmap;
  UniquePointer<DatasetFrame> frame;
  for(int f_i = 0; (frame = dataset->getFrame(f_i)) && !gStop; ++f_i) {
  
    printf("Test : %s",output_fn.c_str());
    
    printf("Frame %05d\n", f_i);


    disparityToDepth(frame->disparity(), Bf, zmap);

    auto I = frame->image().ptr<const uint8_t>();
    auto Z = zmap.ptr<float>();

    photoba.addFrame(I, Z, T_init[f_i],  &result);
    if(!result.refinedPoints.empty()) {
      // store the refinement points if you'd like
      //auto output_points = options.get<std::string>("outputpoints");
      //writePosesKittiFormat(output_points, result.refinedPoints);

      // std::ofstream ofs("refined_points_origin_test.txt");
      // ofs << result.refinedPoints.size() << "\n";
      // for(size_t i = 0; i < result.refinedPoints.size(); ++i) {
      //   ofs << result.refinedPoints[i] << "\n";
      // }
      Info("Writing refined points done \n");
    }
  }
  
//  auto output_fn = options.get<std::string>("output");
  Info("Writing refined poses to %s\n", output_fn.c_str());
  writePosesKittiFormat(output_fn, result.poses);
  // Info("Alpha: %s\n",cf.get<std::string>("alpha"));
  // Info("Path Radius: %s\n",cf.get<std::string>("patchRadius"));

}
