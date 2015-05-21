run_analysis <- function()
{
    #Function that reads raw data from the accelerometers from the Samsung Galaxy S smartphone and generates a tidy dataset with mean and standard deviation of this data
    #for each subject and activity.
    
    library("dplyr")
    nrows<- -1 #for debugging, set to 1 to read only a subsection of the files and speed up code development. Else set to -1

    #read table with all column names
    features<-read.table("UCI HAR Dataset/features.txt")[,2]
    
    #get a list of indices of the features list of features that are either a mean or a standard deviation
    selectedIndices <- c(grep("std", features), grep("mean", features))
    
    #initialize colClasses with "NULL" (these will be skipped when the data is read in the next step) and overwrite with "numeric" for
    #the selected indices
    colClasses <- rep.int("NULL", length(features))
    for (i in 1:length(selectedIndices))
        colClasses[selectedIndices[i]] <- "numeric"
    
    #read data from the files in the ./UCI HAR Dataset directory: 
    #first column is the subject id, second column is the activity id and the remaining columns are the measurement value, thereby 
    #selecting only the columns indicated as "numeric" in colClasses and skipping the rest. Column names from the features table are
    #attached as well.
    #Both the test and the training set are read and row binded. 
    data<-
        rbind(
            cbind(
                data.frame(subject=unlist(read.table("UCI HAR Dataset/train/subject_train.txt", nrows=nrows), use.names=FALSE)), 
                data.frame(activity=unlist(read.table("UCI HAR Dataset/train/y_train.txt", nrows=nrows), use.names=FALSE)),
                data.frame(read.table("UCI HAR Dataset/train/X_train.txt", nrows=nrows, colClasses=colClasses, col.names=features))
            ),
            cbind(
                data.frame(subject=unlist(read.table("UCI HAR Dataset/test/subject_test.txt", nrows=nrows), use.names=FALSE)), 
                data.frame(activity=unlist(read.table("UCI HAR Dataset/test/y_test.txt", nrows=nrows), use.names=FALSE)),
                data.frame(read.table("UCI HAR Dataset/test/X_test.txt", nrows=nrows, colClasses=colClasses, col.names=features))
            )
        )
    
    #read the activity labels and rename the levels 1 to 6 to descriptive labels
    activities<-read.table("UCI HAR Dataset/activity_labels.txt")
    data<-mutate(data, activity=activities[activity,2])

    #split the data in subject and activity groups
    data<-split(data,list(data$subject, data$activity))

    #initialize output as a data.frame
    output<-data.frame()
    
    #calculate mean and standard deviation for the groups split above and join them in the output data.frame
    for(i in 1:length(data))
        output<-rbind(output, cbind(data[i][[1]][1,1:2], lapply(data[i][[1]][3:length(data[[1]])],mean)))
    
    #write the results to a file
    write.table(output,"gacd_project_dataset.txt", row.names=FALSE)
}