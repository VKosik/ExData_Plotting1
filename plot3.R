## simple if function which was introduced to us in a cleaning and getting data course which is used in order to set the correct working directory where the desired file of our dataset is located
if (!"ReadingData.R" %in% list.files()) {
        setwd("D:/Self-Study/DataScientistCourses/ExploratoryDataAnalysis/Assignment1")
}
## reads the previously written code for reading and preparing the data for further analysis
source("ReadingData.R")
## creates a png file into which the next plot will be saved, for further information about the additional commands used use "?png" function
png(filename="plot3.png",width=480, height=480, bg ="transparent")
## creates a histogram that looks exactly as the example, mind the lines command which adds additional lines into the plot(necessary as this plot shows how 3 variables change over 3days at the same time)
plot(OurData$DateTime, OurData$Sub_metering_1, type = "l", col = "black",
     xlab ="", ylab ="Energy sub metering")
lines(OurData$DateTime, OurData$Sub_metering_2, col = "red")
lines(OurData$DateTime, OurData$Sub_metering_3, col = "blue")
## this command creates a legend at the top right corner
legend("topright", lwd = 1, col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
## turns off the png function
dev.off()
