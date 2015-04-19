#include <ctime>
#include <iostream>
#include <raspicam/raspicam_cv.h>
using namespace std; 

/*
    Code in main takes picture and stores image bits in a openCV matrix

*/
int main (int argc, char **argv) {

    raspicam::RaspiCam_Cv Camera;
    
    /*
        Mat: rows are delimited by semicolon.
    */
    cv::Mat image;
    int frames = 10;
    
    //set camera params
    Camera.set(CV_CAP_PROP_FORMAT, CV_8UC3);
    
    //Open camera
    cout<<"Opening Camera..."<< endl;
    if (!Camera.open()) 
    {
        cerr << "Error opening the camera" << endl;
        return -1;
    }
    
    //Start capture
    cout << "Capturing " << frames << " frames ...." << endl;
    
    for (int i = 0; i < frames; i++) {
        Camera.grab();
        Camera.retrieve(image);
    }
    cout <<"Stop camera..." << endl;
    Camera.release();

    //save image 
    cv::imwrite("raspicam_cv_image.jpg", image);
    cout << "Image saved at raspicam_cv_image.jpg" << endl;
}
