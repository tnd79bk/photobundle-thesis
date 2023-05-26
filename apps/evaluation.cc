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
    auto origin_poses = convertPoseToLocal(origin_poses_global);
    writePosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/origin_poses_local.txt", origin_poses);

    auto init_poses = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/data/kitti_init_poor/00.txt");
    
    auto refined_poses_global = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/refined_poses.txt");
    auto refined_poses = convertPoseToLocal(refined_poses_global);
    writePosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/refined_poses_local.txt", refined_poses);

    std::ofstream ofs("error.txt");


    for(size_t i = 0; i < refined_poses.size(); ++i) {
        double err_square_refined = 0;
        double err_square_init = 0;
        double err_square = 0;
        printf("frame : %d \n", i) ;   
        for(int r = 0; r < 3; ++r) {
            for(int c = 0; c < 4; ++c) {
                err_square_refined += pow(refined_poses[i](r,c) - origin_poses[i](r,c),2);
                //printf("%f = %f , %f \n", err_square_refined,refined_poses[i](r,c),origin_poses[i](r,c)) ;
                err_square_init += pow(init_poses[i](r,c) - origin_poses[i](r,c),2);
                //err_square += refined_poses[i](r,c)*refined_poses[i](r,c) - init_poses[i](r,c)*init_poses[i](r,c);
            }
        }

        //ofs << "frame" << i << " : " << (sqrt(abs(err_square_refined))) << " and "  << (sqrt(abs(err_square_init))) << " and "  << (sqrt(abs(err_square))) <<" \n";
        ofs << "frame" << i << " : " << (sqrt(fabs(err_square_refined))) << " and "  << (sqrt(fabs(err_square_init))) << " \n";
        printf("%lf\n",sqrt(fabs(err_square_refined)));

    }    
    return 0;
}