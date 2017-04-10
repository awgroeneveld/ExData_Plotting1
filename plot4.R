source("readFile.R")
# Plots the histogram of Global Active Power
plot4 <- function(){
  # First read data file
  hhpc<-readHHPower("household_power_consumption.txt")
  # Set device
  png("plot4.png",width = 480, height = 480)
  # Do the plot
  
  
  par(mfrow=c(2,2))
  
  # LEFT UP
  plot(x = hhpc$DateTime,
       y = hhpc$Global_active_power, 
       xlab = "", 
       ylab = "Global Active Power",
       type = "l")
  
  # RIGHT UP
  plot(x = hhpc$DateTime,
       y = hhpc$Voltage, 
       xlab = "datetime", 
       ylab = "Voltage",
       type = "l")
  
  # LEFT DOWN
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
  
  # RIGHT DOWN
  plot(x = hhpc$DateTime,
       y = hhpc$Global_reactive_power, 
       xlab = "datetime", 
       ylab = "Global Reactive Power",
       type = "l")
   #close device
  dev.off()
}