#plot the subset of data fetched through householdSubset.R script
source("householdSubset.R")

#png image named plot4, dimensions 480x480px with a transparent background
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

# plot a red histogram based on the data Global_active_power, a main graph title "Global Active Power" and a titled x-axis "Global Active Power (kilowatts)"
hist(dataSubset$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

#dev.off shuts down the specified device
dev.off()