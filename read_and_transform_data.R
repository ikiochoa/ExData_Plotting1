# Code for reading the data

dataset_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
temp <- tempfile()
download.file(dataset_url,temp,mode="wb")
unzip(temp)
epc_data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";")
unlink(temp)

# Subset 1st and 2nd of February 2007 data 

feb_epc_data <- subset(epc_data, Date == "1/2/2007" | Date == "2/2/2007" )

# convert time and date into Time and Date classes

feb_epc_data$Time <- strptime(paste(feb_epc_data$Date, feb_epc_data$Time), format = "%d/%m/%Y %H:%M:%S")
feb_epc_data$Date <- as.Date(feb_epc_data$Date, format = "%d/%m/%Y")

# convert numerics into proper format

feb_epc_data$Global_active_power <- as.numeric(as.character(feb_epc_data$Global_active_power))
feb_epc_data$Global_reactive_power <- as.numeric(as.character(feb_epc_data$Global_reactive_power))
feb_epc_data$Sub_metering_1 <- as.numeric(as.character(feb_epc_data$Sub_metering_1))
feb_epc_data$Sub_metering_2 <- as.numeric(as.character(feb_epc_data$Sub_metering_2))
feb_epc_data$Sub_metering_3 <- as.numeric(as.character(feb_epc_data$Sub_metering_3))
feb_epc_data$Voltage <- as.numeric(as.character(feb_epc_data$Voltage))