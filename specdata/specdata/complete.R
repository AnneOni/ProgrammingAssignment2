#RETURN COMPLETE CASES EXERCISE

complete <- function(directory, id = 1:332) {
  
  #assign the path to specdata
  #directory<-setwd("C:/Users/anne/Desktop/DataScienceFiles/specdata/specdata")
  directory<-getwd()
  "specdata"<-directory
  
  #lists the files in the directory
  all_files <- list.files(directory, full.names = TRUE) 
  
  #empty data frame were we will store the read from the loop
  compdf <- data.frame()  
  
  nobs = numeric()
  
  nobs = rep(0, length(id))
  k <- 1
  for (i in id) {
    compdf <- read.csv(all_files[i])
    nobs[k] <- sum(complete.cases(compdf))
    k <- k + 1
    
  }
  
  returnVal <- data.frame(id, nobs)
  returnVal
}
