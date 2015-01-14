# Class project for getdata-010: run_analysis.R

*NOTE: This script should be run with your working directory set to the directory that contains the Samsung data. The script contains no functions, but rather will place a tbl\_df named tbl in your global environment after you source it.*

This script cleans data collected on means and standard deviations from accelerometers from the Samsung Galaxy S smartphone and puts it into a tidy data set suitable for downstream analysis.

The data set produced contains the mean for each variable for each subject and activity in a tbl\_df named *tbl*.

It meets the criteria for tidy data by arranging the data so that:

1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table.

It prepares the data in 5 steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement--as indicated by containing the word "mean" or "std" in the feature name.
3. Uses descriptive activity names to name the activities in the data set as defined in activity_labels.txt.
4. Appropriately labels the data set with descriptive variable names from features.txt (with modification to some symbols to be legal column names in R). 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject named *tbl*.

Further notes on how and why each step was performed can be found in the comments of run_analysis.R.

Also find in this directory CodeBook.md for definitions of the variables.