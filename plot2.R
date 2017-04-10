source("readFile.R")
# Plots the histogram of Global Active Power
plot2<-function(){
  # First read data file
  hhpc<-readHHPower("household_power_consumption.txt")
  # Set device
  png("plot2.png",width = 480, height = 480)
  # Do the plot
  plot(x = hhpc$DateTime,
       y = hhpc$Global_active_power, 
       xlab = "", 
       ylab = "Global Active Power (kilowatts)",
       type = "l")
  #close device
  dev.off()
}