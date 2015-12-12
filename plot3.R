#plot3.R -- creates Global Energy Sub metering

#source commond functions
source("plot_common.R")
pc<-getData()

# creates plot3 png file
plot3_png <- function() {
  makePngPlot("plot3.png", plot3())
}

# plot 3 plot function 
# 'border' parameter determines if plot is displayed by itself (with border) or as part of 
# 4 plot combination
plot3 <- function(border) {
  if ( missing(border) ) par(mfrow=c(1,1), mar=c(2,4,2,2))
  plot(pc$DateTime, pc$Sub_metering_1/1000, type="l", ylab="Energy sub metering", xlab="")
  lines(pc$DateTime, pc$Sub_metering_2/1000, type="l", col="red")
  lines(pc$DateTime, pc$Sub_metering_3/1000, type="l", col="blue")
  
  if ( missing(border) ) border = "y"
  
  legend("topright", names(pc)[7:9], lty=1, col=c("black", "red", "blue"), bty = border  )
}