# read file
todos <- read.table("household_power_consumption.txt", header=TRUE, sep=";", dec=".")
# subset info
datos <- todos[todos$Date == "1/2/2007" | todos$Date == "2/2/2007", ]

# format data
glActivePw <- as.numeric(datos$Global_active_power)
fecha <- strptime(paste(datos$Date, datos$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
# set up image
png("plot2.png", width=480, height=480)
# create plot
plot(fecha, glActivePw, type="l", ylab="Global Active Power (kilowatts)", xlab="")
# close file
dev.off()