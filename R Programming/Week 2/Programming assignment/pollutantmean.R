pollutantmean <- function(directory,pollutant,id)
{
        xlist <- list.files(path = directory,pattern = ".csv")
        y <- xlist[id]
        xtemp <- data.frame()
        setwd(directory)
        for (i in y) 
        { 
                temp <- read.csv((i),TRUE,sep = ",")
                xtemp <- (rbind(xtemp,temp))
                assign(i, temp)
        }
        if (pollutant == 'sulfate')
        {
                mean(na.omit(xtemp$sulfate[]))
                }
        else if (pollutant == 'nitrate')
        {
                mean(na.omit(xtemp$nitrate[]))
                }
        
}
