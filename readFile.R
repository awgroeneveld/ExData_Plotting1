library("data.table")
library("dplyr")
## reads a data file with specific date filter
readHHPower<-function(fileName){
  # read file and filter for specific dates
  hhpc<-fread(fileName, na.strings = c("NA","?")) %>% filter(Date=="1/2/2007" | Date=="2/2/2007")
  # converts the date/time columns to a POSIXlt type
  hhpc$DateTime<-(strptime(paste(hhpc$Date,hhpc$Time), "%d/%m/%Y %H:%M:%S"))
  hhpc
}
