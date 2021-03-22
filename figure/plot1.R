##Exploratory Analysis Week 1 CourseWork
#Loading the Data
data <- read.csv("household_power_consumption.txt", stringsAsFactors = FALSE
                 , header = TRUE, sep = ";")
#Changing column names
names(data) <- c("Date","Time","Global_active_power"
                 ,"Global_reactive_power","Voltage"
                 ,"Global_intensity","Sub_metering_1"
                 ,"Sub_metering_2","Sub_metering_3")

#Subsetting Data from 1-2/2/2007
subdata <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")

#Creating a .png file from histogram plot of global active power during 1-2/2/2007
png("plot1.png", width=480, height=480)
hist(as.numeric(as.character(subdata$Global_active_power))
     ,col="red",main="Global Active Power"
     ,xlab="Global Active Power(kilowatts)")
dev.off()
