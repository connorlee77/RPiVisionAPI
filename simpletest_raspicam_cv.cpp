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

cv::Mat thresholdFrame(cv::Mat image ) {

	cv::Mat hsv_frame;
	cv::cvtColor(image, hsv_frame, CV_BGR2HSV);
	cv::Scalar min(0/2, 90, 80);
	cv::Scalar max(25/2, 255, 255);
	
	cv::Mat threshold_frame;
	cv::inRange(hsv_frame, min, max, threshold_frame);
	
	cv::Mat str_el = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(3, 3));
	morphologyEx(threshold_frame, threshold_frame, cv::MORPH_OPEN, str_el);
	morphologyEx(threshold_frame, threshold_frame, cv::MORPH_CLOSE, str_el);
	
	return threshold_frame;
}

cv::Point2i findObject(cv::Mat threshold_frame) {
	cv::vector<cv::vector<cv::Point> > contours;
	cv::vector<cv::Vec4i> heirarchy;
	cv::vector<cv::Point2i> center;
	cv::vector<int> radius;
	
	cv::Mat m = threshold_frame.clone(); 
	cv::findContours(m, contours, heirarchy, 
		CV_RETR_TREE, CV_CHAIN_APPROX_NONE);
	
	int minTargetRadius = 5; 
	size_t count = contours.size();
	 
	for( int i=0; i<count; i++)
	{
		cv::Point2f c;
		float r;
		cv::minEnclosingCircle( contours[i], c, r);
	 
		if (r >= minTargetRadius)
		{
		    center.push_back(c);
		    radius.push_back(r);
		}
	}
	
	count = center.size();
	cv::Scalar red(255,0,0);
	 
	for( int i = 0; i < count; i++)
	{
		cv::circle(threshold_frame, center[i], radius[i], red, 3);
	}
	
	return center[0];
}

void track() {
	cv::Mat image = captureImage();
	cv::Mat threshold_frame = thresholdFrame(image);
	cv::Point2i pt = findObject(threshold_frame);
	cout << pt.x << ", " << pt.y << "\n" << endl;
	
    cv::imwrite("raspicam_cv_image.jpg", threshold_frame);
    cv::imwrite("raspicam_cv_image1.jpg", image);
}

int main ( int argc,char **argv ) {
	track();
}


