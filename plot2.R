## The data I use is named ¡°Individual household electric power consumption Data Set¡± from the UC Irvine Machine Learning Repository. If you dont have the data yet, please go to the web site: "http://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption". Data set and description are both available to download. 

## Read txt data with missing value "?" and saparted by ";"
HPC <- read.table("household_power_consumption.txt", header=TRUE, na.strings="?", sep=";", stringsAsFactors=FALSE)


## extract the data we need, date 1/2/2007 and 2/2/2007
sub_HPC <- HPC[(HPC$Date == "1/2/2007" | HPC$Date == "2/2/2007" ),]


## convert date and time
sub_HPC$DateTime <- strptime(paste(sub_HPC$Date, sub_HPC$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

## create the plot and save as png
png("plot2.png", width=480, height=480)
plot(sub_HPC$DateTime,sub_HPC$Global_active_power, type="l", xlab =" ", ylab="Global Active Power(kilowatts)")
dev.off()  ## close the png device



