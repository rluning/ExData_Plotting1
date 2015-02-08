#plot 2
power <- read.csv("household_power_consumption.txt", sep=';', na.strings="?")
power <- na.omit(power)
power <- power[power$Date %in% c("1/2/2007", "2/2/2007"),]
power$Date <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")

png('plot2.png', width = 480, height = 480)
plot(power$Date, power$Global_active_power, type = 'l', bg = NA, xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()