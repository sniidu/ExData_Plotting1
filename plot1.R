pwr <- read.table("data/household_power_consumption.txt", header=T, sep=";")
pwr$Date <- as.Date(pwr$Date, "%d/%m/%Y")
power <- subset(pwr, Date=="2007-02-01" | Date=="2007-02-02")
png(filename="plot1.png", width=480, height=480, units="px")
hist(as.numeric(as.character(power$Global_active_power)),
     axes=F, col="red",
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
axis(side=1, at=c(0,2,4,6))
axis(2, at=seq(0,1200,200))
dev.off()