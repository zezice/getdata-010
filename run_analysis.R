## Load libraries

library(dplyr)

## Read data files in as tbl_df's

subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")
X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
features <- read.table("./features.txt", stringsAsFactors=FALSE)
activities <- read.table("./activity_labels.txt")

## Step 1: Merge test and train data into one data set

test <- cbind(subject_test, y_test, X_test)
train <- cbind(subject_train, y_train, X_train)
mergedDF <- tbl_df(rbind(test,train))

## Step 4: Label data set with descriptive variable names
## NOTE: This step done out of order to simplify column selection later
## Column "Subject" from subject_test.txt/subject_train.txt
## Column "Activity" from y_test.txt/y_train.text
## Features column labels from from features.txt

names <- make.names(c("Subject","Activity",features[,2]), unique=TRUE)
colnames(mergedDF) <- names

## Step 2: Extracts only mean and standard deviation measurements.
## Regular expressions used to select all variables named with "mean" or "std"
## The last two lines clean up column name formatting

mergedDF <- select(mergedDF, Subject, Activity, matches("(mean|std)"))
colnames(mergedDF) <- sub("\\.\\.\\.|\\.\\.",".",colnames(mergedDF))
colnames(mergedDF) <- sub("\\.$","",colnames(mergedDF))

## Step 3: Add descriptive names to the activities in the data set
## Uses activity_labels.txt to convert Activity column to named factors

mergedDF$Activity <- factor(mergedDF$Activity, labels = activities[,2])

## Step 5: Data set with average of each variable for each subject and activity
## Uses dplyr chaining and summarise_each to create a tbl_df of averages

tbl <- mergedDF %>% 
group_by(Subject, Activity) %>%
summarise_each(funs(mean))

## Write file to table

write.table(tbl, file="tidy_data.txt", row.names=FALSE)

## Cleanup: Remove unnecessary variables

rm(subject_test,
   subject_train,
   X_test,
   y_test,
   X_train,
   y_train,
   features,
   activities,
   test,
   train,
   names,
   mergedDF,
   tbl)