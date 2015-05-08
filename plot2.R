#plot the subset of data fetched through householdSubset.R script
source("householdSubset.R")

#png image named plot2, dimensions 480x480px with a transparent background
png(filename = "plot2.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

#plot a black line graph with a titled y-xis based on the following data: date_time and Global_active_power
# please note that on my graph, days of the week will be named Do, Fr, Sa (German for Thursday, Friday and Saturday)
plot(dataSubset$date_time, dataSubset$Global_active_power, 
     type = "l",
     col = "black",
     xlab = " ",
     ylab = "Global Active Power (kilowatts)",
     main = " ")

#dev.off shuts down the specified device
dev.off()