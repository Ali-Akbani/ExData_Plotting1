## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. Here, "Individual household
electric power consumption Data Set" is used.


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.

## Steps

* Fork and clone the github repository https://github.com/Ali-Akbani/ExData_Plotting1 on the local machine
* Download the data in the "ExData_Plotting1" folder
* Set the working directory (using <code>setwd</code>) to the "ExData_Plotting1" repository folder

## Input Data

The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data

* The data has been loaded using the fread procedure of the data.table package. This procedure was chosen due to its speed over the standard read.table procedure.

* Since only two days of data was required, the number of rows to skip was manually calculated and then specified in the procedure call that loads the data.

* A new variable called "DataTime" or type POSIXlt is added to the dataframe with values converted from combination of "Date" and "Time" variables. This new variable was used for plotting

* The code for loading data is in the /scripts/read_data.R file. This file is included in each of the plot<n>.R file so that if any plot is run standalone it can be replicated.

## Making Plots

* The code for making plots is available under /scripts folder in the repository
* Each code file includes the code from "read_data.R" to load the data
* Each plot is saved as png under the /figures folder in the repository
* Each png is 480x480 with transparent background

The four plots created are as below. 


### Plot 1

![Plot1.png from Plot1.R](figure/Plot1.png) 


### Plot 2

![Plot2.png from Plot2.R](figure/Plot2.png) 


### Plot 3

![Plot3.png from Plot3.R](figure/Plot3.png) 


### Plot 4

![Plot4.png from Plot4.R](figure/Plot4.png) 

