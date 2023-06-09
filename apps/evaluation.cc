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
    auto origin_poses_global = loadPosesKittiFormat("/home/duc/Desktop/Photometric/data/data_odometry_poses/dataset/poses/00.txt");

    auto init_poses = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/data/kitti_init_poor/00.txt");
    auto init_poses_global = convertPoseToWorld(init_poses);
    
    // for(size_t i = 0; i < init_poses.size(); ++i) {  
    //     for(int r = 0; r < 3; ++r) {
    //     for(int c = 0; c < 4; ++c) {
    //         init_poses[i](r,c) = init_poses[i](r,c) + 0.09;
    //     }
    //     }
    // } 
    
    auto refined_poses_global_2 = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/refined_poses_2000.txt");
    auto refined_poses_global = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/refined_poses_test_ new.txt");
    //auto refined_poses_global_3 = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/refined_poses_cache_500f.txt");
    auto refined_poses_global_origin = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/refined_pose_origin.txt");

    std::ofstream ofs("error.txt");



    for(size_t i = 0; i < refined_poses_global.size(); ++i) {
        double err_square_refined=0,err_square_refined_origin=0,err_square_refined_2=0;
        double err_square_init = 0;
      
        printf("frame : %d \n", i) ;   

        for(int r = 0; r < 3; ++r) {
            for(int c = 0; c < 4; ++c) {
                //error pose
                err_square_refined += pow(refined_poses_global[i](r,c) - origin_poses_global[i](r,c),2);
                err_square_refined_2 += pow(refined_poses_global_2[i](r,c) - origin_poses_global[i](r,c),2);     
                //err_square_refined_3 += pow(refined_poses_global_3[i](r,c) - origin_poses_global[i](r,c),2);             
                err_square_init += pow(init_poses_global[i](r,c) - origin_poses_global[i](r,c),2);
                err_square_refined_origin += pow(refined_poses_global_origin[i](r,c) - origin_poses_global[i](r,c),2);
 
                // error xyz
                // err_square_refined += pow(refined_poses_global[i](r,3) - origin_poses_global[i](r,3),2);             
                // err_square_init += pow(init_poses_global[i](r,3) - origin_poses_global[i](r,3),2);
                // err_square_refined_origin += pow(refined_poses_global_origin[i](r,3) - origin_poses_global[i](r,3),2); 
            }
        }

        ofs << "frame" << i  
            <<" :new: " << (sqrt(fabs(err_square_refined)))
            <<" :2000: " << (sqrt(fabs(err_square_refined_2))) 
            //<<" :500: " << (sqrt(fabs(err_square_refined_3))) 
            <<" :origin: " << (sqrt(fabs(err_square_refined_origin)))
            //<<" :init: " << (sqrt(fabs(err_square_init)))  
            << " \n";
    }    
    return 0;
}