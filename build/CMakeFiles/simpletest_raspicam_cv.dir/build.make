# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/Desktop/RPiVisionAPI

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/RPiVisionAPI/build

# Include any dependencies generated for this target.
include CMakeFiles/simpletest_raspicam_cv.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simpletest_raspicam_cv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simpletest_raspicam_cv.dir/flags.make

CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o: CMakeFiles/simpletest_raspicam_cv.dir/flags.make
CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o: ../simpletest_raspicam_cv.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/Desktop/RPiVisionAPI/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o -c /home/pi/Desktop/RPiVisionAPI/simpletest_raspicam_cv.cpp

CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/Desktop/RPiVisionAPI/simpletest_raspicam_cv.cpp > CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.i

CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/Desktop/RPiVisionAPI/simpletest_raspicam_cv.cpp -o CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.s

CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o.requires:
.PHONY : CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o.requires

CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o.provides: CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o.requires
	$(MAKE) -f CMakeFiles/simpletest_raspicam_cv.dir/build.make CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o.provides.build
.PHONY : CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o.provides

CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o.provides.build: CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o

# Object files for target simpletest_raspicam_cv
simpletest_raspicam_cv_OBJECTS = \
"CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o"

# External object files for target simpletest_raspicam_cv
simpletest_raspicam_cv_EXTERNAL_OBJECTS =

simpletest_raspicam_cv: CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o
simpletest_raspicam_cv: CMakeFiles/simpletest_raspicam_cv.dir/build.make
simpletest_raspicam_cv: /opt/vc/lib/libmmal_core.so
simpletest_raspicam_cv: /opt/vc/lib/libmmal_util.so
simpletest_raspicam_cv: /opt/vc/lib/libmmal.so
simpletest_raspicam_cv: CMakeFiles/simpletest_raspicam_cv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable simpletest_raspicam_cv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simpletest_raspicam_cv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simpletest_raspicam_cv.dir/build: simpletest_raspicam_cv
.PHONY : CMakeFiles/simpletest_raspicam_cv.dir/build

CMakeFiles/simpletest_raspicam_cv.dir/requires: CMakeFiles/simpletest_raspicam_cv.dir/simpletest_raspicam_cv.cpp.o.requires
.PHONY : CMakeFiles/simpletest_raspicam_cv.dir/requires

CMakeFiles/simpletest_raspicam_cv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simpletest_raspicam_cv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simpletest_raspicam_cv.dir/clean

CMakeFiles/simpletest_raspicam_cv.dir/depend:
	cd /home/pi/Desktop/RPiVisionAPI/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/RPiVisionAPI /home/pi/Desktop/RPiVisionAPI /home/pi/Desktop/RPiVisionAPI/build /home/pi/Desktop/RPiVisionAPI/build /home/pi/Desktop/RPiVisionAPI/build/CMakeFiles/simpletest_raspicam_cv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simpletest_raspicam_cv.dir/depend

