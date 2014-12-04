setwd("D:/Self-Study/DataScientistCourses/ExploratoryDataAnalysis/")

url  <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, "Assignment1.zip")
unzip("Assignment1.zip", exdir = "Assignment1")

list.files()

setwd("D:/Self-Study/DataScientistCourses/ExploratoryDataAnalysis/Assignment1")

MainDataset  <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", colClasses= c("character", "character", "numeric", "numeric","numeric","numeric","numeric","numeric","numeric"), na ="?")

OurDataSubset  <- MainDataset$Date == "1/2/2007" | MainDataset$Date == "2/2/2007"
OurData  <- MainDataset[OurDataSubset,]

DateTime1  <- paste(OurData$Date, OurData$Time)
OurData$DateTime  <- strptime(DateTime1,"%d/%m/%Y %H:%M:%S" )

