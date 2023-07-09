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

// namespace {
//     auto translation_error = [](const auto &pose_error) {
//         return static_cast<double>(pose_error.template block<3, 1>(0, 3).norm());
//     };

//     auto rotation_error = [](auto &pose_error) {
//         double a = pose_error(0, 0);
//         double b = pose_error(1, 1);
//         double c = pose_error(2, 2);
//         double d = 0.5 * (a + b + c - 1.0);
//         return acos(std::max(std::min(d, 1.0), -1.0));
//     };

//     auto trajectory_distances = [](const auto &poses) {
//         std::vector<double> dist(1, 0.0);
//         for (size_t i = 1; i < poses.size(); i++)
//             dist.push_back(dist[i - 1] + translation_error(poses[i - 1] - poses[i]));
//         return dist;
//     };

//     inline int lastFrameFromSegmentLength(const std::vector<double> &dist, int first_frame, double len) {
//         for (int i = first_frame; i < dist.size(); i++)
//             if (dist[i] > dist[first_frame] + len)
//                 return i;
//         return -1;
//     }
// }


double translation_error(Mat44 &pose_error){
    return static_cast<double>(pose_error.template block<3, 1>(0, 3).norm());
}

double rotation_error(Mat44 &pose_error){
    double a = pose_error(0, 0);
    double b = pose_error(1, 1);
    double c = pose_error(2, 2);
    double d = 0.5 * (a + b + c - 1.0);
    return acos(std::max(std::min(d, 1.0), -1.0));
}

std::vector<double> trajectory_distances(PoseList &poses) {
    std::vector<double> dist(1, 0.0);
    for (size_t i = 1; i < poses.size(); i++)
        // dist.push_back(dist[i - 1] + translation_error(poses[i - 1] - poses[i]));
        dist.push_back(dist[i - 1] + sqrt(pow(poses[i - 1](0,3) - poses[i](0,3),2) + pow(poses[i - 1](1,3) - poses[i](1,3),2) + pow(poses[i - 1](2,3) - poses[i](2,3),2)));
    return dist;
}

int lastFrameFromSegmentLength(const std::vector<double> &dist, int first_frame, double len) {
    for (int i = first_frame; i < dist.size(); i++)
        if (dist[i] > dist[first_frame] + len)
            return i;
    return -1;
}


void ComputeMeanRPE(PoseList &poses_gt,PoseList &poses_result,int step_size,const std::vector<double> &lengths, std::ofstream &ofs) {

    const auto &num_lengths = lengths.size();


    // pre-compute distances (from ground truth as reference)
    std::vector<double> dist = trajectory_distances(poses_gt);

    double mean_rpe = 0;
    // for all start positions do
    // for (int first_frame = 0; first_frame < poses_gt.size(); first_frame += step_size) {

    //     // for all segment lengths do
    //     for (size_t i = 0; i < num_lengths; i++) {

    //         // current length
    //         double len = lengths[i];

    //         // compute last frame
    //         int last_frame = lastFrameFromSegmentLength(dist, first_frame, len);

    //         // next frame if sequence not long enough
    //         if (last_frame == -1)
    //             continue;

    //         // compute translational errors
    //         Mat44 pose_delta_gt = poses_gt[first_frame].inverse() * poses_gt[last_frame];
    //         Mat44 pose_delta_result = poses_result[first_frame].inverse() * poses_result[last_frame];
    //         Mat44 pose_error = pose_delta_result.inverse() * pose_delta_gt;
    //         double t_err = translation_error(pose_error);
    //         double r_err = rotation_error(pose_error);

    //         mean_rpe += t_err / len;
    //         num_total++;
    //     }

        
    for (size_t i = 0; i < num_lengths; i++) {

        // current length
        double len = lengths[i];
        double t_err = 0.0;
        double r_err = 0.0;
        int num_total = 0;

        for (int first_frame = 0; first_frame < poses_gt.size(); first_frame += step_size) {

            // compute last frame
            int last_frame = lastFrameFromSegmentLength(dist, first_frame, len);

            // next frame if sequence not long enough
            if (last_frame == -1)
                continue;

            // compute translational errors
            Mat44 pose_delta_gt = poses_gt[first_frame].inverse() * poses_gt[last_frame];
            Mat44 pose_delta_result = poses_result[first_frame].inverse() * poses_result[last_frame];
            Mat44 pose_error = pose_delta_result.inverse() * pose_delta_gt;
            t_err += translation_error(pose_error)/len;
            r_err += rotation_error(pose_error)/len;

            mean_rpe += t_err / len;
            num_total++;
       
        }
        ofs << "Len: " << len << " t_err: " << t_err/num_total << " r_err: " << r_err*180/(num_total*3.141592653589)  <<" \n"; 
    }



    
    //return ((mean_rpe / static_cast<double>(num_total)) * 100.0);
}

int main() {
    auto poses_gt = loadPosesKittiFormat("/home/duc/Desktop/Photometric/data/data_odometry_poses/dataset/poses/00.txt");

    auto init_poses = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/data/kitti_init_poor/00.txt");
    auto init_poses_global = convertPoseToWorld(init_poses);
    
    auto refined_poses_global = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/poses/refined_poses_new_00_03_r1.txt");
    auto refined_poses_global_2 = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/poses/refined_poses_new_00_01_r1.txt");
    auto refined_poses_global_origin = loadPosesKittiFormat("/home/duc/Desktop/Photometric/photobundle-master/apps/poses/refined_poses_origin_00_r1.txt");

    //std::ofstream ofs("t_r_error.txt");

    std::vector<double> dist = trajectory_distances(poses_gt);

    std::vector<double> lengths;

    for (int i=100;i<=800;i=i+100){
        lengths.push_back(i);
    }
    
    //double MeanRPE = 
    std::ofstream ofs("./eval_result/eval_t_r_error_new_00_01_r1.txt");
    
    ComputeMeanRPE(refined_poses_global_2,poses_gt,10,lengths,ofs);

    //std::cout << MeanRPE ;

    return 0;
}