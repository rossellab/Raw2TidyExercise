# Code Book
This Code Book contains an explanation for each variable in the dataTidy dataframe that is created by the script "run_analysis.R" in this repo. The file README.md contains the explanation of how this dataTidy dataframe is created starting from the raw data. Here I report some information from the original documentation (available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) so that the variable explanation makes more sense.

The data are originally coming from experiments that "have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz." 

In the original documentation it is described how these measurements have been processed:
"The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."

The variables described in this Code Book are a transformed subset of this latter features vector. For more information as to how that features vector was created is available in the original documentation as referred to above.

### subject
This is the label corresponding to each subject on which the measurements have been performed.    

### activity
This is the label describing the activity that the subject was performing during measurement.    

### timeBodyAccelerationMeanX, timeBodyAccelerationMeanY, timeBodyAccelerationMeanZ
These are the average measurements of linear body acceleration over the three axes, respectively.    

### timeBodyAccelerationStdX, timeBodyAccelerationStdY, timeBodyAccelerationStdZ
These are the average measurements of the standard deviations in the linear body acceleration over the three axes, respectively.    

### timeGravityAccelerationMeanX, timeGravityAccelerationMeanY, timeGravityAccelerationMeanZ
These are the average measurements of the linear gravity acceleration over the three axes, respectively.

### timeGravityAccelerationStdX, timeGravityAccelerationStdY, timeGravityAccelerationStdZ
These are the average measurements of the standard deviations in the linear gravity acceleration over the three axes, respectively.

### timeBodyAccelerationJerkMeanX, timeBodyAccelerationJerkMeanY, timeBodyAccelerationJerkMeanZ
These are the average measurements of the Jerk signal computed from the linear body acceleration over the three axes, respectively.

### timeBodyAccelerationJerkStdX, timeBodyAccelerationJerkStdY, timeBodyAccelerationJerkStdZ
These are the average measurements of the standard deviations in the Jerk signal computed from the linear body acceleration over the three axes, respectively.

### timeBodyAngularVelocityMeanX, timeBodyAngularVelocityMeanY, timeBodyAngularVelocityMeanZ
These are the average body angular velocity over the three axes, respectively.

### timeBodyAngularVelocityStdX, timeBodyAngularVelocityStdY, timeBodyAngularVelocityStdZ
These are the average measurements of the standard deviations in the body angular velocity over the three axes, respectively.

### timeBodyAngularVelocityJerkMeanX, timeBodyAngularVelocityJerkMeanY, timeBodyAngularVelocityJerkMeanZ
These are the average measurements of the Jerk signal computed from the body angular velocity over the three axes, respectively.

### timeBodyAngularVelocityJerkStdX, timeBodyAngularVelocityJerkStdY, timeBodyAngularVelocityJerkStdZ
These are the average measurements of the standard deviations in the Jerk signal computed from the body angular velocity over the three axes, respectively.

### timeBodyAccelerationMagnitudeMean
This is the average magnitude of the body acceleration.

### timeBodyAccelerationMagnitudeStd
This is the average measurement of the standard deviation of the magnitude of the body acceleration.

### timeGravityAccelerationMagnitudeMean
This is the average magnitude of the gravity acceleration.

### timeGravityAccelerationMagnitudeStd
This is the average measurement of the standard deviation of the magnitude of the gravity acceleration.

### timeBodyAccelerationJerkMagnitudeMean
This is the average magnitude of the Jerk signal computed from the linear body acceleration.

### timeBodyAccelerationJerkMagnitudeStd
This is the average measurement of the standard deviation in the magnitude of the Jerk signal computed from the linear body acceleration.

### timeBodyAngularVelocityMagnitudeMean
This is the average magnitude of the body angular velocity.

### timeBodyAngularVelocityMagnitudeStd
This is the average measurement of the standard deviation in the magnitude of the body angular velocity.

### timeBodyAngularVelocityJerkMagnitudeMean
This is the average measurement of the standard deviation in the magnitude of the Jerk signal computed from the body angular velocity.

### timeBodyAngularVelocityJerkMagnitudeStd
This is the average measurement of the standard deviation in the magnitude of the Jerk signal computed from the body angular velocity.

### frequencyBodyAccelerationMeanX, frequencyBodyAccelerationMeanY, frequencyBodyAccelerationMeanZ
These are the average measurements of linear body acceleration over the three axes, respectively, computed in the frequency domain.

### frequencyBodyAccelerationStdX, frequencyBodyAccelerationStdY, frequencyBodyAccelerationStdZ
These are the average measurements of the standard deviations in the linear body acceleration over the three axes, respectively, computed in the frequency domain.

### frequencyBodyAccelerationJerkMeanX, frequencyBodyAccelerationJerkMeanY, frequencyBodyAccelerationJerkMeanZ
These are the average measurements of the Jerk signal computed from the linear body acceleration over the three axes, respectively, computed in the frequency domain.

### frequencyBodyAccelerationJerkStdX, frequencyBodyAccelerationJerkStdY, frequencyBodyAccelerationJerkStdZ
These are the average measurements of the standard deviations in the Jerk signal computed from the linear body acceleration over the three axes, respectively, computed in the frequency domain.

### frequencyBodyAngularVelocityMeanX, frequencyBodyAngularVelocityMeanY, frequencyBodyAngularVelocityMeanZ
These are the average measurements of the body angular velocity over the three axes, respectively, computed in the frequency domain.

### frequencyBodyAngularVelocityStdX, frequencyBodyAngularVelocityStdY, frequencyBodyAngularVelocityStdZ
These are the average measurements of the standard deviations in the body angular velocity over the three axes, respectively, computed in the frequency domain.

### frequencyBodyAccelerationMagnitudeMean
This is the average magnitude of the body acceleration, computed in the frequency domain.

### frequencyBodyAccelerationMagnitudeStd
This is the average measurement of the standard deviation of the magnitude of the body acceleration, computed in the frequency domain.

### frequencyBodyAccelerationJerkMagnitudeMean
This is the average magnitude of the Jerk signal computed from the linear body acceleration, computed in the frequency domain.

### frequencyBodyAccelerationJerkMagnitudeStd
This is the average measurement of the standard deviation in the magnitude of the Jerk signal computed from the linear body acceleration, computed in the frequency domain.

### frequencyBodyAngularVelocityMagnitudeMean
This is the average magnitude of the body angular velocity, computed in the frequency domain.

### frequencyBodyAngularVelocityMagnitudeStd
This is the average measurement of the standard deviation in the magnitude of the body angular velocity, computed in the frequency domain.

### frequencyBodyAngularVelocityJerkMagnitudeMean
This is the average measurement of the standard deviation in the magnitude of the Jerk signal computed from the body angular velocity, computed in the frequency domain.

### frequencyBodyAngularVelocityJerkMagnitudeStd
This is the average measurement of the standard deviation in the magnitude of the Jerk signal computed from the body angular velocity, computed in the frequency domain.