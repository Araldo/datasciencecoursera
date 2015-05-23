---
title: "Readme.md"
author: "A. van de Kraats"
date: "Thursday, May 21, 2015"
---

##Run_analysis.R

Function that reads raw data from the accelerometers from the Samsung Galaxy S smartphone and generates a tidy dataset with mean and standard deviation of this data for each subject and activity.

How the function works:

Run_analyis() takes no arguments

It reads a table with all column names from "UCI HAR Dataset/features.txt" and subsequently removes the paranthesis, to get clean names.
With the grep function, a list of indices of the features list of features that are either a mean or a standard deviation is obtained.
This list is used for the colClass argument in read.table later on, to read only the relevant columns from the measurement data.

Read data from the files in the ./UCI HAR Dataset/test and ./UCI HAR Dataset/train directory:
first column is the subject id, second column is the activity id and the remaining columns are the measurement values, thereby selecting only the columns indicated as "numeric" in colClasses and skipping the rest. Column names from the features table are attached as well.
Both the test and the training set are read and row binded in the data variable.

The activity labels are read from "UCI HAR Dataset/activity_labels.txt" and the activity ids are renamed to descriptive labels.

De data is split in subject and activity groups.
The mean and standard deviation for each of these groups are calculated and added to the output data.frame row by row

Finally the output is writen to the file "gacd_project_dataset.txt"
