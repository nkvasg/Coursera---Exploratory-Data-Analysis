source("loaddata.R")
GAP <- as.numeric(subsetdata$Global_active_power)
subM1 <- as.numeric(subsetdata$Sub_metering_1)
subM2 <- as.numeric(subsetdata$Sub_metering_2)
subM3 <- as.numeric(subsetdata$Sub_metering_3)
Voltage <- as.numeric(subsetdata$Voltage)
png("plot4.png", width=480, height=480, units = "px", bg = "transparent")
par(mfrow = c(2, 2)) 

plot(DateTime, GAP, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(DateTime, Voltage, type="l", xlab="DateTime", ylab="Voltage")

plot(DateTime, subM1, type="l", ylab="Energy Submetering", xlab="")
lines(DateTime, subM2, type="l", col="red")
lines(DateTime, subM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(DateTime, GAP, type="l", xlab="DateTime", ylab="Global_reactive_power")

dev.off()
