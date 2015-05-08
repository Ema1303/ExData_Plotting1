#plot the subset of data fetched through householdSubset.R script
source("householdSubset.R")

#png image named plot4, dimensions 480x480px with a transparent background 
png(filename = "plot4.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

#4 figures arranged over two rows and two columns
par(mfrow=c(2,2))

#1. figure (top left)
plot(dataSubset$date_time, dataSubset$Global_active_power, 
     type = "l",
     col = "black",
     xlab = " ",
     ylab = "Global Active Power",
     main = " ")

#2. figure (top right)
plot(dataSubset$date_time, dataSubset$Voltage, 
     type = "l",
     col = "black",
     xlab = "datetime",
     ylab = "Voltage",
     main = " ")

#3. figure (bottom left)
plot(dataSubset$date_time, dataSubset$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = " ",
     ylab = "Energy sub metering")

lines(dataSubset$date_time, dataSubset$Sub_metering_2, col = "red")
lines(dataSubset$date_time, dataSubset$Sub_metering_3, col = "blue")

legend("topright", 
       lwd=1, 
       lty=1, 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#4. figure (bottom right)
plot(dataSubset$date_time, dataSubset$Global_reactive_power,
     type = "l",
     col = "black",
     xlab = "datetime",
     ylab = "Global_reactive_power",
     main = " ")

#dev.off shuts down the specified device
dev.off()