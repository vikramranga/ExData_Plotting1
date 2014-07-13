######## First Assignment of Exploratory Analysis ############

### Estimate memory size.

# 2075259 * 9 * 8 = 149418648 bytes
# 146 MB memory is required # my comp should be fine reading it.

#### Now read the data 

h_pow_cons <- read.table("G:/Exploratory Analysis/Week One/exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", header = TRUE,
na.string = "?")
h_pow_cons$Date <- as.Date(h_pow_cons$Date, "%d/%m/%Y")

# plot subset

feb.1n2 <- h_pow_cons[h_pow_cons$Date == as.Date("2007-02-01","%Y-%m-%d") | h_pow_cons$Date == as.Date("2007-02-02","%Y-%m-%d"), ]

png(filename = "G:/Exploratory Analysis/Week One/exdata_data_household_power_consumption/plot1.png", width = 480, height = 480)
with(feb.1n2, hist(Global_active_power, xlab = "Global Active Power (Kilowatts)", ylab = "Frequency", main = "Global Active Power", col = "red"), axis(1), axis(2))
dev.off()
