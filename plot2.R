# Plot 2

plot(feb_epc_data$Time,feb_epc_data$Global_active_power,
     type="n", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(feb_epc_data$Time,feb_epc_data$Global_active_power)

## Copy my plot to a PNG file
dev.copy(png, file = "plot2.png", width=480, height=480)

## Close the PNG device!
dev.off()