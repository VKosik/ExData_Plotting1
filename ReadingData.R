## This file will be used for all four plots and it is mainly for loading and preparing the dataset for further analysis (following the knowledge gained from getting and cleaning course)
setwd("D:/Self-Study/DataScientistCourses/ExploratoryDataAnalysis/")

## downloading and unzipping the dataset file into defined working directory
url  <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, "Assignment1.zip")
unzip("Assignment1.zip", exdir = "Assignment1")

list.files()
## chanding to new working directory is necessary due to the fact that we want to load a dataset from newly unzipped file "assignment1"
setwd("D:/Self-Study/DataScientistCourses/ExploratoryDataAnalysis/Assignment1")
## This reads the whole dataset, many commands are not left for "default" because they are necessary to be specified in order to help R load the data correctly, type "?read.table" without "" to find more information about these
MainDataset  <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", colClasses= c("character", "character", "numeric", "numeric","numeric","numeric","numeric","numeric","numeric"), na ="?")
## subsetting in order to extract the data from desired dates, this subset works on base of logical statements
OurDataSubset  <- MainDataset$Date == "1/2/2007" | MainDataset$Date == "2/2/2007"
OurData  <- MainDataset[OurDataSubset,]
## creation of new variable where both date and time variables are pasted together in order to get variable representing exact time at the given date, if you use strptime function on just time variable the R will assumme the date as "today" and add current date to it
DateTime1  <- paste(OurData$Date, OurData$Time)
## changing the class of the variable from character to "POSIXlt" "POSIXt"
OurData$DateTime  <- strptime(DateTime1,"%d/%m/%Y %H:%M:%S" )

