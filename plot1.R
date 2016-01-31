
#loading files

source("electric_power_consumption.R")

# creating png file, ploting the histogram and close the png device

png(file = "plot1.png", width = 480, height = 480)

hist(df_extract$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power", cex.lab=0.8, cex.axis=0.8)

dev.off()

