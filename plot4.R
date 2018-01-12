# Plot 4

par(mfcol = c(2,2), mar = c(4,4,2,1))

plot(feb_epc_data$Time,feb_epc_data$Global_active_power,
     type="n", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(feb_epc_data$Time,feb_epc_data$Global_active_power)

plot(feb_epc_data$Time,feb_epc_data$Sub_metering_1,
     type="n", xlab = "", ylab = "Energy sub metering")
lines(feb_epc_data$Time,feb_epc_data$Sub_metering_1)
lines(feb_epc_data$Time,feb_epc_data$Sub_metering_2, col = "red")
lines(feb_epc_data$Time,feb_epc_data$Sub_metering_3, col = "blue")
legend("topright", lty=1, col=c("black","red","blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       bty = "n")

plot(feb_epc_data$Time,feb_epc_data$Voltage, 
     type="n", xlab = "datetime", ylab = "Voltage")
lines(feb_epc_data$Time,feb_epc_data$Voltage)

plot(feb_epc_data$Time,feb_epc_data$Global_reactive_power, 
     type="n", xlab = "datetime", ylab = "Global_reactive_power")
lines(feb_epc_data$Time,feb_epc_data$Global_reactive_power)

## Copy my plot to a PNG file
dev.copy(png, file = "plot4.png", width=480, height=480)

## Close the PNG device!
dev.off()