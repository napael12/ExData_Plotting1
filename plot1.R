#plot1.R -- creates histogram PNG file

#source commond functions
source("plot_common.R")

pc<-getData()

# creates plot1 png file
plot1_png <- function() {
  makePngPlot("plot1.png", plot1())
}

#creates plot1 histogram
plot1 <- function() {
  par(mfrow=c(1,1), mar=c(4,4,2,2))
  hist(pc$Global_active_power/1000, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", breaks =seq(0,8,0.5))
}
