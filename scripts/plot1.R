#Set the working directory to where the repository is cloned
baseDir <- "C:/Users/MA250250/Documents/Coursera/Exploratory Data Analysis/ExData_Plotting1"
setwd( baseDir );

source( file=paste(baseDir,"/scripts/read_data.R", sep="") );

png( filename=paste(baseDir,"/figure/plot1.png", sep="")
		 ,width=480
		 ,height=480
		 ,type="cairo"
		 ,bg="transparent"
		);

hist(
      x=inData$Global_active_power
      ,freq=TRUE
      ,col="Red"
      ,xlab="Global Active Power (kilowatts)"
      ,ylim=c(0,1200)
      ,main="Global Active Power"
    );

dev.off();
