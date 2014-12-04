if (!"ReadingData.R" %in% list.files()) {
        setwd("D:/Self-Study/DataScientistCourses/ExploratoryDataAnalysis/Assignment1")
}

source("ReadingData.R")

png(filename="plot1.png",width=480, height=480, bg ="transparent")

hist(Global_active_power, main="Global Active Power", 
       xlab="Global Active Power (kilowatts)", breaks=12,
       ylim=c(0, 1200), col="red")
dev.off()