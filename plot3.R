if (!"ReadingData.R" %in% list.files()) {
        setwd("D:/Self-Study/DataScientistCourses/ExploratoryDataAnalysis/Assignment1")
}

source("ReadingData.R")

png(filename="plot3.png",width=480, height=480, bg ="transparent")

plot(OurData$DateTime, OurData$Sub_metering_1, type = "l", col = "black",
     xlab ="", ylab ="Energy sub metering")
lines(OurData$DateTime, OurData$Sub_metering_2, col = "red")
lines(OurData$DateTime, OurData$Sub_metering_3, col = "blue")

legend("topright", lwd = 1, col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
