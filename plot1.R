#the included script helpers.R must be sourced first
plot1 <- function(){
power <- read_file()
png(filename = "plot1.png")
hist(as.numeric(power$Global_active_power), 
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()
}