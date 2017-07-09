# Samsung-Galaxy-Accelerometers-Analysis

This repository deals with the script of analyzing the tracking parameters of Samsung Accelerometer of a sample group of 30 people

# Script sequence:-

* Reading the features file and extracting the required column names with the mean() & std() 

* Reading the acitivty lables file
  
* Reading the subject, y & X files 
 
* Extracts only the measurements on the mean and standard deviation for each measurement.
  
* Merges the training and the test sets to create one data set.
  
* Uses descriptive activity names to name the activities in the data set.

* Final output is the required mean_matrix that lists down the average of the each required feature variable for each activity and each subject. First column is the activity label & second column is subject number
