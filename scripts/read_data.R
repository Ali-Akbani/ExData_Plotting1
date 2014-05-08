#Set the working directory to where the repository is cloned
#baseDir <- "C:/Users/MA250250/Documents/Coursera/Exploratory Data Analysis/ExData_Plotting1"
#setwd( baseDir );

#Check if the required packages are present in the environment
if( !require(data.table, quietly=TRUE) )
  install.packages("data.table");

#source( paste(baseDir,"/scripts/setup_env.R") );

library(data.table);

#Data downloaded from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
# on 7th May 2014

#Read the column headers. This step is neccesary as I will be skipping rows to get to 
#the target dates directly

header <- fread(
  input = paste(baseDir,"/household_power_consumption.txt",sep="")
  ,nrows = 1
  ,header = TRUE
  ,stringsAsFactors = FALSE
);

#checked for missing data "?" by loading all data as characters and checking 
#table( fullData$<column_name> == "?"). Then calculated the row from which reading is required

inData <- fread(
  input = paste(baseDir,"/household_power_consumption.txt",sep="")
  ,nrows = 2880
  ,skip = 66637
  ,header = FALSE
  ,stringsAsFactors = FALSE
);

#Set friendly column names for the data set
setnames(x=inData,old=names(header));

#Create a new variable that holds the full datetime information
inData$DateTime <- paste(inData$Date,inData$Time);

#Convert the data.table to a data.frame
inData <- as.data.frame(x=inData);

#Cast the datetime character field into a POSIXlt datetime variable for use in plotting
inData$DateTime <- strptime( inData$DateTime,format="%d/%m/%Y %T" );
