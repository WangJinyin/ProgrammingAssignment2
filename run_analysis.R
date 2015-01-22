##download the data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./data")){ dir.create("./data") } 
download.file(fileUrl, destfile = "./data/Dataset.zip")



##read the data
unzip("./data/Dataset.zip", exdir = "./data", unzip = "internal")  ##extract files
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")



##1.Merges the training and the test sets to create one data set

##meger the training and the test sets
X <- rbind(X_test, X_train)
y <- rbind(y_test, y_train)
subject <- rbind(subject_test, subject_train)  

##read the features
features <- read.table("./data/UCI HAR Dataset/features.txt")

##specify the column name for the dataset
colnames(X) <- features[, 2] 



##2.Extracts only the mearsurements on the mean and standard deviation for each measurement

##remove the duplicated colclumn
X <- X[, !duplicated(colnames(X))]

##library the dplyr package
library(dplyr)

##extract the measurements on the mean and standard deviation for each measurement
X <- cbind(select(X, contains("mean()")), select(X, contains("std()")))



##3.Uses descriptive activity names to name the activities in the data set

##read the activity_labels
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

##merge the dataset y and the dataset activity_labels
y <- merge(y, activity_labels, by.x = "V1", by.y = "V1")



##4.Appropriately labels the data set with descriptive variable names

##to complete dataset
dataset <- cbind(subject, y$V2, X)

##label the dataset with descriptive variable names
colnames(dataset)[1:2] <- c("subject", "activity")



##5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##convert the dataset into a grouped dataset
dataset <- group_by(dataset, subject, activity) 

##calculate the average of each variable for each activity and each subject
result <- summarise_each(dataset, funs(mean))


##write the result
write.table(result, "./data/result.txt", row.name = FALSE)