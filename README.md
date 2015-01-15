# Class project for getdata-010: run_analysis.R

## How to Use This Script

This script should be run with your working directory set to the directory that contains the Samsung data. The script contains no functions, but rather will output the cleaned data set as a txt file called 'tidy\_data.txt' to your working directory after you type the command 'source("run\_analysis.R")'.

This script was written on a Mac, so if you have issues running the script on a Windows machine you may need to alter the file paths to files in internal folders in the code to contain backslashes instead of forward slashes.

Note that the data set is not kept in your global environment, so per CTA directions, instructions are also provided here on how to read the file back into R and view the data:

* data <- read.table(file_path, header = TRUE)
* View(data)

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
3. Uses descriptive activity names to name the activities in the data set as defined in activity_labels.txt.
4. Appropriately labels the data set with descriptive variable names from features.txt (with modification to some non-alpha characters to be legal column names in R). 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Further notes on how and why each step was performed can be found in the comments of run_analysis.R.

Also find in this directory CodeBook.md for definitions of the variables.