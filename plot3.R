#loading files

source("electric_power_consumption.R")

# creating png file, ploting and closing the device

png(file="plot3.png", width = 480, height = 480)

plot(df_extract$Time, df_extract$Sub_metering_1, "n", xlab="", ylab = "Energy sub metering", cex.lab=0.8, cex.axis=0.8)
lines(df_extract$Time, df_extract$Sub_metering_1, col="black")
lines(df_extract$Time, df_extract$Sub_metering_2, col="red")
lines(df_extract$Time, df_extract$Sub_metering_3, col="blue")
legend(x="topright", c("sub_metering_1", "sub_metering_2", "sub_metering_3"), col=c("black", "red", "blue"), lty = c(1,1,1), cex=0.8)

dev.off()
