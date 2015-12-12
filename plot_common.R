library(readr)
library(dplyr)

#common function for reading and processing the data
getData<-function() {
  
  #read data with all columns as characters
  pc<-read_csv2("household_power_consumption.txt", col_types = "ccnnnnnnn", na=c("?"))
  
  #subset to only two dates
  pc<-pc[pc$Date == "1/2/2007" | pc$Date == "2/2/2007", ]
  
  #combine & transform DateTime values
  pc <- transform(pc, DateTime = strptime( paste( Date, Time, sep = " "), "%d/%m/%Y %H:%M:%S"))
  
}

#common function for creating PNG plots
makePngPlot <- function(filename, pfunction) {
  png(filename, width=480, height=480, units = "px")
  pfunction
  dev.off()
}