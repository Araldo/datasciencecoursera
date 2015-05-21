---
title: "Codebook.md"
author: "A. van de Kraats"
date: "Thursday, May 21, 2015"
---

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:<br>
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ<br>
tGravityAcc-XYZ<br>
tBodyAccJerk-XYZ<br>
tBodyGyro-XYZ<br>
tBodyGyroJerk-XYZ<br>
tBodyAccMag<br>
tGravityAccMag<br>
tBodyAccJerkMag<br>
tBodyGyroMag<br>
tBodyGyroJerkMag<br>
fBodyAcc-XYZ<br>
fBodyAccJerk-XYZ<br>
fBodyGyro-XYZ<br>
fBodyAccMag<br>
fBodyAccJerkMag<br>
fBodyGyroMag<br>
fBodyGyroJerkMag<br>

Only the mean and std variables that were estimated from these signals are included in this subset: 

mean(): Mean value<br>
std(): Standard deviation

In the tidy dataset provided the mean for each of these variables is given for every subject and activity.

The complete list of variables of each feature vector is below:

"1" "subject"<br>
"2" "activity"<br>
"3" "tBodyAcc.mean...X"<br>
"4" "tBodyAcc.mean...Y"<br>
"5" "tBodyAcc.mean...Z"<br>
"6" "tBodyAcc.std...X"<br>
"7" "tBodyAcc.std...Y"<br>
"8" "tBodyAcc.std...Z"<br>
"9" "tGravityAcc.mean...X"<br>
"10" "tGravityAcc.mean...Y"<br>
"11" "tGravityAcc.mean...Z"<br>
"12" "tGravityAcc.std...X"<br>
"13" "tGravityAcc.std...Y"<br>
"14" "tGravityAcc.std...Z"<br>
"15" "tBodyAccJerk.mean...X"<br>
"16" "tBodyAccJerk.mean...Y"<br>
"17" "tBodyAccJerk.mean...Z"<br>
"18" "tBodyAccJerk.std...X"<br>
"19" "tBodyAccJerk.std...Y"<br>
"20" "tBodyAccJerk.std...Z"<br>
"21" "tBodyGyro.mean...X"<br>
"22" "tBodyGyro.mean...Y"<br>
"23" "tBodyGyro.mean...Z"<br>
"24" "tBodyGyro.std...X"<br>
"25" "tBodyGyro.std...Y"<br>
"26" "tBodyGyro.std...Z"<br>
"27" "tBodyGyroJerk.mean...X"<br>
"28" "tBodyGyroJerk.mean...Y"<br>
"29" "tBodyGyroJerk.mean...Z"<br>
"30" "tBodyGyroJerk.std...X"<br>
"31" "tBodyGyroJerk.std...Y"<br>
"32" "tBodyGyroJerk.std...Z"<br>
"33" "tBodyAccMag.mean.."<br>
"34" "tBodyAccMag.std.."<br>
"35" "tGravityAccMag.mean.."<br>
"36" "tGravityAccMag.std.."<br>
"37" "tBodyAccJerkMag.mean.."<br>
"38" "tBodyAccJerkMag.std.."<br>
"39" "tBodyGyroMag.mean.."<br>
"40" "tBodyGyroMag.std.."<br>
"41" "tBodyGyroJerkMag.mean.."<br>
"42" "tBodyGyroJerkMag.std.."<br>
"43" "fBodyAcc.mean...X"<br>
"44" "fBodyAcc.mean...Y"<br>
"45" "fBodyAcc.mean...Z"<br>
"46" "fBodyAcc.std...X"<br>
"47" "fBodyAcc.std...Y"<br>
"48" "fBodyAcc.std...Z"<br>
"49" "fBodyAcc.meanFreq...X"<br>
"50" "fBodyAcc.meanFreq...Y"<br>
"51" "fBodyAcc.meanFreq...Z"<br>
"52" "fBodyAccJerk.mean...X"<br>
"53" "fBodyAccJerk.mean...Y"<br>
"54" "fBodyAccJerk.mean...Z"<br>
"55" "fBodyAccJerk.std...X"<br>
"56" "fBodyAccJerk.std...Y"<br>
"57" "fBodyAccJerk.std...Z"<br>
"58" "fBodyAccJerk.meanFreq...X"<br>
"59" "fBodyAccJerk.meanFreq...Y"<br>
"60" "fBodyAccJerk.meanFreq...Z"<br>
"61" "fBodyGyro.mean...X"<br>
"62" "fBodyGyro.mean...Y"<br>
"63" "fBodyGyro.mean...Z"<br>
"64" "fBodyGyro.std...X"<br>
"65" "fBodyGyro.std...Y"<br>
"66" "fBodyGyro.std...Z"<br>
"67" "fBodyGyro.meanFreq...X"<br>
"68" "fBodyGyro.meanFreq...Y"<br>
"69" "fBodyGyro.meanFreq...Z"<br>
"70" "fBodyAccMag.mean.."<br>
"71" "fBodyAccMag.std.."<br>
"72" "fBodyAccMag.meanFreq.."<br>
"73" "fBodyBodyAccJerkMag.mean.."<br>
"74" "fBodyBodyAccJerkMag.std.."<br>
"75" "fBodyBodyAccJerkMag.meanFreq.."<br>
"76" "fBodyBodyGyroMag.mean.."<br>
"77" "fBodyBodyGyroMag.std.."<br>
"78" "fBodyBodyGyroMag.meanFreq.."<br>
"79" "fBodyBodyGyroJerkMag.mean.."<br>
"80" "fBodyBodyGyroJerkMag.std.."<br>
"81" "fBodyBodyGyroJerkMag.meanFreq.."<br>
