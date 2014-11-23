This data set is come from "Human Activity Recognition Using Smartphones Dataset Version 1.0". 
==================================================================================
description of the variables:

tBodyAcc-XYZ and tGravityAcc-XYZ: the acceleration signal was then separated into body and gravity acceleration signals. 

tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ: the body linear acceleration and angular velocity were derived in time to obtain Jerk signals;

tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag: the magnitude of these three-dimensional signals were calculated using the Euclidean norm .

fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag: a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

mean(): Mean value

std(): Stadard deviation

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
==================================================================================
data: average of each variable for each activity and each subject.

==================================================================================
tansformations or work that performed to clean up the data:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.