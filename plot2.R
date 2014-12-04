## simple if function which was introduced to us in a cleaning and getting data course which is used in order to set the correct working directory where the desired file of our dataset is located
if (!"ReadingData.R" %in% list.files()) {
        setwd("D:/Self-Study/DataScientistCourses/ExploratoryDataAnalysis/Assignment1")
}
## reads the previously written code for reading and preparing the data for further analysis
source("ReadingData.R")
## creates a png file into which the next plot will be saved, for further information about the additional commands used use "?png" function
png(filename="plot2.png",width=480, height=480, bg ="transparent")
## creates a plot that looks exactly as the example
plot(OurData$DateTime, OurData$Global_active_power,type = "l",
     xlab ="", ylab = "Global Active Power (kilowatts)")
## turns off the png function
dev.off()