directory <- "C:/Users/Vivek/Documents/MyTraining/specdata"
id <- 20:24
setwd("C:/Users/Vivek/Documents/MyTraining")
getwd()
source("pollutantmean.R")
n <- data.frame()
for (i in id)
{
n <- complete(directory,id)
}
n

