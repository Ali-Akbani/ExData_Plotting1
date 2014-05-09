#Make sure to set the working directory to where the repository is cloned

baseDir <- getwd();

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

remove(inData);
remove(baseDir);

print("Plot2.png generated in /figures");