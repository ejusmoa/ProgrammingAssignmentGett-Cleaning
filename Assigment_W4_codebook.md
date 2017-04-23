# Sensors data statistics dictionary
This is the code book for the dataset requested in the Getting and Cleaning Data Course Project
## Identifiers
- `subject_id` - Subject’s ID.
	Range: 1..30
- `activity` - Each of the six different activities the subjects performed in the experiment.
	Range:
		1.	 WALKING
		2.	 WALKING_UPSTAIRS
		3.	 WALKING_DOWNSTAIRS
		4.	 SITTING
		5.	 STANDING
		6.	 LAYING

## Measurements
- `avg_tBodyAcc_mean_X/Y/Z` - Average of the tBodyAcc_mean feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1
- `avg_tBodyAcc_std_ X/Y/Z` - Average of the tBodyAcc_std feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1
- `avg_tGravityAcc_mean_X/Y/Z` - Average of the tGravityAcc_mean feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1
- `avg_tGravityAcc_std_X/Y/Z` - Average of the tGravityAcc_std feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1 
- `avg_tBodyAccJerk_mean_X/Y/Z` - Average of the tBodyAccJerk_mean feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1
- `avg_tBodyAccJerk_std_X/Y/Z` - Average of the tBodyAccJerk_std feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1
- `avg_tBodyGyro_mean_X/Y/Z` - Average of the tBodyGyro_mean feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1
- `avg_tBodyGyro_std_X/Y/Z` - Average of the tBodyGyro_std feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1-
- `avg_tBodyGyroJerk_mean_X/Y/Z` - Average of the tBodyGyroJerk_mean feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1
- `avg_tBodyGyroJerk_std_X/Y/Z` - Average of the tBodyGyroJerk_std feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1
- `avg_tBodyAccMag_mean` - Average of the tBodyAccMag_mean feature for each activity and subject.
	Range:  -1..1
- `avg_tBodyAccMag_std` - Average of the tBodyAccMag_std feature for each activity and subject.
	Range:  -1..1
- `avg_tGravityAccMag_mean` - Average of the tGravityAccMag_mean feature for each activity and subject.
	Range:  -1..1
- `avg_tGravityAccMag_std` - Average of the tGravityAccMag_std feature for each activity and subject.
	Range:  -1..1
- `avg_tBodyAccJerkMag_mean` - Average of the tBodyAccJerkMag_mean feature for each activity and subject.
	Range:  -1..1
- `avg_tBodyAccJerkMag_std` - Average of the tBodyAccJerkMag_std feature for each activity and subject.
	Range:  -1..1
- `avg_tBodyGyroMag_mean` - Average of the tBodyGyroMag_mean feature for each activity and subject.
	Range:  -1..1
- `avg_tBodyGyroMag_std` - Average of the tBodyGyroMag_std feature for each activity and subject.
	Range:  -1..1
- `avg_tBodyGyroJerkMag_mean` - Average of the tBodyGyroJerkMag_mean feature for each activity and subject.
	Range:  -1..1
- `avg_tBodyGyroJerkMag_std` - Average of the tBodyGyroJerkMag_std feature for each activity and subject.
	Range:  -1..1
- `avg_fBodyAcc_mean_X/Y/Z` - Average of the fBodyAcc_mean feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1
- `avg_fBodyAcc_std_X/Y/Z` - Average of the fBodyAcc_std feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1
- `avg_fBodyAccJerk_mean_X/Y/Z` - Average of the fBodyAccJerk_mean feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1
- `avg_fBodyAccJerk_std_X/Y/Z` - Average of the fBodyAccJerk_std feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1
- `avg_fBodyGyro_mean_X/Y/Z` - Average of the fBodyGyro_mean feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1
- `avg_fBodyGyro_std_X/Y/Z` - Average of the fBodyGyro_std feature for each activity and subject (note: 'X/Y/Z' is used to denote each of the 3-axial signals in the X, Y and Z directions)
	Range:  -1..1
- `avg_fBodyAccMag_mean` - Average of the fBodyAccMag_mean feature for each activity and subject.
	Range:  -1..1
- `avg_fBodyAccMag_std` - Average of the fBodyAccMag_std feature for each activity and subject.
	Range:  -1..1
- `avg_fBodyBodyAccJerkMag_mean` - Average of the fBodyBodyAccJerkMag_mean feature for each activity and subject.
	Range:  -1..1
- `avg_fBodyBodyAccJerkMag_std` - Average of the fBodyBodyAccJerkMag_std feature for each activity and subject.
	Range:  -1..1
- `avg_fBodyBodyGyroMag_mean` - Average of the fBodyBodyGyroMag_mean feature for each activity and subject.
	Range:  -1..1
- `avg_fBodyBodyGyroMag_std` - Average of the fBodyBodyGyroMag_std feature for each activity and subject.
	Range:  -1..1
- `avg_fBodyBodyGyroJerkMag_mean` - Average of the fBodyBodyGyroJerkMag_mean feature for each activity and subject.
	Range:  -1..1
- `avg_fBodyBodyGyroJerkMag_std` - Average of the fBodyBodyGyroJerkMag_std feature for each activity and subject.
	Range:  -1..1
