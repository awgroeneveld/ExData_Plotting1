source("readFile.R")
# Plots the histogram of Global Active Power
plot1<-function(){
  # First read data file
  hhpc<-readHHPower("household_power_consumption.txt")
  # Set device
  png("plot1.png",width = 480, height = 480)
  # Do the plot
  hist(hhpc$Global_active_power,col="red",xlab = "Global Active Power (kilowatts)",main = "Global Active Power")
  #close device
  dev.off()
}