read_file <- function(){
  x <-read.csv2("household_power_consumption.txt", na.strings = "?")
  x[x$Date %in% c('1/2/2007','2/2/2007'),]
}
date_time <- function(date, time){
  strptime(paste(date, time),format="%d/%m/%Y %H:%M:%S")
}