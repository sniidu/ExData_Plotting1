pwr <- read.table("data/household_power_consumption.txt", header=T, sep=";")
pwr$Date <- as.Date(pwr$Date, "%d/%m/%Y")
power <- subset(pwr, Date=="2007-02-01" | Date=="2007-02-02")
png(filename="plot2.png", width=480, height=480, units="px")
vec <- 1:2880
plot(vec, as.numeric(as.character(power$Global_active_power)),
     axes=F, ylab="Global Active Power (kilowatts)", frame.plot=T, type="l", xlab="")
axis(2, at=seq(0,6,2))
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))
dev.off()