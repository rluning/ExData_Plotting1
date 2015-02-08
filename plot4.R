#plot 4
power <- read.csv("household_power_consumption.txt", sep=';', na.strings="?")
power <- na.omit(power)
power <- power[power$Date %in% c("1/2/2007", "2/2/2007"),]
power$Date <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")

png('plot4.png', width = 480, height = 480)
par(mfrow = c(2,2))
plot(power$Date, power$Global_active_power, type = 'l', bg = NA, xlab = "", ylab = "Global Active Power")
plot(power$Date, power$Voltage, type = 'l', bg = NA, xlab = "datetime", ylab = "Voltage")
plot(power$Date, power$Sub_metering_1, bg = NA, type = 'l', ylim=c(0,40), xlab = "", ylab = "Energy sub metering", yaxp = c(30, 0, 3))
par(new=T)
plot(power$Date, power$Sub_metering_2, bg = NA, type = 'l', ylim=c(0,40), xlab = "", ylab = "Energy sub metering", yaxp = c(30, 0, 3), col="Red")
par(new=T)
plot(power$Date, power$Sub_metering_3, bg = NA, type = 'l', ylim=c(0,40), xlab = "", ylab = "Energy sub metering", yaxp = c(30, 0, 3), col="Blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"))
plot(power$Date, power$Global_reactive_power, type = 'l', bg = NA, xlab = "datetime", ylab = "Global_reactive_power")
dev.off()