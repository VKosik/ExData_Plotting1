if (!"ReadingData.R" %in% list.files()) {
        setwd("D:/Self-Study/DataScientistCourses/ExploratoryDataAnalysis/Assignment1")
}

source("ReadingData.R")

png(filename="plot4.png",width=480, height=480, bg ="transparent")
par(mfrow = c(2,2))

plot(OurData$DateTime, OurData$Global_active_power,type = "l",
     xlab ="", ylab = "Global Active Power (kilowatts)")

plot(OurData$DateTime, OurData$Voltage,type = "l",
     xlab = "datetime", ylab = "Voltage")

plot(OurData$DateTime, OurData$Sub_metering_1, type = "l", col = "black",
     xlab ="", ylab ="Energy sub metering")
lines(OurData$DateTime, OurData$Sub_metering_2, col = "red")
lines(OurData$DateTime, OurData$Sub_metering_3, col = "blue")

legend("topright", lwd = 1, bty = "n" ,col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(OurData$DateTime, OurData$Global_reactive_power, type = "l", 
     col = "black",xlab = "datetime", ylab = "Global_reactive_power")

dev.off()