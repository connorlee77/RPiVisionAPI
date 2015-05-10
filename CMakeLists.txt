cmake_minimum_required (VERSION 2.8) 
project (raspicam_test)
SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} /usr/local/lib/cmake/)
find_package(raspicam REQUIRED)
find_package(OpenCV)
IF  ( OpenCV_FOUND AND raspicam_CV_FOUND)
MESSAGE(STATUS "COMPILING OPENCV TESTS")
add_executable (simpletest_raspicam_cv simpletest_raspicam_cv.cpp)  
target_link_libraries (simpletest_raspicam_cv ${raspicam_CV_LIBS})
ELSE()
MESSAGE(FATAL_ERROR "OPENCV NOT FOUND IN YOUR SYSTEM")
<<<<<<< HEAD
ENDIF()
=======
ENDIF()
>>>>>>> 319931173f2a3a631a75e83cc208281b2379f882
