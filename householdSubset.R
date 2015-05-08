# fetch and read data in a .txt file where NA are marked with ? and column classes are character, character and the rest are numeric
data <- read.table("household_power_consumption.txt",
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")

# converts between character representations and objects of class "Date" representing calendar dates
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

## We only need data for 1-2-2007 and 2-2-2007 (two days).
dataSubset <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
date_time <- paste(as.Date(dataSubset$Date), dataSubset$Time)
dataSubset$date_time <- as.POSIXct(date_time)

# this is the script I will call in other R scripts 
# there will be 4 more R sripts, each used to plot a certain graph
# their names are: plot1.R, plot2.R, plot3.R and plot4.R
# at the beginning of each R script, I will call the householdSubset.R script with source("householdSubset.R")
