# This code book will describe the each tranformation done in the mentioned run_analysis.R script with the main data set and final varaibles in the transformed data set.

## Script broad sequence:-

#### 1. Reading the features file and extracting the required column names with the mean() & std() in the form of vector to directly fetch the requisite column names from the X_test & X_train data set in the following script

#### 2. Create data frames by reading activity, subject, y & X files for both test & train data 

#### 3. Subsetting the X file for both test & train data by the required mean & std feature variables

 [1] "tBodyAcc.mean...X"           "tBodyAcc.mean...Y"           "tBodyAcc.mean...Z"           "tGravityAcc.mean...X"       
 [5] "tGravityAcc.mean...Y"        "tGravityAcc.mean...Z"        "tBodyAccJerk.mean...X"       "tBodyAccJerk.mean...Y"      
 [9] "tBodyAccJerk.mean...Z"       "tBodyGyro.mean...X"          "tBodyGyro.mean...Y"          "tBodyGyro.mean...Z"         
[13] "tBodyGyroJerk.mean...X"      "tBodyGyroJerk.mean...Y"      "tBodyGyroJerk.mean...Z"      "tBodyAccMag.mean.."         
[17] "tGravityAccMag.mean.."       "tBodyAccJerkMag.mean.."      "tBodyGyroMag.mean.."         "tBodyGyroJerkMag.mean.."    
[21] "fBodyAcc.mean...X"           "fBodyAcc.mean...Y"           "fBodyAcc.mean...Z"           "fBodyAccJerk.mean...X"      
[25] "fBodyAccJerk.mean...Y"       "fBodyAccJerk.mean...Z"       "fBodyGyro.mean...X"          "fBodyGyro.mean...Y"         
[29] "fBodyGyro.mean...Z"          "fBodyAccMag.mean.."          "fBodyBodyAccJerkMag.mean.."  "fBodyBodyGyroMag.mean.."    
[33] "fBodyBodyGyroJerkMag.mean.." "tBodyAcc.std...X"            "tBodyAcc.std...Y"            "tBodyAcc.std...Z"           
[37] "tGravityAcc.std...X"         "tGravityAcc.std...Y"         "tGravityAcc.std...Z"         "tBodyAccJerk.std...X"       
[41] "tBodyAccJerk.std...Y"        "tBodyAccJerk.std...Z"        "tBodyGyro.std...X"           "tBodyGyro.std...Y"          
[45] "tBodyGyro.std...Z"           "tBodyGyroJerk.std...X"       "tBodyGyroJerk.std...Y"       "tBodyGyroJerk.std...Z"      
[49] "tBodyAccMag.std.."           "tGravityAccMag.std.."        "tBodyAccJerkMag.std.."       "tBodyGyroMag.std.."         
[53] "tBodyGyroJerkMag.std.."      "fBodyAcc.std...X"            "fBodyAcc.std...Y"            "fBodyAcc.std...Z"           
[57] "fBodyAccJerk.std...X"        "fBodyAccJerk.std...Y"        "fBodyAccJerk.std...Z"        "fBodyGyro.std...X"          
[61] "fBodyGyro.std...Y"           "fBodyGyro.std...Z"           "fBodyAccMag.std.."           "fBodyBodyAccJerkMag.std.."  
[65] "fBodyBodyGyroMag.std.."      "fBodyBodyGyroJerkMag.std.." 

#### 4. Merges the subsetted training and the test sets to create one data set.

#### 5. Final output is the required mean_matrix that lists down the average of the each required feature variable for each activity and each subject. First column is the activity label & second column is subject number

[1] "activity"                    "subject_num"                
 [3] "tBodyAcc.mean...X"           "tBodyAcc.mean...Y"          
 [5] "tBodyAcc.mean...Z"           "tGravityAcc.mean...X"       
 [7] "tGravityAcc.mean...Y"        "tGravityAcc.mean...Z"       
 [9] "tBodyAccJerk.mean...X"       "tBodyAccJerk.mean...Y"      
[11] "tBodyAccJerk.mean...Z"       "tBodyGyro.mean...X"         
[13] "tBodyGyro.mean...Y"          "tBodyGyro.mean...Z"         
[15] "tBodyGyroJerk.mean...X"      "tBodyGyroJerk.mean...Y"     
[17] "tBodyGyroJerk.mean...Z"      "tBodyAccMag.mean.."         
[19] "tGravityAccMag.mean.."       "tBodyAccJerkMag.mean.."     
[21] "tBodyGyroMag.mean.."         "tBodyGyroJerkMag.mean.."    
[23] "fBodyAcc.mean...X"           "fBodyAcc.mean...Y"          
[25] "fBodyAcc.mean...Z"           "fBodyAccJerk.mean...X"      
[27] "fBodyAccJerk.mean...Y"       "fBodyAccJerk.mean...Z"      
[29] "fBodyGyro.mean...X"          "fBodyGyro.mean...Y"         
[31] "fBodyGyro.mean...Z"          "fBodyAccMag.mean.."         
[33] "fBodyBodyAccJerkMag.mean.."  "fBodyBodyGyroMag.mean.."    
[35] "fBodyBodyGyroJerkMag.mean.." "tBodyAcc.std...X"           
[37] "tBodyAcc.std...Y"            "tBodyAcc.std...Z"           
[39] "tGravityAcc.std...X"         "tGravityAcc.std...Y"        
[41] "tGravityAcc.std...Z"         "tBodyAccJerk.std...X"       
[43] "tBodyAccJerk.std...Y"        "tBodyAccJerk.std...Z"       
[45] "tBodyGyro.std...X"           "tBodyGyro.std...Y"          
[47] "tBodyGyro.std...Z"           "tBodyGyroJerk.std...X"      
[49] "tBodyGyroJerk.std...Y"       "tBodyGyroJerk.std...Z"      
[51] "tBodyAccMag.std.."           "tGravityAccMag.std.."       
[53] "tBodyAccJerkMag.std.."       "tBodyGyroMag.std.."         
[55] "tBodyGyroJerkMag.std.."      "fBodyAcc.std...X"           
[57] "fBodyAcc.std...Y"            "fBodyAcc.std...Z"           
[59] "fBodyAccJerk.std...X"        "fBodyAccJerk.std...Y"       
[61] "fBodyAccJerk.std...Z"        "fBodyGyro.std...X"          
[63] "fBodyGyro.std...Y"           "fBodyGyro.std...Z"          
[65] "fBodyAccMag.std.."           "fBodyBodyAccJerkMag.std.."  
[67] "fBodyBodyGyroMag.std.."      "fBodyBodyGyroJerkMag.std.."
