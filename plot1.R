# Plot 1

hist(feb_epc_data$Global_active_power, col="red", 
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

## Copy my plot to a PNG file
dev.copy(png, file = "plot1.png", width=480, height=480)

## Close the PNG device!
dev.off()