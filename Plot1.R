#Reading Power Consumption Data
power <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#Subsetting the Data According To Date
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

globalActivePower <- as.numeric(subpower$Global_active_power)
png("plot1.png", width=480, height=480)

#Calling Hist Function
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()