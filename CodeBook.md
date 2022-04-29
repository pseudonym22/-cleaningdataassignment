# CodeBook
This book contains all the neccesary information about the variables and packages used for cleaning the data set provided for the project.
## Packages Used
The __dplyr__ package is used.
It gives access to a lot of very useful functions like __select, mutate, filter, merge__ and a lot more. In the __dplyr__ package we can
call the columns of a table directly without using _$_ operator

## Variables Used in the Analysis


On running the code, we start with getting the data from the file.
The various variables used are: 
- trainX: the training data containing all the X,   7352 obseervations with 561 variables  
- testX: the test data containing all the test X values, 2947 obesrvations with 561 variable
- trainY: it stores all the activity labels for the datastored in trainX
- testY: it stores all the activity labels for the testX data set
- trainsub, testsub: contains the data about the subjects from whom the data was recorded
- activities: a factor containing all activities performed by the subjects, 6 rows with one column
- features: character vector having all the names of the features in X, 561 elements


After performing the first step, the data sets are merged and the variables used are:
- merged_X: a data set of containing the trainX and testX merged, with 10299 observation of 561 variables
- subjects: a data set containing all the subject who performed the activity based on the X values, 10299 obs with 1 variable 
- labels: a data set have the merged activity labels of the test and training data sets, 10299 obs with 1 variable 



After the second, third and fourth step,the data in the merged_X data set is filtered to contain only the features with the mean and standered deviation.
- feat_mean: a character vector having the features with __"mean()"__ in them, 33 obs present 
- feat_std: a character vector having all the features with __std__ in them, 33 obs present
- feat_needed: a character vector, formed by merging feat_mean and feat_std, 66 obs present
- filtered_X: a data set containing all the X values for the features in the feat_needed vector, 10299 obs with 66 variables
- final_dataset: containg the output required for the step 4, it is same as filtered_X but with descriptive labels

## The Tidy Data Set

The final data set obtained by perfoming run_analysis is the tidy_dataset, is contain the mean of all the features in the final_dataset.
The tidy data set has __180 observaions__ with __66 variables__, each row containg the average of the features based on the activity performed by 
each subject. 
The tidy data set contains only the __mean()__ and __standered deviation__ features from the list of the 561 featurew.
