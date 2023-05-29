#include <opencv2/highgui/highgui.hpp>
#include <opencv2/calib3d/calib3d.hpp>

#include "photobundle.h"
#include "utils.h"
#include "debug.h"
#include "dataset.h"
#include "imgproc.h"
#include "pose_utils.h"

#include <signal.h>

bool gStop = false;

void sigHandler(int) { gStop = true; }

int main(int argc, char** argv)
{
  signal(SIGINT, sigHandler);

  utils::ProgramOptions options;
  options
      ("output,o", "refined_poses.txt", "trajectory output file")
      ("config,c", "../config/kitti_stereo.cfg", "config file")
      .parse(argc, argv);

  utils::ConfigFile cf(options.get<std::string>("config"));

  // create kitti dataset
  auto dataset = Dataset::Create(options.get<std::string>("config"));

  // Take baseline * focus length (intrinsic matrix)
  auto Bf = dataset->calibration().b() * dataset->calibration().fx();

  // Take pose (extrinsic matrix)
  auto T_init_global = loadPosesKittiFormat(cf.get<std::string>("trajectory"));
  auto T_init = convertPoseToLocal(T_init_global);

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
    }
  }

  auto output_fn = options.get<std::string>("output");
  Info("Writing refined poses to %s\n", output_fn.c_str());
  writePosesKittiFormat(output_fn, result.poses);

  //RunKittiEvaluation("a","b","c");

  return 0;
}

