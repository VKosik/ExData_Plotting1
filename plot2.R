if (!"ReadingData.R" %in% list.files()) {
        setwd("D:/Self-Study/DataScientistCourses/ExploratoryDataAnalysis/Assignment1")
}

source("ReadingData.R")

png(filename="plot2.png",width=480, height=480, bg ="transparent")

plot(OurData$DateTime, OurData$Global_active_power,type = "l",
     xlab ="", ylab = "Global Active Power (kilowatts)")
dev.off()