#loading files

source("electric_power_consumption.R")

# creating png file, setting the correct frame, ploting and closing the device

png(file="plot4.png", width = 480, height = 480) 

par(mfcol=c(2,2))

#1st plot

plot(df_extract$Time, df_extract$Global_active_power, "n", xlab="", ylab = "Global Active Power", cex.lab=0.7, cex.axis=0.7)
lines(df_extract$Time, df_extract$Global_active_power)

#2nd plot

plot(df_extract$Time, df_extract$Sub_metering_1, "n", xlab="", ylab = "Energy sub metering", cex.lab=0.7, cex.axis=0.7)
lines(df_extract$Time, df_extract$Sub_metering_1, col="black")
lines(df_extract$Time, df_extract$Sub_metering_2, col="red")
lines(df_extract$Time, df_extract$Sub_metering_3, col="blue")
legend(x="topright", c("sub_metering_1", "sub_metering_2", "sub_metering_3"), col=c("black", "red", "blue"), lty = c(1,1,1), bty="n", cex=0.7)

#3rd plot

plot(df_extract$Time, df_extract$Voltage, "n", xlab="datetime", ylab="Voltage", cex.lab=0.7, cex.axis=0.7)
lines(df_extract$Time, df_extract$Voltage)

#4th plot

plot(df_extract$Time, df_extract$Global_reactive_power, "n", xlab="datetime", ylab="Global_Reactive_Power", cex.lab=0.7, cex.axis=0.7)
lines(df_extract$Time, df_extract$Global_reactive_power)

dev.off()
