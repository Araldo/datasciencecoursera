complete <- function(directory, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return a data frame of the form:
    ## id nobs
    ## 1  117
    ## 2  1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases

    output<-data.frame(id=id, nobs=0)
    for(i in id)
    {
        p<-paste(directory, "/", sep = "")
        p<-paste(c(p, rep("0",3-nchar(i))), collapse="", sep = "")
        p<-paste(p, i, ".csv", sep = "")
        data<-read.csv(p)
        output$nobs[id==i]<-sum(complete.cases(data))
    }
    output
}