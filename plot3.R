pwr <- read.table("data/household_power_consumption.txt", header=T, sep=";")
pwr$Date <- as.Date(pwr$Date, "%d/%m/%Y")
power <- subset(pwr, Date=="2007-02-01" | Date=="2007-02-02")
png(filename="plot3.png", width=480, height=480, units="px")
vec <- 1:2880
plot(vec, as.numeric(as.character(power$Sub_metering_1)), type="l", axes=F,
     ylab="Energy sub metering", frame.plot=T, xlab="")
axis(2, at=seq(0,30,10))
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))
lines(vec, as.numeric(as.character(power$Sub_metering_2)), col="red")
lines(vec, as.numeric(as.character(power$Sub_metering_3)), col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1), lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))
dev.off()