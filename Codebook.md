Codebook for the Tidy Dataset

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

The features selected for the tidy dataset are all accelerometer and gyroscope measurements from the original dataset that represented| mean and standard deviation. This included any measurement variable containing| mean(), std(), or| meanFreq() in the variable name. 

The resulting calculations are: 

mean of the| mean():| mean value
mean of the std(): Standard deviation
mean of the| meanFreq(): Weighted average of the frequency components to obtain a| mean frequency

The resulting tidy dataset is a data frame consisting of 180 observations of 81 variables (subject, activity, and 79 measurement| means), grouped and sorted by subject and activity. The table below provides the variable name, type, and value(s) for each variable.

VARIABLE                                             | TYPE   |VALUES
-----------------------------------------------------  ------  ------------------------------------------------------------------------
subject                                              | 	int   | 1 - 30
activity                                             | 	Factor| LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
mean_timebodyacceleration_meanx                      | 	num   | mean of timebodyacceleration_meanx
mean_timebodyacceleration_meany                      | 	num   | mean of timebodyacceleration_meany
mean_timebodyacceleration_meanz                      | 	num   | mean of timebodyacceleration_meanz
mean_timebodyacceleration_stdevx                     | 	num   | mean of timebodyacceleration_stdevx
mean_timebodyacceleration_stdevy                     | 	num   | mean of timebodyacceleration_stdevy
mean_timebodyacceleration_stdevz                     | 	num   | mean of timebodyacceleration_stdevz
mean_timegravityacceleration_meanx                   | 	num   | mean of timegravityacceleration_meanx
mean_timegravityacceleration_meany                   | 	num   | mean of timegravityacceleration_meany
mean_timegravityacceleration_meanz                   | 	num   | mean of timegravityacceleration_meanz
mean_timegravityacceleration_stdevx                  | 	num   | mean of timegravityacceleration_stdevx
mean_timegravityacceleration_stdevy                  | 	num   | mean of timegravityacceleration_stdevy
mean_timegravityacceleration_stdevz                  | 	num   | mean of timegravityacceleration_stdevz
mean_timebodyaccelerationjerk_meanx                  | 	num   | mean of timebodyaccelerationjerk_meanx
mean_timebodyaccelerationjerk_meany                  | 	num   | mean of timebodyaccelerationjerk_meany
mean_timebodyaccelerationjerk_meanz                  | 	num   | mean of timebodyaccelerationjerk_meanz
mean_timebodyaccelerationjerk_stdevx                 | 	num   | mean of timebodyaccelerationjerk_stdevx
mean_timebodyaccelerationjerk_stdevy                 | 	num   | mean of timebodyaccelerationjerk_stdevy
mean_timebodyaccelerationjerk_stdevz                 | 	num   | mean of timebodyaccelerationjerk_stdevz
mean_timebodygyroscope_meanx                         | 	num   | mean of timebodygyroscope_meanx
mean_timebodygyroscope_meany                         | 	num   | mean of timebodygyroscope_meany
mean_timebodygyroscope_meanz                         | 	num   | mean of timebodygyroscope_meanz
mean_timebodygyroscope_stdevx                        | 	num   | mean of timebodygyroscope_stdevx
mean_timebodygyroscope_stdevy                        | 	num   | mean of timebodygyroscope_stdevy
mean_timebodygyroscope_stdevz                        | 	num   | mean of timebodygyroscope_stdevz
mean_timebodygyroscopejerk_meanx                     | 	num   | mean of timebodygyroscopejerk_meanx
mean_timebodygyroscopejerk_meany                     | 	num   | mean of timebodygyroscopejerk_meany
mean_timebodygyroscopejerk_meanz                     | 	num   | mean of timebodygyroscopejerk_meanz
mean_timebodygyroscopejerk_stdevx                    | 	num   | mean of timebodygyroscopejerk_stdevx
mean_timebodygyroscopejerk_stdevy                    | 	num   | mean of timebodygyroscopejerk_stdevy
mean_timebodygyroscopejerk_stdevz                    | 	num   | mean of timebodygyroscopejerk_stdevz
mean_timebodyaccelerationmagnitude_mean              | 	num   | mean of timebodyaccelerationmagnitude_mean
mean_timebodyaccelerationmagnitude_stdev             | 	num   | mean of timebodyaccelerationmagnitude_stdev
mean_timegravityaccelerationmagnitude_mean           | 	num   | mean of timegravityaccelerationmagnitude_mean
mean_timegravityaccelerationmagnitude_stdev          | 	num   | mean of timegravityaccelerationmagnitude_stdev
mean_timebodyaccelerationjerkmagnitude_mean          | 	num   | mean of timebodyaccelerationjerkmagnitude_mean
mean_timebodyaccelerationjerkmagnitude_stdev         | 	num   | mean of timebodyaccelerationjerkmagnitude_stdev
mean_timebodygyroscopemagnitude_mean                 | 	num   | mean of timebodygyroscopemagnitude_mean
mean_timebodygyroscopemagnitude_stdev                | 	num   | mean of timebodygyroscopemagnitude_stdev
mean_timebodygyroscopejerkmagnitude_mean             | 	num   | mean of timebodygyroscopejerkmagnitude_mean
mean_timebodygyroscopejerkmagnitude_stdev            | 	num   | mean of timebodygyroscopejerkmagnitude_stdev
mean_freqbodyacceleration_meanx                      | 	num   | mean of freqbodyacceleration_meanx
mean_freqbodyacceleration_meany                      | 	num   | mean of freqbodyacceleration_meany
mean_freqbodyacceleration_meanz                      | 	num   | mean of freqbodyacceleration_meanz
mean_freqbodyacceleration_stdevx                     | 	num   | mean of freqbodyacceleration_stdevx
mean_freqbodyacceleration_stdevy                     | 	num   | mean of freqbodyacceleration_stdevy
mean_freqbodyacceleration_stdevz                     | 	num   | mean of freqbodyacceleration_stdevz
mean_freqbodyacceleration_meanfreqx                  | 	num   | mean of freqbodyacceleration_meanfreqx
mean_freqbodyacceleration_meanfreqy                  | 	num   | mean of freqbodyacceleration_meanfreqy
mean_freqbodyacceleration_meanfreqz                  | 	num   | mean of freqbodyacceleration_meanfreqz
mean_freqbodyaccelerationjerk_meanx                  | 	num   | mean of freqbodyaccelerationjerk_meanx
mean_freqbodyaccelerationjerk_meany                  | 	num   | mean of freqbodyaccelerationjerk_meany
mean_freqbodyaccelerationjerk_meanz                  | 	num   | mean of freqbodyaccelerationjerk_meanz
mean_freqbodyaccelerationjerk_stdevx                 | 	num   | mean of freqbodyaccelerationjerk_stdevx
mean_freqbodyaccelerationjerk_stdevy                 | 	num   | mean of freqbodyaccelerationjerk_stdevy
mean_freqbodyaccelerationjerk_stdevz                 | 	num   | mean of freqbodyaccelerationjerk_stdevz
mean_freqbodyaccelerationjerk_meanfreqx              | 	num   | mean of freqbodyaccelerationjerk_meanfreqx
mean_freqbodyaccelerationjerk_meanfreqy              | 	num   | mean of freqbodyaccelerationjerk_meanfreqy
mean_freqbodyaccelerationjerk_meanfreqz              | 	num   | mean of freqbodyaccelerationjerk_meanfreqz
mean_freqbodygyroscope_meanx                         | 	num   | mean of freqbodygyroscope_meanx
mean_freqbodygyroscope_meany                         | 	num   | mean of freqbodygyroscope_meany
mean_freqbodygyroscope_meanz                         | 	num   | mean of freqbodygyroscope_meanz
mean_freqbodygyroscope_stdevx                        | 	num   | mean of freqbodygyroscope_stdevx
mean_freqbodygyroscope_stdevy                        | 	num   | mean of freqbodygyroscope_stdevy
mean_freqbodygyroscope_stdevz                        | 	num   | mean of freqbodygyroscope_stdevz
mean_freqbodygyroscope_meanfreqx                     | 	num   | mean of freqbodygyroscope_meanfreqx
mean_freqbodygyroscope_meanfreqy                     | 	num   | mean of freqbodygyroscope_meanfreqy
mean_freqbodygyroscope_meanfreqz                     | 	num   | mean of freqbodygyroscope_meanfreqz
mean_freqbodyaccelerationmagnitude_mean              | 	num   | mean of freqbodyaccelerationmagnitude_mean
mean_freqbodyaccelerationmagnitude_stdev             | 	num   | mean of freqbodyaccelerationmagnitude_stdev
mean_freqbodyaccelerationmagnitude_meanfreq          | 	num   | mean of freqbodyaccelerationmagnitude_meanfreq
mean_freqbodybodyaccelerationjerkmagnitude_mean      | 	num   | mean of freqbodybodyaccelerationjerkmagnitude_mean
mean_freqbodybodyaccelerationjerkmagnitude_stdev     | 	num   | mean of freqbodybodyaccelerationjerkmagnitude_stdev
mean_freqbodybodyaccelerationjerkmagnitude_meanfreq  | 	num   | mean of freqbodybodyaccelerationjerkmagnitude_meanfreq
mean_freqbodybodygyroscopemagnitude_mean             | 	num   | mean of freqbodybodygyroscopemagnitude_mean
mean_freqbodybodygyroscopemagnitude_stdev            | 	num   | mean of freqbodybodygyroscopemagnitude_stdev
mean_freqbodybodygyroscopemagnitude_meanfreq         | 	num   | mean of freqbodybodygyroscopemagnitude_meanfreq
mean_freqbodybodygyroscopejerkmagnitude_mean         |  num   | mean of freqbodybodygyroscopejerkmagnitude_mean
mean_freqbodybodygyroscopejerkmagnitude_stdev        | 	num   | mean of freqbodybodygyroscopejerkmagnitude_stdev
mean_freqbodybodygyroscopejerkmagnitude_meanfreq     | 	num   | mean of freqbodybodygyroscopejerkmagnitude_meanfreq
