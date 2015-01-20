# Class project for getdata-010: run_analysis.R

## How to Use This Script

Using this script is very simple:

1. Set your working directory to the directory that contains the Samsung data. 
2. Type the command: source("run\_analysis.R")

That's it. After you source the script it will output the cleaned data set as a txt file called 'tidy\_data.txt' to your working directory.

Note that the data set is not kept in your global environment, so per CTA directions, instructions are also provided here on how to read the file back into R and view the data:

1. data <- read.table(file_path, header = TRUE)
2. View(data)

(see forum thread, https://class.coursera.org/getdata-010/forum/thread?thread_id=202#comment-553)

## About This Script

This script cleans data collected on means and standard deviations from accelerometers from the Samsung Galaxy S smartphone and puts it into a tidy data set suitable for downstream analysis.

The data set produced contains the mean for each variable collected for each subject and activity.

It meets the criteria for tidy data by arranging the data so that:

1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table.

It prepares the data in 5 steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement--as indicated by containing the word "mean" or "std" in the feature name.
3. Uses descriptive activity names to name the activities in the data set as defined from activity_labels.txt.
4. Appropriately labels the data set with descriptive variable names from features.txt (with modification to some non-alpha characters to be legal column names in R). 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The 'tidy\_data.txt' file is generated from the data set produced on Step 5.

An unrequired step that is not performed is to convert all the variable names to lower-case and remove all non-alpha characters from them. As this was not covered until Week 4 material (presumably not required to be covered until after this assignment was due) and I had already finished all the files, I chose not to redo them. I leave this only as a note to potential graders who may have worked ahead in the material, but forgotten this is not a required part of the assignment.

Further notes on how and why each step was performed can be found in the comments of run_analysis.R.

Also find in this directory CodeBook.md for definitions of the variables.