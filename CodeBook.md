## TidyData.txt

## Analysis Performed

The starting point for the data analysis was a dataset containing information collected by 30 volunteers using smartphone sensors.

Full information and the dataset is available from:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The "test" and "training" datasets from this original data were combined together.

Only the values of calculated Means and Standard Deviations were kept from the original data.

For each measurement in the dataset, the "Activity" being performed was known, as was the individual "Subject" who was wearing the device.

For each combination of "Subject" and "Activity" the mean value of each retained variable was calculated.

The format of the variables in the final dataset are made up of the following components:

1. t or f representing a time or frequency domain signal

2. The name of the measurement collected (for more detail see section "Original Information about variables")

3. Mean or StanDev indicating whether the column in question contains a mean or standard deviation

4. DimX or DimY or DimZ indicating the dimension that the measurement relates to


## Original Information about variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


## List of variables contained in TidyData.txt


"Activity" - The activity performed
"Subject" - Individual wearing the device

"tBodyAccMeanDimX" - Mean value of variables named as described above
"tBodyAccMeanDimY"
"tBodyAccMeanDimZ"
"tBodyAccStandDevDimX"
"tBodyAccStandDevDimY"
"tBodyAccStandDevDimZ"
"tGravityAccMeanDimX"
"tGravityAccMeanDimY"
"tGravityAccMeanDimZ" 
"tGravityAccStandDevDimX"
"tGravityAccStandDevDimY" 
"tGravityAccStandDevDimZ"
"tBodyAccJerkMeanDimX"
"tBodyAccJerkMeanDimY"
"tBodyAccJerkMeanDimZ"
"tBodyAccJerkStandDevDimX"
"tBodyAccJerkStandDevDimY"
"tBodyAccJerkStandDevDimZ"
"tBodyGyroMeanDimX"
"tBodyGyroMeanDimY"
"tBodyGyroMeanDimZ"
"tBodyGyroStandDevDimX"
"tBodyGyroStandDevDimY"
"tBodyGyroStandDevDimZ"
"tBodyGyroJerkMeanDimX"
"tBodyGyroJerkMeanDimY"
"tBodyGyroJerkMeanDimZ"
"tBodyGyroJerkStandDevDimX"
"tBodyGyroJerkStandDevDimY" 
"tBodyGyroJerkStandDevDimZ"
"tBodyAccMagMean" 
"tBodyAccMagStandDev"
"tGravityAccMagMean" 
"tGravityAccMagStandDev"
"tBodyAccJerkMagMean" 
"tBodyAccJerkMagStandDev"
"tBodyGyroMagMean" 
"tBodyGyroMagStandDev"
"tBodyGyroJerkMagMean" 
"tBodyGyroJerkMagStandDev"
"fBodyAccMeanDimX" 
"fBodyAccMeanDimY"
"fBodyAccMeanDimZ" 
"fBodyAccStandDevDimX"
"fBodyAccStandDevDimY" 
"fBodyAccStandDevDimZ"
"fBodyAccJerkMeanDimX" "
fBodyAccJerkMeanDimY"
"fBodyAccJerkMeanDimZ" 
"fBodyAccJerkStandDevDimX"
"fBodyAccJerkStandDevDimY" 
"fBodyAccJerkStandDevDimZ"
"fBodyGyroMeanDimX" 
"fBodyGyroMeanDimY"
"fBodyGyroMeanDimZ" 
"fBodyGyroStandDevDimX"
"fBodyGyroStandDevDimY" 
"fBodyGyroStandDevDimZ"
"fBodyAccMagMean" 
"fBodyAccMagStandDev"
"fBodyBodyAccJerkMagMean" 
"fBodyBodyAccJerkMagStandDev"
"fBodyBodyGyroMagMean" 
"fBodyBodyGyroMagStandDev"
"fBodyBodyGyroJerkMagMean" 
"fBodyBodyGyroJerkMagStandDev"


