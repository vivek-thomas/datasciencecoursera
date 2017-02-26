directory <- "C:/Users/Vivek/Documents/MyTraining/specdata"
threshold <- 0
setwd("C:/Users/Vivek/Documents/MyTraining")
getwd()
source("complete.R")
source("corr.R")
n <- data.frame()
n <- corr(directory,threshold)
head(n)
summary(n)
