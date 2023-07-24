#include "photobundle.h"
#include "utils.h"
#include "debug.h"
#include "dataset.h"
#include "imgproc.h"
#include "pose_utils.h"
#include <cmath>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

#include <fstream>
#include <vector>
#include <sstream>
#include <stdexcept>

int main(int argc, char** argv)
{
    auto gt_poses_global = loadPosesKittiFormat("/home/duc/Desktop/Photometric/data/data_odometry_poses/dataset/poses/06.txt");

    auto init_poses = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/data/kitti_init_poor/06.txt");
    auto init_poses_global = convertPoseToWorld(init_poses);
    
    auto refined_poses_global = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/poses/refined_poses_new_06_03_r2.txt");
    auto refined_poses_global_origin = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/poses/refined_poses_origin_06_r1.txt");

    auto pose = refined_poses_global;


    std::ofstream ofs("./xyz/xyz-new-06.txt");


    for(size_t i = 0; i < pose.size(); ++i) {

        ofs << pose[i](0,3) << "," << pose[i](1,3) << "," << pose[i](2,3) << "\n";
        //ofs << pose[i](0,3) << "\t" << pose[i](2,3) << "\n";

    }
    printf("frame : %d \n", pose.size()) ;
    return 0;
}
