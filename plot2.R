#loading files

source("electric_power_consumption.R")

# creating png file, ploting and closing the device

png("plot2.png", width = 480, height = 480)

plot(df_extract$Time, df_extract$Global_active_power, "n", xlab="", ylab = "Global Active Power (kilowatts)", cex.lab=0.8, cex.axis=0.8)
lines(df_extract$Time, df_extract$Global_active_power)

dev.off()

