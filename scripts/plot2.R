#Set the working directory to where the repository is cloned
baseDir <- "C:/Users/MA250250/Documents/Coursera/Exploratory Data Analysis/ExData_Plotting1"
setwd( baseDir );

source( file=paste(baseDir,"/scripts/read_data.R", sep="") );

png( filename=paste(baseDir,"/figure/plot2.png", sep="")
		 ,width=480
		 ,height=480
		 ,type="cairo"
		 ,bg="transparent"
		);

plot(
      x=inData$DateTime
      ,y=inData$Global_active_power
      ,type="l"
      ,ylab="Global Active Power (kilowatts)"
      ,xlab=""
    );

dev.off();