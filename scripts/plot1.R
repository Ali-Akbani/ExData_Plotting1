#Make sure to set the working directory to where the repository is cloned

baseDir <- getwd();

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

remove(inData);
remove(baseDir);

print("Plot1.png generated in /figures");