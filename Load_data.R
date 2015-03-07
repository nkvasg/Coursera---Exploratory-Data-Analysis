file <- "household_power_consumption.txt"
data <- read.table(file, header = TRUE, sep = ";", colClasses = c("character", "character", rep("numeric",7)), na = "?")
subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
dim(subsetdata)
DateTime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
