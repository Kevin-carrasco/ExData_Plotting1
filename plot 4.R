#voltaje a numero
voltaje <- as.numeric(subbase$Voltage)
#Reactive power a numero
globalReactivePower <- as.numeric(subbase$Global_reactive_power)

#4 plot
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(date, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(date, voltaje, type="l", xlab="datetime", ylab="Voltage")

plot(date, submet1, type="l", ylab="Energy Submetering", xlab="")
lines(date, submet2, type="l", col="red")
lines(date, submet3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(date, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
