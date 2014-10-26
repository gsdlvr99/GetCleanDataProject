#Codebook for the Tidy Dataset

This file describes the variables of the tidy dataset. The processing used to create the tidy dataset is contained in ReadMe.MD.

##Data Source
The submitted tidy dataset is based on the Human Activity Recognition Using Smartphones Dataset, Version 1.0.
Site URL: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Data URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Acknowledgments 
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

##Data Description
The original dataset contains the results of experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


##Feature Selection

The features selected for the tidy dataset are all accelerometer and gyroscope measurements from the original dataset that represented  mean and standard deviation. This included any measurement variable containing  mean(), std(), or  meanFreq() in the variable name. 

The resulting calculations are: 

mean of the  mean():  mean value
mean of the std(): Standard deviation
mean of the  meanFreq(): Weighted average of the frequency components to obtain a  mean frequency

The resulting tidy dataset is a data frame consisting of 180 observations of 81 variables (subject, activity, and 79 measurement  means), grouped and sorted by subject and activity. The information below provides the variable type, name, and value(s) for each variable.

**INT**

	subject	-	1 - 30

**FACTOR**

	activity-	LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

**NUM**
Each of the following variables is the mean of its respective variable from the original dataset. For example, 	mean_timebodyacceleration_meanx is the mean of timebodyacceleration_meanx.


	mean_timebodyacceleration_meanx
	mean_timebodyacceleration_meany
	mean_timebodyacceleration_meanz
	mean_timebodyacceleration_stdevx
	mean_timebodyacceleration_stdevy
	mean_timebodyacceleration_stdevz
	mean_timegravityacceleration_meanx
	mean_timegravityacceleration_meany
	mean_timegravityacceleration_meanz
	mean_timegravityacceleration_stdevx
	mean_timegravityacceleration_stdevy
	mean_timegravityacceleration_stdevz
	mean_timebodyaccelerationjerk_meanx
	mean_timebodyaccelerationjerk_meany
	mean_timebodyaccelerationjerk_meanz
	mean_timebodyaccelerationjerk_stdevx
	mean_timebodyaccelerationjerk_stdevy
	mean_timebodyaccelerationjerk_stdevz
	mean_timebodygyroscope_meanx
	mean_timebodygyroscope_meany
	mean_timebodygyroscope_meanz
	mean_timebodygyroscope_stdevx
	mean_timebodygyroscope_stdevy
	mean_timebodygyroscope_stdevz
	mean_timebodygyroscopejerk_meanx
	mean_timebodygyroscopejerk_meany
	mean_timebodygyroscopejerk_meanz
	mean_timebodygyroscopejerk_stdevx
	mean_timebodygyroscopejerk_stdevy
	mean_timebodygyroscopejerk_stdevz
	mean_timebodyaccelerationmagnitude_mean
	mean_timebodyaccelerationmagnitude_stdev
	mean_timegravityaccelerationmagnitude_mean
	mean_timegravityaccelerationmagnitude_stdev
	mean_timebodyaccelerationjerkmagnitude_mean
	mean_timebodyaccelerationjerkmagnitude_stdev
	mean_timebodygyroscopemagnitude_mean
	mean_timebodygyroscopemagnitude_stdev
	mean_timebodygyroscopejerkmagnitude_mean
	mean_timebodygyroscopejerkmagnitude_stdev
	mean_freqbodyacceleration_meanx
	mean_freqbodyacceleration_meany
	mean_freqbodyacceleration_meanz
	mean_freqbodyacceleration_stdevx
	mean_freqbodyacceleration_stdevy
	mean_freqbodyacceleration_stdevz
	mean_freqbodyacceleration_meanfreqx
	mean_freqbodyacceleration_meanfreqy
	mean_freqbodyacceleration_meanfreqz
	mean_freqbodyaccelerationjerk_meanx
	mean_freqbodyaccelerationjerk_meany
	mean_freqbodyaccelerationjerk_meanz
	mean_freqbodyaccelerationjerk_stdevx
	mean_freqbodyaccelerationjerk_stdevy
	mean_freqbodyaccelerationjerk_stdevz
	mean_freqbodyaccelerationjerk_meanfreqx
	mean_freqbodyaccelerationjerk_meanfreqy
	mean_freqbodyaccelerationjerk_meanfreqz
	mean_freqbodygyroscope_meanx
	mean_freqbodygyroscope_meany
	mean_freqbodygyroscope_meanz
	mean_freqbodygyroscope_stdevx
	mean_freqbodygyroscope_stdevy
	mean_freqbodygyroscope_stdevz
	mean_freqbodygyroscope_meanfreqx
	mean_freqbodygyroscope_meanfreqy
	mean_freqbodygyroscope_meanfreqz
	mean_freqbodyaccelerationmagnitude_mean
	mean_freqbodyaccelerationmagnitude_stdev
	mean_freqbodyaccelerationmagnitude_meanfreq
	mean_freqbodybodyaccelerationjerkmagnitude_mean
	mean_freqbodybodyaccelerationjerkmagnitude_stdev
	mean_freqbodybodyaccelerationjerkmagnitude_meanfreq
	mean_freqbodybodygyroscopemagnitude_mean
	mean_freqbodybodygyroscopemagnitude_stdev
	mean_freqbodybodygyroscopemagnitude_meanfreq
	mean_freqbodybodygyroscopejerkmagnitude_mean
	mean_freqbodybodygyroscopejerkmagnitude_stdev
	mean_freqbodybodygyroscopejerkmagnitude_meanfreq
