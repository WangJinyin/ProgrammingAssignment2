===========================================================================

This is from the Human Activity Recognition Using Smartphones Dataset.

===========================================================================

description of the variables:

subject: an identifier of the subject who carried out the experiment
activity: the activity label

tBodyAcc-XYZ, tGravityAcc-XYZ: separate the acceleration signal using the low pass Butterworth filter with a corner frequency of 0.3 Hz

tBodyAccJerk-XYZ, tBodyGyroJerk-XYZ: derive the body linear acceleration and angular velocity in time to obtain Jerk signals

tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag: the magnitude of above three-dimensional signals were calculated using the Euclidean norm

fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag: apply a Fast Fourier Transform (FFT) to above signals

"-XYZ" is used to denote 3-axial signals in the X, Y and Z directions. 

mean(): mean value
std(): standard deviation

=========================================================================

data: average of each variable for each activity and each subject

=========================================================================

transformations that performed to clean up the data: 

1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

==========================================================================
