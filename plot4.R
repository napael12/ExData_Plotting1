#plot4.R -- 4 plot combination

#source commond functions
source("plot_common.R")

#source plot3.R for Energy Sub-metering sub-plot
source("plot3.R")
#pc<-getData()

# creates plot4 png file
plot4_png <- function() {
  makePngPlot("plot4.png", plot4())
}


plot4 <- function() {
  
  par(mfrow=c(2,2), mar=c(4,4,2,4))
  plot(pc$DateTime, pc$Global_active_power/1000, type="l", ylab="Global Active Power", xlab="")
  plot(pc$DateTime, pc$Voltage/1000, type="l", ylab="Global Active Power", xlab="datetime")
  
  #call to 'plot3.R' 
  plot3("n")
  
  plot(pc$DateTime, pc$Global_reactive_power/1000, type="l", ylab="Global_reactive_power", xlab="datetime")
  
}