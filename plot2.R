plot2 <- function(){
  #the included script helpers.R must be sourced first
  power <- read_file()
  png(filename = "plot2.png")
  plot(date_time(power$Date, power$Time), power$Global_active_power,
       type="l",
       ylab="Global Active Power (kilowatts)",
       xlab="")
  dev.off()
}