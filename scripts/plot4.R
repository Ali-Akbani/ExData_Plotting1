#Set the working directory to where the repository is cloned
baseDir <- "C:/Users/MA250250/Documents/Coursera/Exploratory Data Analysis/ExData_Plotting1"
setwd( baseDir );

source( file=paste(baseDir,"/scripts/read_data.R", sep="") );

png( filename=paste(baseDir,"/figure/plot4.png", sep="")
		 ,width=480
		 ,height=480
		 ,type="cairo"
		 ,bg="transparent" );

#Create place for 4 graphs
par( mfcol=c(2,2) );

#TopLeft
plot(
	x=inData$DateTime
	,y=inData$Global_active_power
	,type="l"
	,ylab="Global Active Power (kilowatts)"
	,xlab=""
);

#BottomLeft
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
	,bty="n"
);

#TopRight
plot(
	x=inData$DateTime
	,y=inData$Voltage
	,type="l"
	,ylab="Voltage"
	,xlab="datetime"
);

#BottomRight
plot(
	x=inData$DateTime
	,y=inData$Global_reactive_power
	,type="l"
	,ylab="Global_reactive_power"
	,xlab="datetime"
);

#Reset to single graph
par( mfcol=c(1,1) );

dev.off();