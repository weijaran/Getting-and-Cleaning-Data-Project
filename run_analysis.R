#Download and unzip data
#################################################

zfile <- "phone_data.zip"
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists(zfile)){
    download.file(url, zfile, method="curl")
}

#if unzipped data folder "UCI HAR Dataset" does not exist, unzip downloaded file
#at current directory
if(!file.exists("UCI HAR Dataset")){
  unzip(zfile, exdir = getwd())
}

#Read raw data into dataframes
################################################

#read test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

#read training data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

#get features and activity lables
features <- read.table("UCI HAR Dataset/features.txt")
activity <- read.table("UCI HAR Dataset/activity_labels.txt")


#1. Merges the training and the test sets to create one data set
##################################################################

#merge corresponding datasets
subject <- rbind(subject_test, subject_train)
x <- rbind(x_test, x_train)
y <- rbind(y_test, y_train)

#merge all datasets into one
df <- cbind(subject, x, y)

#2.Extracts only the measurements on the mean and standard deviation for 
#  each measurement
##################################################################

# extract the measurements on the mean and standard deviation
selFeatIndex <- grep(".*\\-(mean|std)\\(\\).*",features[,2])

x_stat <- x[,selFeatIndex]

# get a dataset with only mean and standard-deviation features
df <- cbind(subject, x_stat, y)

#3.Uses descriptive activity names to name the activities in the data set
#####################################################################

# replace y(activity lables) with descriptive activity names
df[,ncol(df)] <- activity$V2[match(df[,ncol(df)],activity$V1)]

#4.Appropriately labels the data set with descriptive variable names
######################################################################

# get extracted feature names -- mean and standard deviation
selFeatures <- as.character(features[selFeatIndex,2])

# assign columns with descriptive variable names
colnames(df) <- c("Subject", selFeatures, "Activity" )

#5. From the data set in step 4, creates a second, independent tidy data set 
#   with the average of each variable for each activity and each subject.

library(reshape)
mdf <- melt(df, id=c("Activity", "Subject"))
avedf <- cast(mdf, Subject + Activity ~ variable, mean)
write.table(avedf, file = "average.txt", row.names = FALSE, quote = FALSE)