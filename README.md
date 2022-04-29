# CleaningDataAssignment
This repository is created to clean the data collected from the accelerometers and gyroscope 
of a smartphone, which they were wearing on the waist.
The smartphone used was __Samsung Galaxy S II__.




## __Data Collection__

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities __WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING__.
Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured, at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into __two sets__, where __70%__ of the volunteers was selected for generating the training data and __30%__ the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying __noise filters__ and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

A full description is available at the site where the data was obtained from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project can be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


## Data Description 
The Data consists of two parts test and train, the total number of observations is aroung 11000 with over 500 features.
X indicates the data collected from the smart watch and Y is the activity label. There are 30 subjects
and each of the subject were recorded for the activities above.
The faetures in the data were __normalized__ and bounded within [-1,1].
Each feature vector is a row on the text file.

## Project Description
The project is completed by using R language and R studio. The data was cleaned by following the following steps:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Tidy Data
The data set obtained after the analysis is a tidy data set and contains the average of every mean and standered deviation feature based on the activity
performed by a particular subject.
The tidy data set is present in the repo. 

## Code Description 
The code firstly reads all the test and training data from the downloaded file and loads the data to the respective variable.
The data sets are then merged with the help of the __merge function__ in the __dplyr package__.
The data did not contain any _NA_ values so there was no need to remove the incomplete data values.
The feature list is then sub setted and the required features including thier X values are stored in a new variable.
The descriptive activity label are the added based on the activity performed. 
The next step was to add the __subjects__ to the data set and use the group_by function to group the data based on the __activity label__ and the 
__subject__ whose data was recorded. The last and final step was to take the average of all the data features in the data set.
After the final step the __Tidy Data set__ was attained.


This was a breif explanation of the code, the detailed explaination is present in the Codebook.md file and the code for the above process
is present in run_analysis.R file.






