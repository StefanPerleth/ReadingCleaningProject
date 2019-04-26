Feature Selection

=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix &#39;t&#39; to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the &#39;f&#39; to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:

&#39;-XYZ&#39; is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were estimated from these signals are:

mean(): Mean value

std(): Standard deviation

mad(): Median absolute deviation

max(): Largest value in array

min(): Smallest value in array

sma(): Signal magnitude area

energy(): Energy measure. Sum of the squares divided by the number of values.

iqr(): Interquartile range

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal

kurtosis(): kurtosis of the frequency domain signal

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean

tBodyAccMean

tBodyAccJerkMean

tBodyGyroMean

tBodyGyroJerkMean

The complete list of variables of each feature vector is available in &#39;features.txt&#39;

Variables created by the code in run\_analysis.R

| Variable | Label | Values | Unit |
| --- | --- | --- | --- | --- | --- | --- |
| id | Person ID |   |   |
| activity | Activity | WALKING |   |
|   |   | WALKING\_UPSTAIRS |   |
|   |   | WALKING\_DOWNSTAIRS |   |
|   |   | SITTING |   |
|   |   | STANDING |   |
|   |   | LAYING |   |
| Time\_BodyAcc\_mean\_AxisX | Mean of the Mean of Body Accelerometer Measurements on Axis X over all Timeperiods |   | Hz |
| Time\_BodyAcc\_mean\_AxisY | Mean of the Mean of Body Accelerometer Measurements on Axis Y over all Timeperiods |   | Hz |
| Time\_BodyAcc\_mean\_AxisZ | Mean of the Mean of Body Accelerometer Measurements on Axis Z over all Timeperiods |   | Hz |
| Time\_GravityAcc\_mean\_AxisX | Mean of the Mean of Gravity Accelerometer Measurements on Axis X over all Timeperiods |   | Hz |
| Time\_GravityAcc\_mean\_AxisY | Mean of the Mean of Gravity Accelerometer Measurements on Axis Y over all Timeperiods |   | Hz |
| Time\_GravityAcc\_mean\_AxisZ | Mean of the Mean of Gravity Accelerometer Measurements on Axis Z over all Timeperiods |   | Hz |
| Time\_BodyAccJerk\_mean\_AxisX | Mean of the Mean of Body Accelerometer Jerk Signals on Axis X over all Timeperiods |   | Hz |
| Time\_BodyAccJerk\_mean\_AxisY | Mean of the Mean of Body Accelerometer Jerk Signals on Axis Y over all Timeperiods |   | Hz |
| Time\_BodyAccJerk\_mean\_AxisZ | Mean of the Mean of Body Accelerometer Jerk Signals on Axis Z over all Timeperiods |   | Hz |
| Time\_BodyGyro\_mean\_AxisX | Mean of the Mean of Body Gyroscope Measurements on Axis X over all Timeperiods |   | Hz |
| Time\_BodyGyro\_mean\_AxisY | Mean of the Mean of Body Gyroscope Measurements on Axis Y over all Timeperiods |   | Hz |
| Time\_BodyGyro\_mean\_AxisZ | Mean of the Mean of Body Gyroscope Measurements on Axis Z over all Timeperiods |   | Hz |
| Time\_BodyGyroJerk\_mean\_AxisX | Mean of the Mean of Body Gyroscope Jerk Signals on Axis X over all Timeperiods |   | Hz |
| Time\_BodyGyroJerk\_mean\_AxisY | Mean of the Mean of Body Gyroscope Jerk Signals on Axis Y over all Timeperiods |   | Hz |
| Time\_BodyGyroJerk\_mean\_AxisZ | Mean of the Mean of Body Gyroscope Jerk Signals on Axis Z over all Timeperiods |   | Hz |
| Time\_BodyAccMag\_mean | Mean of the Mean of Body Accelerometer Measurements Magnitude over all Timeperiods |   | Hz |
| Time\_GravityAccMag\_mean | Mean of the Mean of Gravity Accelerometer Measurements Magnitude over all Timeperiods |   | HZ |
| Time\_BodyAccJerkMag\_mean | Mean of the Mean of Body Accelerometer Jerk Signals Magnitude over all Timeperiods |   | Hz |
| Time\_BodyGyroMag\_mean | Mean of the Mean of Body Gyroscope MeasurementsMagnitude over all Timeperiods |   | Hz |
| Time\_BodyGyroJerkMag\_mean | Mean of the Mean of Body Gyroscope Jerk Signals Magnitude over all Timeperiods |   | Hz |
| FFT\_BodyAcc\_mean\_AxisX | Mean of the Fast Fourier Transformations Mean of Body Accelerometer Measurements on Axis X over all Timeperiods |   | Hz |
| FFT\_BodyAcc\_mean\_AxisY | Mean of the Fast Fourier Transformations Mean of Body Accelerometer Measurements on Axis Y over all Timeperiods |   | Hz |
| FFT\_BodyAcc\_mean\_AxisZ | Mean of the Fast Fourier Transformations Mean of Body Accelerometer Measurements on Axis Z over all Timeperiods |   | Hz |
| FFT\_BodyAccJerk\_mean\_AxisX | Mean of the Fast Fourier Transformations Mean of Body Accelerometer Jerk Signals on Axis X over all Timeperiods |   | Hz |
| FFT\_BodyAccJerk\_mean\_AxisY | Mean of the Fast Fourier Transformations Mean of Body Accelerometer Jerk Signals on Axis Y over all Timeperiods |   | Hz |
| FFT\_BodyAccJerk\_mean\_AxisZ | Mean of the Fast Fourier Transformations Mean of Body Accelerometer Jerk Signals on Axis Z over all Timeperiods |   | Hz |
| FFT\_BodyGyro\_mean\_AxisX | Mean of the Fast Fourier Transformations Mean of Body Gyroscope Measurements on Axis X over all Timeperiods |   | Hz |
| FFT\_BodyGyro\_mean\_AxisY | Mean of the Fast Fourier Transformations Mean of Body Gyroscope Measurements on Axis Y over all Timeperiods |   | Hz |
| FFT\_BodyGyro\_mean\_AxisZ | Mean of the Fast Fourier Transformations Mean of Body Gyroscope Measurements on Axis Z over all Timeperiods |   | Hz |
| FFT\_BodyAccMag\_mean | Mean of the Fast Fourier Transformations Mean of Body Accelerometer Measurements Magnitude over all Timeperiods |   | Hz |
| FFT\_BodyBodyAccJerkMag\_mean | Mean of the Fast Fourier Transformations Mean of Body Body Accelerometer Jerk Signals Magnitude over all Timeperiods |   | Hz |
| FFT\_BodyBodyGyroMag\_mean | Mean of the Fast Fourier Transformations Mean of Body Body Gyroscope MeasurementsMagnitude over all Timeperiods |   | Hz |
| FFT\_BodyBodyGyroJerkMag\_mean | Mean of the Fast Fourier Transformations Mean of Body Body Gyroscope Jerk Signals Magnitude over all Timeperiods |   | Hz |
| Time\_BodyAcc AxisX | Mean of the Standard Deviation of Body Accelerometer Measurements on Axis X over all Timeperiods |   | Hz |
| Time\_BodyAcc AxisY | Mean of the Standard Deviation of Body Accelerometer Measurements on Axis Y over all Timeperiods |   | Hz |
| Time\_BodyAcc AxisZ | Mean of the Standard Deviation of Body Accelerometer Measurements on Axis Z over all Timeperiods |   | Hz |
| Time\_GravityAcc AxisX | Mean of the Standard Deviation of Gravity Accelerometer Measurements on Axis X over all Timeperiods |   | Hz |
| Time\_GravityAcc AxisY | Mean of the Standard Deviation of Gravity Accelerometer Measurements on Axis Y over all Timeperiods |   | Hz |
| Time\_GravityAcc AxisZ | Mean of the Standard Deviation of Gravity Accelerometer Measurements on Axis Z over all Timeperiods |   | Hz |
| Time\_BodyAccJerk AxisX | Mean of the Standard Deviation of Body Accelerometer Jerk Signals on Axis X over all Timeperiods |   | Hz |
| Time\_BodyAccJerk AxisY | Mean of the Standard Deviation of Body Accelerometer Jerk Signals on Axis Y over all Timeperiods |   | Hz |
| Time\_BodyAccJerk AxisZ | Mean of the Standard Deviation of Body Accelerometer Jerk Signals on Axis Z over all Timeperiods |   | Hz |
| Time\_BodyGyro AxisX | Mean of the Standard Deviation of Body Gyroscope Measurements on Axis X over all Timeperiods |   | Hz |
| Time\_BodyGyro AxisY | Mean of the Standard Deviation of Body Gyroscope Measurements on Axis Y over all Timeperiods |   | Hz |
| Time\_BodyGyro AxisZ | Mean of the Standard Deviation of Body Gyroscope Measurements on Axis Z over all Timeperiods |   | Hz |
| Time\_BodyGyroJerk AxisX | Mean of the Standard Deviation of Body Gyroscope Jerk Signals on Axis X over all Timeperiods |   | Hz |
| Time\_BodyGyroJerk AxisY | Mean of the Standard Deviation of Body Gyroscope Jerk Signals on Axis Y over all Timeperiods |   | Hz |
| Time\_BodyGyroJerk AxisZ | Mean of the Standard Deviation of Body Gyroscope Jerk Signals on Axis Z over all Timeperiods |   | Hz |
| Time\_BodyAccMag\_std | Mean of the Standard Deviation of Body Accelerometer Measurements Magnitude  over all Timeperiods |   | Hz |
| Time\_GravityAccMag\_std | Mean of the Standard Deviation of Gravity Accelerometer Measurements Magnitude  over all Timeperiods |   | Hz |
| Time\_BodyAccJerkMag\_std | Mean of the Standard Deviation of Body Accelerometer Jerk Signals Magnitude  over all Timeperiods |   | Hz |
| Time\_BodyGyroMag\_std | Mean of the Standard Deviation of Body Gyroscope MeasurementsMagnitude  over all Timeperiods |   | Hz |
| Time\_BodyGyroJerkMag\_std | Mean of the Standard Deviation of Body Gyroscope Jerk Signals Magnitude  over all Timeperiods |   | Hz |
| FFT\_BodyAcc AxisX | Mean of the Fast Fourier Transformations Standard Deviation of Body Accelerometer Measurements on Axis X over all Timeperiods | Hz |
| FFT\_BodyAcc AxisY | Mean of the Fast Fourier Transformations Standard Deviation of Body Accelerometer Measurements on Axis Y over all Timeperiods |   | Hz |
| FFT\_BodyAcc AxisZ | Mean of the Fast Fourier Transformations Standard Deviation of Body Accelerometer Measurements on Axis Z over all Timeperiods |   | Hz |
| FFT\_BodyAccJerk AxisX | Mean of the Fast Fourier Transformations Standard Deviation of Body Accelerometer Jerk Signals on Axis X over all Timeperiods |   | Hz |
| FFT\_BodyAccJerk AxisY | Mean of the Fast Fourier Transformations Standard Deviation of Body Accelerometer Jerk Signals on Axis Y over all Timeperiods |   | Hz |
| FFT\_BodyAccJerk AxisZ | Mean of the Fast Fourier Transformations Standard Deviation of Body Accelerometer Jerk Signals on Axis Z over all Timeperiods |   | Hz |
| FFT\_BodyGyro AxisX | Mean of the Fast Fourier Transformations Standard Deviation of Body Gyroscope Measurements on Axis X over all Timeperiods |   | Hz |
| FFT\_BodyGyro AxisY | Mean of the Fast Fourier Transformations Standard Deviation of Body Gyroscope Measurements on Axis Y over all Timeperiods |   | Hz |
| FFT\_BodyGyro AxisZ | Mean of the Fast Fourier Transformations Standard Deviation of Body Gyroscope Measurements on Axis Z over all Timeperiods |   | Hz |
| FFT\_BodyAccMag\_std | Mean of the Fast Fourier Transformations Standard Deviation of Body Accelerometer Measurements Magnitude  over all Timeperiods |   | Hz |
| FFT\_BodyBodyAccJerkMag\_std | Mean of the Fast Fourier Transformations Standard Deviation of Body Body Accelerometer Jerk Signals Magnitude  over all Timeperiods |   | Hz |
| FFT\_BodyBodyGyroMag\_std | Mean of the Fast Fourier Transformations Standard Deviation of Body Body Gyroscope MeasurementsMagnitude  over all Timeperiods |   | Hz |
| FFT\_BodyBodyGyroJerkMag\_std | Mean of the Fast Fourier Transformations Standard Deviation of Body Body Gyroscope Jerk Signals Magnitude  over all Timeperiods |   | Hz |