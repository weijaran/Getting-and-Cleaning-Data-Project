## CodeBook for the new data set -- "average.txt"

### Transformations performed on the raw data set to obtain this new data set
    
1. Merged the training and the test sets to create one data set
2. Extracted the measurements on the mean and standard deviation for each measurement.
3. Used descriptive activity names to name the activities in the data set
4. Labeled the data set with descriptive variable names
5. From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.

### Variables in the data set

* Subject: id to represent each volunteer who participated the experiments and whose activities have been recorded in the raw data

* Activity: six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by volunteers in the experiments

* The rest of columns: average of feature values for each activity and each subject; 
features in this new data set were measurements on the mean and standard deviation for each measurement selected from the raw data

	- tBodyAcc-mean()-X
	- tBodyAcc-mean()-Y
	- tBodyAcc-mean()-Z
	- tBodyAcc-std()-X
	- tBodyAcc-std()-Y
	- tBodyAcc-std()-Z
	- tGravityAcc-mean()-X
	- tGravityAcc-mean()-Y
	- tGravityAcc-mean()-Z
	- tGravityAcc-std()-X
	- tGravityAcc-std()-Y
	- tGravityAcc-std()-Z
	- tBodyAccJerk-mean()-X
	- tBodyAccJerk-mean()-Y
	- tBodyAccJerk-mean()-Z
	- tBodyAccJerk-std()-X
	- tBodyAccJerk-std()-Y
	- tBodyAccJerk-std()-Z
	- tBodyGyro-mean()-X
	- tBodyGyro-mean()-Y
	- tBodyGyro-mean()-Z
	- tBodyGyro-std()-X
	- tBodyGyro-std()-Y
	- tBodyGyro-std()-Z
	- tBodyGyroJerk-mean()-X
	- tBodyGyroJerk-mean()-Y
	- tBodyGyroJerk-mean()-Z
	- tBodyGyroJerk-std()-X
	- tBodyGyroJerk-std()-Y
	- tBodyGyroJerk-std()-Z
	- tBodyAccMag-mean()
	- tBodyAccMag-std()
	- tGravityAccMag-mean()
	- tGravityAccMag-std()
	- tBodyAccJerkMag-mean()
	- tBodyAccJerkMag-std()
	- tBodyGyroMag-mean()
	- tBodyGyroMag-std()
	- tBodyGyroJerkMag-mean()
	- tBodyGyroJerkMag-std()
	- fBodyAcc-mean()-X
	- fBodyAcc-mean()-Y
	- fBodyAcc-mean()-Z
	- fBodyAcc-std()-X
	- fBodyAcc-std()-Y
	- fBodyAcc-std()-Z
	- fBodyAccJerk-mean()-X
	- fBodyAccJerk-mean()-Y
	- fBodyAccJerk-mean()-Z
	- fBodyAccJerk-std()-X
	- fBodyAccJerk-std()-Y
	- fBodyAccJerk-std()-Z
	- fBodyGyro-mean()-X
	- fBodyGyro-mean()-Y
	- fBodyGyro-mean()-Z
	- fBodyGyro-std()-X
	- fBodyGyro-std()-Y
	- fBodyGyro-std()-Z
	- fBodyAccMag-mean()
	- fBodyAccMag-std()
	- fBodyBodyAccJerkMag-mean()
	- fBodyBodyAccJerkMag-std()
	- fBodyBodyGyroMag-mean()
	- fBodyBodyGyroMag-std()
	- fBodyBodyGyroJerkMag-mean()
	- fBodyBodyGyroJerkMag-std()

