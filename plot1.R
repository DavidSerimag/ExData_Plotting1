# read file
todos <- read.table("household_power_consumption.txt", header=TRUE, sep=";", dec=".")
# subset info
datos <- todos[todos$Date == "1/2/2007" | todos$Date == "2/2/2007", ]
# format data
glActivePw <- as.numeric(datos$Global_active_power)
# set up image
png("plot1.png", width=480, height=480)
# create plot
hist(glActivePw, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
# close file
dev.off()