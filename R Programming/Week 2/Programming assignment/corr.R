corr <- function(directory,threshold)
{
        xlist <- list.files(path = directory,pattern = ".csv")
        xtemp <- data.frame()
        xcorr <- data.frame()
        xcount <- data.frame();
        nbr <- data.frame()
        ids <- data.frame()
        nbr <- complete(directory,1:332)
        ids <- nbr$id[nbr$nobs > threshold]
        setwd(directory)
        for (i in ids)
        { 
                xtemp <- (read.csv(xlist[i], header = TRUE))
                xcorr <- cor(xtemp$sulfate,xtemp$nitrate,use = "complete.obs")
                xcount <- rbind(xcount,xcorr)
        }
        xcount
}






