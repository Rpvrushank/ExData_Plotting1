Data_H <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

sub <- Data_H[Data_H$Date %in% c("1/2/2007", "2/2/2007"),]

datetime <- strptime(paste(sub$Date, sub$Time, sep = " "), "%d/%m/%Y %H:%M:%S")


GlobalActivePower <- as.numeric(sub$Global_active_power)
png("plot2.png", width = 480, height = 480)
plot(datetime, GlobalActivePower,type = "l",xlab = " ", ylab = "Global Active power (kilowatts)")
dev.off()

