# read file
todos <- read.table("household_power_consumption.txt", header=TRUE, sep=";", dec=".")
# subset info
datos <- todos[todos$Date == "1/2/2007" | todos$Date == "2/2/2007", ]

# format data
glActivePw <- as.numeric(datos$Global_active_power)
fecha <- strptime(paste(datos$Date, datos$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
sub1 <- as.numeric(datos$Sub_metering_1)
sub2 <- as.numeric(datos$Sub_metering_2)
sub3 <- as.numeric(datos$Sub_metering_3)
# set up image
png("plot3.png", width=480, height=480)
# create plot
plot(fecha, sub1, type="l", ylab="Energy Sub metering", xlab="")
lines(fecha, sub2, type="l", col="red")
lines(fecha, sub3, type="l", col="blue")
legend ("topright", lty=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
# close file
dev.off()