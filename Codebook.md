#Human Activity Recognition Using Smartphones Dataset
##Version 1.0
==================================================================
###Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
###DITEN - Università degli Studi di Genova.
###Via Opera Pia 11A, I-16145, Genoa, Italy.
####activityrecognition@smartlab.ws
####www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
(Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity 
at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly 
partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows 
of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, 
was separated using a Butter-worth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low 
frequency components, therefore a filter with 0.3 Hz cut-off frequency was used. From each window, a vector of features was obtained by 
calculating variables from the time and frequency domain.

==================================================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals 
(prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass 
Butter-worth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and 
gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butter-worth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag,
 tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the 561 variable feature vector.Features are normalized and bounded within [-1,1].


===================================================================

The Tidy data set that is returned by the run_analysis.R extracts a subset of the above mentioned measurements.
Variables which are mean and StandardDeviation of the measurements are included in the dataset.
Each record in the tidy dataset are average of each variable for each activity and each subject. 

===================================================================
###Following are the description of the column fields(variables) of the dataset.



####Subject_Id

* Variable Index = 1
* Class Of Variable = Integer
* Variable Details = Id of the Volunteer who carried out the experiment. 
* Range Of Values = 1 to 30

####Activity_Label

* Variable Index = 2
* Class Of Variable = Character
* Variable Details = Name of the  carried out the experiment. 
* Range Of Values =  WALKING , WALKING_UPSTAIRS , WALKING_DOWNSTAIRS , SITTING , STANDING , LAYING

####tBodyAccelerationMean_Xaxis

* Variable Index = 3
* Class Of Variable = Numeric
* Variable Details = Mean of Body Acceleration in time domain along X-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = 0.22159824394 to 0.3014610196

####tBodyAccelerationMean_Yaxis

* Variable Index = 4
* Class Of Variable = Numeric
* Variable Details = Mean of Body Acceleration in time domain along Y-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.040513953 to -0.00130828

####tBodyAccelerationMean_Zaxis

* Variable Index = 5
* Class Of Variable = Numeric
* Variable Details = Mean of Body Acceleration in time domain along Z-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.1525138995 to -0.075378468

####tGravityAccelerationMean_Xaxis

* Variable Index = 6
* Class Of Variable = Numeric
* Variable Details = Mean of Gravity Acceleration in time domain along X-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.680043155 to 0.974508732

####tGravityAccelerationMean_Yaxis

* Variable Index = 7
* Class Of Variable = Numeric
* Variable Details = Mean of Gravity Acceleration in time domain along Y-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.4798948429 to 0.956593814

####tGravityAccelerationMean_Zaxis

* Variable Index = 8
* Class Of Variable = Numeric
* Variable Details = Mean of Gravity Acceleration in time domain along Z-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.4950887203 to 0.9578730416

####tBodyAccelerationJerkMean_Xaxis

* Variable Index = 9
* Class Of Variable = Numeric
* Variable Details = Mean of Body Jerk Acceleration in time domain along X-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = 0.0426880986 to 0.1301930438

####tBodyAccelerationJerkMean_Yaxis

* Variable Index = 10
* Class Of Variable = Numeric
* Variable Details = Mean of Body Jerk Acceleration in time domain along Y-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.0386872111 to 0.0568185862

####tBodyAccelerationJerkMean_Zaxis


* Variable Index = 11
* Class Of Variable = Numeric
* Variable Details = Mean of Body Jerk Acceleration in time domain along Z-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.0674583919 to 0.038053359

####tBodyGyroMean_Xaxis

* Variable Index = 12
* Class Of Variable = Numeric
* Variable Details = Mean of Body angular velocity(data from gyroscope) in time domain along X-axis
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.2057754273 to 0.1927044759

####tBodyGyroMean_Yaxis

* Variable Index = 13
* Class Of Variable = Numeric
* Variable Details = Mean of Body angular velocity(data from gyroscope) in time domain along Y-axis
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.20420535608 to 0.02747075566

####tBodyGyroMean_Zaxis

* Variable Index = 14
* Class Of Variable = Numeric
* Variable Details = Mean of Body angular velocity(data from gyroscope) in time domain along Z-axis
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.07245460258 to 0.17910205824

####tBodyGyroJerkMean_Xaxis

* Variable Index = 15
* Class Of Variable = Numeric
* Variable Details = Mean of Body Jerk angular velocity(data from gyroscope) in time domain along X-axis
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.1572125391 to -0.022091626506

####tBodyGyroJerkMean_Yaxis

* Variable Index = 16
* Class Of Variable = Numeric
* Variable Details = Mean of Body Jerk angular velocity(data from gyroscope) in time domain along Y-axis
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.0768089915 to -0.0132022768

####tBodyGyroJerkMean_Zaxis

* Variable Index = 17
* Class Of Variable = Numeric
* Variable Details = Mean of Body Jerk angular velocity(data from gyroscope) in time domain along Z-axis
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.09249985313 to -0.0069406638


####tBodyAccelerationMagMean

* Variable Index = 18
* Class Of Variable = Numeric
* Variable Details = Mean of Magnitude of Body Acceleration in time domain
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.98649319666 to 0.6446043251

####tGravityAccelerationMagMean

* Variable Index = 19
* Class Of Variable = Numeric
* Variable Details = Mean of Magnitude of Gravity Acceleration in time domain
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.98649319666 to 0.64460432512

####tBodyAccelerationJerkMagMean

* Variable Index = 20
* Class Of Variable = Numeric
* Variable Details = Mean of Magnitude of Body Jerk Acceleration in time domain
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.992814715 to 0.4344904009

####tBodyGyroMagMean

* Variable Index = 21
* Class Of Variable = Numeric
* Variable Details = Mean of Magnitude of Body angular velocity(data from gyroscope) in time domain
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.9807408467 to 0.4180046086

####tBodyGyroJerkMagMean

* Variable Index = 22
* Class Of Variable = Numeric
* Variable Details = Mean of Magnitude of Body Jerk angular velocity(data from gyroscope) in time domain
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.9973225268 to 0.08758166182

####fBodyAccelerationMean_Xaxis

* Variable Index = 23
* Class Of Variable = Numeric
* Variable Details = Mean of Body Acceleration in frequency domain along X-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.99524993264 to 0.53701202205

####fBodyAccelerationMean_Yaxis

* Variable Index = 24
* Class Of Variable = Numeric
* Variable Details = Mean of Body Acceleration in frequency domain along Y-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.989034304 to 0.5241876868

####fBodyAccelerationMean_Zaxis

* Variable Index = 25
* Class Of Variable = Numeric
* Variable Details = Mean of Body Acceleration in frequency domain along Z-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.98947392666 to 0.28073595220


####fBodyAccelerationJerkMean_Xaxis

* Variable Index = 26
* Class Of Variable = Numeric
* Variable Details = Mean of Body Jerk Acceleration in frequency domain along X-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = 0.9946307973 to 0.47431725605

####fBodyAccelerationJerkMean_Yaxis

* Variable Index = 27
* Class Of Variable = Numeric
* Variable Details = Mean of Body Jerk Acceleration in frequency domain along Y-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.98939882391 to 0.2767168533

####fBodyAccelerationJerkMean_Zaxis

* Variable Index = 28
* Class Of Variable = Numeric
* Variable Details = Mean of Body Jerk Acceleration in frequency domain along Z-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.992018447 to 0.1577756923

####fBodyGyroMean_Xaxis

* Variable Index = 29
* Class Of Variable = Numeric
* Variable Details = Mean of Body angular velocity(data from gyroscope) in frequency domain along X-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.99312260884 to 0.474962448

####fBodyGyroMean_Yaxis

* Variable Index = 30
* Class Of Variable = Numeric
* Variable Details = Mean of Body angular velocity(data from gyroscope) in frequency domain along Y-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.994025488 to 0.32881701008

####fBodyGyroMean_Zaxis

* Variable Index = 31
* Class Of Variable = Numeric
* Variable Details = Mean of Body angular velocity(data from gyroscope) in frequency domain along Z-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.985957788 to 0.4924143798


####fBodyAccelerationMagMean

* Variable Index = 32
* Class Of Variable = Numeric
* Variable Details = Mean of Magnitude of Body Acceleration in frequency domain
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.9868006453 to 0.5866375507


####fBodyAccelerationJerkMagMean

* Variable Index = 33
* Class Of Variable = Numeric
* Variable Details = Mean of Magnitude of Body Jerk Acceleration in frequency domain
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.9939982757 to 0.53840484612

####fBodyGyroMagMean

* Variable Index = 34
* Class Of Variable = Numeric
* Variable Details = Mean of Magnitude of Body angular velocity(data from gyroscope) in frequency domain
* Variable Unit =  Hertz (Hz)
* Range Of Values = 0.986535242105 to 0.2039797648

####fBodyGyroJerkMagMean

* Variable Index = 35
* Class Of Variable = Numeric
* Variable Details = Mean of Magnitude of Body Jerk angular velocity(data from gyroscope) in frequency domain
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.997617389 to 0.1466185690


####tBodyAccelerationStd_Xaxis

* Variable Index = 36
* Class Of Variable = Numeric
* Variable Details = Standard Deviation of Body Acceleration in time domain along X-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.9960686353 to 0.62691707051

####tBodyAccelerationStd_Yaxis

* Variable Index = 37
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body Acceleration in time domain along Y-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.9902409466 to 0.6169370153

####tBodyAccelerationStd_Zaxis

* Variable Index = 38
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body Acceleration in time domain along Z-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.98765866230 to 0.609017879074

####tGravityAccelerationStd_Xaxis

* Variable Index = 39
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Gravity Acceleration in time domain along X-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.99676422738 to -0.8295549478

####tGravityAccelerationStd_Yaxis

* Variable Index = 40
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Gravity Acceleration in time domain along Y-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.9942476488 to -0.6435783614

####tGravityAccelerationStd_Zaxis

* Variable Index = 41
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Gravity Acceleration in time domain along Z-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.9909572495 to -0.610161166

####tBodyAccelerationJerkStd_Xaxis

* Variable Index = 42
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body Jerk Acceleration in time domain along X-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.9946045422 to 0.54427303730

####tBodyAccelerationJerkStd_Yaxis

* Variable Index = 43
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body Jerk Acceleration in time domain along Y-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.98951356565 to 0.35530671691

####tBodyAccelerationJerkStd_Zaxis


* Variable Index = 44
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body Jerk Acceleration in time domain along Z-axis
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.9932883133 to 0.0310157077

####tBodyGyroStd_Xaxis

* Variable Index = 45
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body angular velocity(data from gyroscope) in time domain along X-axis
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.9942765913 to 0.2676572193

####tBodyGyroStd_Yaxis

* Variable Index = 46
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body angular velocity(data from gyroscope) in time domain along Y-axis
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.99421047191 to 0.47651871444

####tBodyGyroStd_Zaxis

* Variable Index = 47
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body angular velocity(data from gyroscope) in time domain along Z-axis
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.985538363 to 0.5648758181

####tBodyGyroJerkStd_Xaxis

* Variable Index = 48
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body Jerk angular velocity(data from gyroscope) in time domain along X-axis
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.9965425405 to 0.1791486496

####tBodyGyroJerkStd_Yaxis

* Variable Index = 49
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body Jerk angular velocity(data from gyroscope) in time domain along Y-axis
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.997081575 to 0.2959459261

####tBodyGyroJerkStd_Zaxis

* Variable Index = 50
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body Jerk angular velocity(data from gyroscope) in time domain along Z-axis
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.995380794 to 0.193206498


####tBodyAccelerationMagStd

* Variable Index = 51
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Magnitude of Body Acceleration in time domain
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.986464542 to 0.4284059226

####tGravityAccelerationMagStd

* Variable Index = 52
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Magnitude of Gravity Acceleration in time domain
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.986464542 to 0.428405922

####tBodyAccelerationJerkMagStd

* Variable Index = 53
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Magnitude of Body Jerk Acceleration in time domain
* Variable Unit =  metre per second square(unit of g)
* Range Of Values = -0.994646916 to 0.450612065

####tBodyGyroMagStd

* Variable Index = 54
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Magnitude of Body angular velocity(data from gyroscope) in time domain
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.9813726756 to 0.2999759798

####tBodyGyroJerkMagStd

* Variable Index = 55
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Magnitude of Body Jerk angular velocity(data from gyroscope) in time domain
* Variable Unit =  rad per second(rad/s)
* Range Of Values = -0.9976660715 to 0.250173204

####fBodyAccelerationStd_Xaxis

* Variable Index = 56
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body Acceleration in frequency domain along X-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.9966045703 to 0.6585065433

####fBodyAccelerationStd_Yaxis

* Variable Index = 57
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body Acceleration in frequency domain along Y-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.990680395 to 0.560191344

####fBodyAccelerationStd_Zaxis

* Variable Index = 58
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body Acceleration in frequency domain along Z-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.9872248043 to 0.6871241637


####fBodyAccelerationJerkStd_Xaxis

* Variable Index = 59
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body Jerk Acceleration in frequency domain along X-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.9950737592 to 0.4768038874

####fBodyAccelerationJerkStd_Yaxis

* Variable Index = 60
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body Jerk Acceleration in frequency domain along Y-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.9904680827 to 0.34977128541

####fBodyAccelerationJerkStd_Zaxis

* Variable Index = 61
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body Jerk Acceleration in frequency domain along Z-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.993107759855 to -0.0062364752

####fBodyGyroStd_Xaxis

* Variable Index = 62
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body angular velocity(data from gyroscope) in frequency domain along X-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.994652185 to 0.1966132866

####fBodyGyroStd_Yaxis

* Variable Index = 63
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body angular velocity(data from gyroscope) in frequency domain along Y-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.9943530865 to 0.646233637

####fBodyGyroStd_Zaxis

* Variable Index = 64
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Body angular velocity(data from gyroscope) in frequency domain along Z-axis
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.98672527487 to 0.52245421631


####fBodyAccelerationMagStd

* Variable Index = 65
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Magnitude of Body Acceleration in frequency domain
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.987648484 to 0.1786845808


####fBodyAccelerationJerkMagStd

* Variable Index = 66
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Magnitude of Body Jerk Acceleration in frequency domain
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.9943666676 to 0.3163464153

####fBodyGyroMagStd

* Variable Index = 67
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Magnitude of Body angular velocity(data from gyroscope) in frequency domain
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.98146884169 to 0.23665966249

####fBodyGyroJerkMagStd

* Variable Index = 68
* Class Of Variable = Numeric
* Variable Details = Standard deviation of Magnitude of Body Jerk angular velocity(data from gyroscope) in frequency domain
* Variable Unit =  Hertz (Hz)
* Range Of Values = -0.9975852305 to 0.28783461609

========================================================================