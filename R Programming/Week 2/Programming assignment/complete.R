complete <- function(directory,id)
{
        xlist <- list.files(path = directory,pattern = ".csv")
        y <- xlist[id]
        xtemp <- data.frame()
        xcount <- data.frame()
        nobs <- data.frame()
        setwd(directory)
        for (i in id)
                { 
                xtemp <- (read.csv(xlist[i], header = TRUE))
                nobs <- sum(complete.cases(xtemp))
                xcount <- rbind(xcount, data.frame(id = i,nobs = nobs))
        }
        xcount
}



