## simple if function which was introduced to us in a cleaning and getting data course which is used in order to set the correct working directory where the desired file of our dataset is located
if (!"ReadingData.R" %in% list.files()) {
        setwd("D:/Self-Study/DataScientistCourses/ExploratoryDataAnalysis/Assignment1")
}
## reads the previously written code for reading and preparing the data for further analysis
source("ReadingData.R")
## creates a png file into which the next plot will be saved, for further information about the additional commands used use "?png" function
png(filename="plot1.png",width=480, height=480, bg ="transparent")
## creates a histogram that looks exactly as the example
hist(Global_active_power, main="Global Active Power", 
       xlab="Global Active Power (kilowatts)", breaks=12,
       ylim=c(0, 1200), col="red")
## turns off the png function
dev.off()