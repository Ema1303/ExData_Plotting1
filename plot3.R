#plot the subset of data fetched through householdSubset.R script
source("householdSubset.R")

#png image named plot4, dimensions 480x480px with a transparent background
png(filename = "plot3.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

# plot a graph with 3 subsets based on the following data: date_time, Sub_metering_1 (black line), Sub_metering_2 (red line), Sub_metering_3 (blue line)
# please note that on my graph, days of the week will be named Do, Fr, Sa (German for Thursday, Friday and Saturday)
plot(dataSubset$date_time, dataSubset$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = " ",
     ylab = "Energy sub metering")

lines(dataSubset$date_time, dataSubset$Sub_metering_2, col = "red")
lines(dataSubset$date_time, dataSubset$Sub_metering_3, col = "blue")

# draw legend in a top right corner
legend("topright", 
       lwd=1, 
       lty=1, 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#dev.off shuts down the specified device
dev.off()