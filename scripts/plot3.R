#Make sure to set the working directory to where the repository is cloned

baseDir <- getwd();

source( file=paste(baseDir,"/scripts/read_data.R", sep="") );

png( filename=paste(baseDir,"/figure/plot3.png", sep="")
		 ,width=480
		 ,height=480
		 ,type="cairo"
		 ,bg="transparent" );

plot(
      x=inData$DateTime
      ,y=inData$Sub_metering_1
      ,type="n"
      ,ylab="Energy sub metering"
      ,xlab=""
);

points(
      x=inData$DateTime
      ,y=inData$Sub_metering_1
      ,type="l"
      ,col="Black"
    );

points(
	      x=inData$DateTime
	      ,y=inData$Sub_metering_2
	      ,type="l"
	      ,col="Red"
		);


points(
				x=inData$DateTime
				,y=inData$Sub_metering_3
				,type="l"
				,col="Blue"
		);

legend( 
				"topright"
				,c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
				,lty = c(1, 1, 1)
				,col=c("Black","Red","Blue")
			);

dev.off();


remove(inData);
remove(baseDir);

print("Plot3.png generated in /figures");