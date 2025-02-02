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
    auto gt_poses_global = loadPosesKittiFormat("/home/duc/Desktop/Photometric/data/data_odometry_poses/dataset/poses/05.txt");

    auto init_poses = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/data/kitti_init_poor/05.txt");
    auto init_poses_global = convertPoseToWorld(init_poses);
    
    auto refined_poses_global = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/poses/refined_poses_new_05_03_r2.txt");
    
    //auto refined_poses_global_2 = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/poses/refined_poses_new_08_08_r1.txt");
    
    auto refined_poses_global_origin = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/poses/refined_poses_origin_05_r1.txt");

    auto pose = refined_poses_global;


    std::ofstream ofs("./xz/xz-gt-05.txt");
    std::ofstream ofs2("./xz/xz-init-05.txt");
    std::ofstream ofs3("./xz/xz-origin-5.txt");
    std::ofstream ofs4("./xz/xz-new-05.txt");    
    
    for(size_t i = 0; i < pose.size(); ++i) {

        //ofs << gt_posesstd::ofstream ofs2("./xz/xyz-init-08.txt");_global[i](0,3) << "," << gt_poses_global[i](1,3) << "," << gt_poses_global[i](2,3) << "\n";
        ofs << gt_poses_global[i](0,3) << "\t" << gt_poses_global[i](2,3) << "\n";

    }
    



    for(size_t i = 0; i < pose.size(); ++i) {

        //ofs2 << init_poses_global[i](0,3) << "," << init_poses_global[i](1,3) << "," << init_poses_global[i](2,3) << "\n";
        ofs2 << init_poses_global[i](0,3) << "\t" << init_poses_global[i](2,3) << "\n";

    }
    



    for(size_t i = 0; i < pose.size(); ++i) {

        //ofs3 << refined_poses_global_origin[i](0,3) << "," << refined_poses_global_origin[i](1,3) << "," << refined_poses_global_origin[i](2,3) << "\n";
        ofs3 << refined_poses_global_origin[i](0,3) << "\t" << refined_poses_global_origin[i](2,3) << "\n";

    }
    



    for(size_t i = 0; i < pose.size(); ++i) { 
    	//ofs4 << refined_poses_global[i](0,3) << "," << refined_poses_global[i](1,3) << "," << refined_poses_global[i](2,3) << "\n";
    	ofs4 << refined_poses_global[i](0,3) << "\t" << refined_poses_global[i](2,3) << "\n";
    }
    
    
    //std::ofstream ofs5("./xyz/xyz_new_08_08_r1.txt");


    //for(size_t i = 0; i < pose.size(); ++i) { ofs5 << refined_poses_global_2[i](0,3) << "," << refined_poses_global_2[i](1,3) << "," << refined_poses_global_2[i](2,3) << "\n";}
    
    
    
    
    printf("frame : %d \n", pose.size()) ;
    return 0;
}
