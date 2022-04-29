#loading the required packages 
library(dplyr)


#Reading the test and training data 
#The data has two sets training and test sets
#Reading the test datasets
testX <- read.table("test/X_test.txt")
testY<- read.table("test/y_test.txt")

#Reading the training data sets
trainX <- read.table("train/X_train.txt")
trainY <- read.table("train/y_train.txt")

#Reading the activity labels
activities <- read.table("activity_labels.txt")
activities <- select(activities,V2)

#Reading the feature names
features <- read.table("features.txt")
features <- features[,2]
features <- as.character(features)

#Reading the subject data
trainsub <- read.table("train/subject_train.txt")
testsub <- read.table("test/subject_test.txt")

#Step1
#Merging the test and train data sets
merged_X <- rbind(trainX,testX)
labels <- rbind(trainY,testY)
subjects <- rbind(trainsub,testsub)

# all the datasets have been merged
#assigning the feature names to the merged training and test data sets
names(merged_X) = features
names(subjects) = "subjects"
names(labels) = "labels"

#Step2
#Now, only the measurements on the mean and standered deviation are extracted
feat_mean <- features[grep("mean()",features,fixed = TRUE)]
feat_std <- features[grep("std()",features)]
feat_needed <- c(feat_mean,feat_std)
filtered_X <- merged_X[,names(merged_X) %in% feat_needed]

#Step3 and Step4
#Using descriptive names to names the activities in the data set
filtered_X <- cbind(labels,filtered_X)
filtered_X$labels <- as.factor(filtered_X$labels)
levels(filtered_X$labels) = activities[,1]
final_dataset <- filtered_X

#Step5
#tidy data set with the average of the the values of X based on the subject
tidy_dataset <- cbind(subjects,final_dataset)
tidy_dataset <- group_by(tidy_dataset,subjects,labels)
tidy_dataset <- summarise_each(tidy_dataset,funs = mean)
write.table(tidy_dataset,file = "tidydataset.txt",row.names = FALSE,col.names = TRUE)