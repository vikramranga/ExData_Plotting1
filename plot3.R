########## Plot 3 ##############

h_pow_cons <- read.table("G:/Exploratory Analysis/Week One/exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", header = TRUE,
na.string = "?")
h_pow_cons$Date <- as.Date(h_pow_cons$Date, "%d/%m/%Y")

# plot subset

feb.1n2 <- h_pow_cons[h_pow_cons$Date == as.Date("2007-02-01","%Y-%m-%d") | h_pow_cons$Date == as.Date("2007-02-02","%Y-%m-%d"), ]


#plot
png(filename = "G:/Exploratory Analysis/Week One/exdata_data_household_power_consumption/plot3.png", width = 480, height = 480)
with(feb.1n2, plot(Sub_metering_1, ylab = "Energy sub metering", xlab = "", main = "", type = "l", axes = FALSE))
lines(feb.1n2$Sub_metering_2, col = 'red')
lines(feb.1n2$Sub_metering_3, col = 'blue')
axis(2)
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
legend("topright", col = c("black", "red", "blue"), legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"), lty = 1)
box()
dev.off()
