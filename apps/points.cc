#include <fstream>
#include <iostream>
#include <string>

// std::string trim(const std::string& str) {
//     std::string result = str;
//     result.erase(result.begin(), std::find_if(result.begin(), result.end(), [](int ch) {
//         return !std::isspace(ch);
//     }));
//     result.erase(std::find_if(result.rbegin(), result.rend(), [](int ch) {
//         return !std::isspace(ch);
//     }).base(), result.end());
//     return result;
// }

int main() {
    std::ifstream inputFile("refined_points_origin_test_00_03_r2.txt");
    std::ofstream outputFile("output_3.txt");

    if (inputFile && outputFile) {
        std::string line;
        std::string mergedLine;
        int lineCount = 0;

        while (std::getline(inputFile, line)) {
            //std::string trimmedLine = trim(line);

            std::string result = "";

            for (char c : line) {
                if (!std::isspace(c)) {
                    result += c;
                }
            }

            //outputFile << result << std::endl;

            //line.erase(std::remove_if(line.begin(), line.end(), ::isspace), line.end());

            //mergedLine += line + "\t";

            lineCount++;

            if (lineCount < 3) {
                mergedLine += result + " ";
            }
            else{
                mergedLine += result;
                outputFile << mergedLine << std::endl;
                mergedLine = "";
                lineCount = 0;
            }
        }

        if (lineCount > 0) {
            outputFile << mergedLine << std::endl;
        }

        std::cout << "Converted completedly !" << std::endl;
    } else {
        std::cout << "Error open file." << std::endl;
    }

    return 0;
}
