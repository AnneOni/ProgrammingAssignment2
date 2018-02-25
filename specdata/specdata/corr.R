corr <- function(directory, threshold = 0) {
  
  #assign the path to specdata
  directory<-getwd()
  #directory<-setwd("C:/Users/anne/Desktop/DataScienceFiles/specdata/specdata")
  "specdata"<-directory
  
  corDf = complete(directory)
  ids = corDf[corDf["nobs"] > threshold, ]$id
  corrNum = numeric()
  for (i in ids) {
    
    newRead = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
                             ".csv", sep = ""))
    corDf2 = newRead[complete.cases(newRead), ]
    corrNum = c(corrNum, cor(corDf2$sulfate, corDf2$nitrate))
  }
  return(corrNum)
}
