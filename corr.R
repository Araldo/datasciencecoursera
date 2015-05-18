corr <- function(directory, threshold = 0)
{
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'threshold' is a numeric vector of length 1 indicating the
    ## number of completely observed observations (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0
    
    ## Return a numeric vector of correlations
    ## NOTE: Do not round the result!
    comp<-complete(directory)
    output<-c()
    for(i in 1:length(comp$nobs))
    {
        if(comp$nobs[i]>=threshold)
        {
            p<-paste(directory, "/", sep = "")
            p<-paste(c(p, rep("0",3-nchar(i))), collapse="", sep = "")
            p<-paste(p, i, ".csv", sep = "")
            data<-read.csv(p)
            if(comp$nobs[i]>0)
            {
                correlation<-cor(data$sulfate, data$nitrate, use="complete.obs")
                output<-c(output, correlation)
            }
            else
                output<-c(output, NA)
        }
    }
    output
}