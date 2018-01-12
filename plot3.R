# Plot 3

plot(feb_epc_data$Time,feb_epc_data$Sub_metering_1,
     type="n", xlab = "", ylab = "Energy sub metering")

lines(feb_epc_data$Time,feb_epc_data$Sub_metering_1)
lines(feb_epc_data$Time,feb_epc_data$Sub_metering_2, col = "red")
lines(feb_epc_data$Time,feb_epc_data$Sub_metering_3, col = "blue")

legend("topright", lty=1, col=c("black","red","blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Copy my plot to a PNG file
dev.copy(png, file = "plot3.png", width=480, height=480)

## Close the PNG device!
dev.off()