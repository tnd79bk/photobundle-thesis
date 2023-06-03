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
    // auto origin_poses = convertPoseToLocal(origin_poses_global);
    // auto origin_poses_2 = convertPoseToWorld(origin_poses);
    // writePosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/origin_poses_local.txt", origin_poses);

    // auto test_global = loadPosesKittiFormat("global.txt");
    // auto test_local = convertPoseToLocal(test_global);
    // writePosesKittiFormat("local.txt", test_local);

    auto init_poses = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/data/kitti_init_poor/00.txt");
    auto init_poses_global = convertPoseToWorld(init_poses);
    // auto init_poses_local = convertPoseToLocal(init_poses_global);
    
    // for(size_t i = 0; i < init_poses.size(); ++i) {  
    //     for(int r = 0; r < 3; ++r) {
    //     for(int c = 0; c < 4; ++c) {
    //         init_poses[i](r,c) = init_poses[i](r,c) + 0.09;
    //     }
    //     }
    // } 
    
    auto refined_poses_global = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/refined_pose_origin.txt");
    //auto refined_poses_global_2 = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/refined_poses_2.txt");
    //auto refined_poses = convertPoseToLocal(refined_poses_global);
    //auto refined_poses_2 = convertPoseToLocal(refined_poses_global_2);
    //writePosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/refined_poses_local.txt", refined_poses);
    //writePosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/refined_poses_local_2.txt", refined_poses_2);

    std::ofstream ofs("error.txt");


    for(size_t i = 0; i < init_poses_global.size(); ++i) {
        double err_square_refined=0;
        double err_square_init = 0;
      
        printf("frame : %d \n", i) ;   

        for(int r = 0; r < 3; ++r) {
            for(int c = 0; c < 4; ++c) {
                err_square_refined += pow(refined_poses_global[i](r,c) - origin_poses_global[i](r,c),2);
                
                //printf("%f = %f , %f \n", err_square_refined,refined_poses[i](r,c),origin_poses[i](r,c)) ;
                err_square_init += pow(init_poses_global[i](r,c) - origin_poses_global[i](r,c),2);
                //err_square += refined_poses[i](r,c)*refined_poses[i](r,c) - init_poses[i](r,c)*init_poses[i](r,c);
            }
        }

        //for(int r = 0; r < 2; ++r) {
            //err_square_refined += pow(refined_poses[i](r,3) - origin_poses[i](r,3),2);
            //err_square_refined_2 += pow(refined_poses_2[i](r,3) - origin_poses[i](r,3),2);
                //printf("%f = %f , %f \n", err_square_refined,refined_poses[i](r,c),origin_poses[i](r,c)) ;
            //err_square_init += pow(init_poses[i](r,3) - origin_poses[i](r,3),2);
                //err_square += refined_poses[i](r,c)*refined_poses[i](r,c) - init_poses[i](r,c)*init_poses[i](r,c);
        //}

        ofs << "frame" << i << " : refined : " << (sqrt(fabs(err_square_refined))) << " : init : " << (sqrt(fabs(err_square_init)))  << " \n";
        //ofs << "frame" << i << " : origin x,y : " << origin_poses_global[i](0,3) << "," << origin_poses_global[i](1,3) <<  " : refined x,y : " << refined_poses_global[i](0,3) << "," << refined_poses_global[i](1,3) << " : init x,y : " << init_poses_global[i](0,3) << "," << init_poses_global[i](1,3) << " \n";
        //ofs << "frame" << i << " : global-1 : " << origin_poses[i](0,3) << "," << origin_poses[i](2,3) << " and global-2 :"  << origin_poses_2[i](0,3) << "," << origin_poses_2[i](2,3) << " : local : " << origin_poses_global[i](0,3) << "," << origin_poses_global[i](2,3)  << " \n";
        
        //ofs << "frame" << i << " : refined : " << refined_poses_global[i](0,3) << "," << refined_poses_global[i](1,3) << " and init :"  << init_poses_global[i](0,3) << "," << init_poses_global[i](1,3) << " : origin : " << origin_poses_global[i](0,3) << "," << origin_poses_global[i](1,3)  << " \n";
        // ofs << init_poses_global[i](0,3) << " " << init_poses_global[i](1,3) << " " << init_poses_global[i](2,3) << "\n";
    }    
    return 0;
}