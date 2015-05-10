#include <ctime>
#include <iostream>
#include <raspicam/raspicam_cv.h>
#include <opencv2/opencv.hpp>

using namespace std; 


cv::Mat captureImage() {
	
	raspicam::RaspiCam_Cv Camera;
    cv::Mat image;
    int nCount = 30;

    Camera.set(CV_CAP_PROP_FORMAT, CV_8UC4);

    if (!Camera.open()) {
		cerr << "Error opening the camera" << endl;
	}

    for(int i=0; i < nCount; i++) {
        Camera.grab();
        Camera.retrieve(image);
        if(i % 5 == 0) {
        	cout << "\r captured " << i << " images\n" << std::flush;
    	}
    }

    Camera.release();

    return image;
}


int main ( int argc,char **argv ) {

	cv::Mat image = captureImage();
	cv::Mat hsv_frame;
	cv::cvtColor(image, hsv_frame, CV_BGR2HSV);
	cv::Scalar min(0/2, 0, 0);
	cv::Scalar max(25/2, 255, 255);
	cv::Mat threshold_frame;
	cv::inRange(hsv_frame, min, max, threshold_frame);
	
	
    cv::imwrite("raspicam_cv_image.jpg", threshold_frame);
    cv::imwrite("raspicam_cv_image1.jpg", image);
}


