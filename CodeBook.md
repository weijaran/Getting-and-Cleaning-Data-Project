## CodeBook for the new data set -- "average.txt"

### Transformations performed on the raw data set to obtain this new data set
    
1. Merged the training and the test sets to create one data set
2. Extracted the measurements on the mean and standard deviation for each measurement.
3. Used descriptive activity names to name the activities in the data set
4. Labeled the data set with descriptive variable names
5. From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.

### Variables in the data set

* Subject: id to represent each volunteer who participated in the experiments and whose activities have been recorded in the raw data; range from 1 to 30.

* Activity: six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by volunteers in the experiments.

* The rest of columns: average of feature values for each activity and each subject; 
features in this new data set were measurements on the mean and standard deviation for each measurement selected from the raw data.

  - Measurements come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
  - Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
  - Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
  - These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
  - A set of variables were estimated from these signals: mean(): Mean value; std(): Standard deviation.
  - The measurements on the mean and standard deviation for each measurement was extracted.
  - The average of each mean or standard deviation variable was calculated for each activity and each subject.

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

