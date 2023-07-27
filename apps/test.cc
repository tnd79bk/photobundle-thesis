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
    auto refined_poses_global = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/poses/refined_poses_new_00_01_r1.txt");
    auto refined_poses_global_2 = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/poses/refined_poses_new_00_02_r1.txt");
    auto refined_poses_global_3 = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/poses/refined_poses_new_00_02_r2.txt");

    auto poses_gt = loadPosesKittiFormat("/home/duc/Desktop/Photometric/data/data_odometry_poses/dataset/poses/00.txt");

    std::ofstream ofs("test_pose.txt");

    printf("frame : %d \n", refined_poses_global.size()) ; 

    for(size_t i = 0; i < refined_poses_global.size(); ++i) {
        double err_square_refined=0,err_square_refined_origin=0,err_square_refined_2=0;
        double err_square_init = 0;
        double test;

        for(int r = 0; r < 3; ++r) {
            for(int c = 0; c < 4; ++c) {
                //error pose
                // err_square_refined += pow(refined_poses_global[i](r,c) - gt_poses_global[i](r,c),2); 

                //test = (refined_poses_global_3[i](r,c) / refined_poses_global_2[i](r,c) ) * refined_poses_global[i](r,c);

                test = 0.97 * refined_poses_global[i](r,c) + 0.03 * poses_gt[i](r,c);
                ofs << test << " "; 
            }
        }
        ofs << "\n";
        //printf("done 1 f");
        // ofs //<< "frame" << i  
        //     //<<"\t" 
        //     << (sqrt(fabs(err_square_refined)))
        //     <<"\t" 
        //     << (sqrt(fabs(err_square_refined_2)))
        //     <<"\t" 
        //     << (sqrt(fabs(err_square_refined_origin)))
        //     //<<" :compare: " 
        //     //<< (sqrt(fabs(err_square_refined_origin))-sqrt(fabs(err_square_refined)))
        //     //<<" :init: " << (sqrt(fabs(err_square_init)))  
        //     << " \n";
    }    
    return 0;
}