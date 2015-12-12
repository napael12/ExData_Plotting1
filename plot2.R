#plot2.R -- creates Global Active power PNG file

#source commond functions
source("plot_common.R")
pc<-getData()

# creates plot2 png file
plot2_png <- function() {

  makePngPlot("plot2.png", plot2())
}

#creates plot1 histogram
plot2 <- function() {
  par(mfrow=c(1,1), mar=c(2,4,2,2))
  plot(pc$DateTime, pc$Global_active_power/1000, type="l", ylab = "Global Active Power (kilowatts)", xlab = "")
}
