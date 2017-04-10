source("readFile.R")
# Plots the histogram of Global Active Power
plot3 <- function(){
  # First read data file
  hhpc<-readHHPower("household_power_consumption.txt")
  # Set device
  png("plot3.png",width = 480, height = 480)
  # Do the plot
  plot(x = hhpc$DateTime, 
       y=hhpc$Sub_metering_1,
       xlab="",
       ylab = "Energy submetering", 
       type = "l", 
       col="black")
  lines(x = hhpc$DateTime,
        y = hhpc$Sub_metering_2,
        type = "l",
        col="red") 
  lines(x = hhpc$DateTime, 
        y = hhpc$Sub_metering_3,
        type = "l", 
        col ="blue")
  legend(x ="topright",
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         col = c("black","red","blue"),
         lwd=1
         )
   #close device
  dev.off()
}