## simple if function which was introduced to us in a cleaning and getting data course which is used in order to set the correct working directory where the desired file of our dataset is located
if (!"ReadingData.R" %in% list.files()) {
        setwd("D:/Self-Study/DataScientistCourses/ExploratoryDataAnalysis/Assignment1")
}
## reads the previously written code for reading and preparing the data for further analysis
source("ReadingData.R")
## creates a png file into which the next plot will be saved, for further information about the additional commands used use "?png" function, mind the mfrow command which allows us to have 4graphs
png(filename="plot4.png",width=480, height=480, bg ="transparent")
par(mfrow = c(2,2))
## code for plotting the first plot, exact as used in plot1.R 
plot(OurData$DateTime, OurData$Global_active_power,type = "l",
     xlab ="", ylab = "Global Active Power (kilowatts)")
## code for plotting the second plot where date time is on x axis and voltage on y axis, connected by line
plot(OurData$DateTime, OurData$Voltage,type = "l",
     xlab = "datetime", ylab = "Voltage")
## code for plotting the third plot, exact as used in plot3.R with the exception of adding bty command in order to remove border from legend
plot(OurData$DateTime, OurData$Sub_metering_1, type = "l", col = "black",
     xlab ="", ylab ="Energy sub metering")
lines(OurData$DateTime, OurData$Sub_metering_2, col = "red")
lines(OurData$DateTime, OurData$Sub_metering_3, col = "blue")

legend("topright", lwd = 1, bty = "n" ,col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
## code for plotting last fourth plot
plot(OurData$DateTime, OurData$Global_reactive_power, type = "l", 
     col = "black",xlab = "datetime", ylab = "Global_reactive_power")
## turns off the png function
dev.off()