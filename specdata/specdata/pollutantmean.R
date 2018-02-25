#CALCULATE MEAN OF POLLUTANT ACROSS FILES EXERCISE

pollutantmean <- function(directory, pollutant, id = 1:332,removeNA=TRUE) {
  
  #assign the path to specdata
  
  #directory<-setwd("C:/Users/anne/Desktop/DataScienceFiles/specdata/specdata")
  directory<-getwd()
  "specdata"<-directory
  
  
  #get list of files 
  all_files = list.files(directory)
  
  #extract file names and store as numeric
  file.names = as.numeric(sub("\\.csv$","",all_files))
  
  #setup file selection
  selected.files = all_files[match(id,file.names)]
  
  #import data
  polDat = lapply(file.path(directory,selected.files),read.csv)
  
  #convert into data frame
  polDat = do.call(rbind.data.frame,polDat)
  
  #calculate mean
  mean(polDat[,pollutant],na.rm=TRUE)
}
