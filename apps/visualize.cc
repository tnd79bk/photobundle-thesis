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
    auto origin_poses_global_2 = convertPoseToWorld(origin_poses);
    writePosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/origin_poses_local.txt", origin_poses);

    auto init_poses = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/data/kitti_init_poor/00.txt");
    auto init_poses_global = convertPoseToWorld(init_poses);
    auto init_poses_local = convertPoseToLocal(init_poses_global);
    
    auto refined_poses_global = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/refined-poses.txt");
    auto refined_poses = convertPoseToLocal(refined_poses_global);
    writePosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/refined_poses_local.txt", refined_poses);

    auto poses_global = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/global.txt");
    std::ofstream ofs("local.txt");

    // const Mat_<double,3,4> P;
    
    // P = poses_global[0].transpose();
    // T_i[0] = Eigen::Isometry3d( T_w[0] ).inverse().matrix();
    // ofs << P << "\n";

    for(size_t i = 0; i < poses_global.size(); ++i) {
        //double x,x1,x2,y1,y2,z1,z2,y,z;
        //printf("frame : %d \n", i) ;   

        //const Mat_<double,3,3> R = T.block<3,3>(0,0);

        Eigen::Matrix3d R;
        R(0,0)= poses_global[i](0,0);
        R(0,1)= poses_global[i](0,1);
        R(0,2)= poses_global[i](0,2);
        R(1,0)= poses_global[i](1,0); 
        R(1,1)= poses_global[i](1,1);
        R(1,2)= poses_global[i](1,2);
        R(2,0)= poses_global[i](2,0);
        R(2,1)= poses_global[i](2,1);
        R(2,2)= poses_global[i](2,2);

        Eigen::Vector3d T, T1;
        T(0) = poses_global[i](0,3);
        T(1) = poses_global[i](1,3);
        T(2) = poses_global[i](2,3);

        // std::cout << -R.transpose() * T  << "\n";
        // T1 = -R.transpose() * T ;

        //P = poses_global[i].transpose() * poses_global[i-1];
        
        //ofs << T1(0) << "\t"<< T1(1) << "\t" << T1(2) << "\t"<<T(0) << "\t"<< T(1) << "\t" << T(2)<<"\n";
        //ofs << T1(0) << "\t"<< T1(1) << "\t" << T1(2) << "\n";

        //ofs << "frame" << i << " : one : " << (sqrt(fabs(err_square_refined))) << " : two : " << (sqrt(fabs(err_square_refined_2)))  << " and init :"  << (sqrt(fabs(err_square_init))) << " \n";
        //ofs << "frame" << i << " : origin x,y : " << origin_poses_global[i](0,3) << "," << origin_poses_global[i](1,3) <<  " : refined x,y : " << refined_poses_global[i](0,3) << "," << refined_poses_global[i](1,3) << " : init x,y : " << init_poses_global[i](0,3) << "," << init_poses_global[i](1,3) << " \n";
        //ofs << "frame" << i << " : global-1 : " << origin_poses[i](0,3) << "," << origin_poses[i](2,3) << " and global-2 :"  << origin_poses_2[i](0,3) << "," << origin_poses_2[i](2,3) << " : local : " << origin_poses_global[i](0,3) << "," << origin_poses_global[i](2,3)  << " \n";
        //ofs << x << "\t"<< y << "\t" << z << "\n";
        //ofs << "frame" << i << " : x : " << x << " and y :"  << y << " : z : " << z << " \n";
        //ofs << "and refined" << " : x : " << x1 << " and y :"  << y1 << " : z : " << z1 << " \n";
        //ofs << "and init" << " : x : " << x2 << " and y :"  << y2 << " : z : " << z2 << " \n \n";

    }    
    return 0;
}