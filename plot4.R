plot4 <- function(){
  #the included script helpers.R must be sourced first
  power <- read_file()
  png(filename = "plot4.png")
  time <- date_time(power$Date, power$Time)
  par(mfcol=c(2,2))
  plot(time, power$Global_active_power,
       type="l",
       ylab="Global Active Power",
       xlab="")
  plot(time, 
       power$Sub_metering_1,       
       xlab="", 
       pch=NA,
       ylab="Energy sub metering")
  lines(time, power$Sub_metering_1)
  lines(time, power$Sub_metering_2, col='red')
  lines(time, power$Sub_metering_3, col='blue')
  legend('topright', 
         c("Sub_metering_1", 
           "Sub_metering_2", 
           "Sub_metering_3"), 
         lty = 1,
         col = c('black', 'red', 'blue'))
  plot(time, power$Voltage,
       type="l",
       ylab = "Voltage",
       xlab="datetime")
  plot(time, power$Global_reactive_power,
       type="l",
       ylab = "Global_reactive_power",
       xlab="datetime")
  dev.off()
}