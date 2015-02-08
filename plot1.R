#plot 1
power <- read.csv("household_power_consumption.txt", sep=';', na.strings="?")
power <- na.omit(power)
power <- power[power$Date %in% c("1/2/2007", "2/2/2007"),]
power$Date <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")

png('plot1.png', width = 480, height = 480)
hist(power$Global_active_power, freq=T, bg = NA, col='Red', xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()