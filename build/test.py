from subprocess import Popen, PIPE

print "hello world \n"
proc = Popen(["./simpletest_raspicam_cv"], cwd = "/home/pi/Desktop/RPiVisionAPI/build", stdout=PIPE)
output = proc.communicate()[0].split()
print "goodye"
print output
