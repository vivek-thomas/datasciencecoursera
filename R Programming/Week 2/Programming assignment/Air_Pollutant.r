directory <- "C:/Users/Vivek/Documents/MyTraining/specdata"
pollutant <- "nitrate"
id <- 23
setwd("C:/Users/Vivek/Documents/MyTraining")
getwd()
source("pollutantmean.R")
n<-integer()
n<-pollutantmean(directory, pollutant, id)
round(n,digits=3)

