#create a datetime field to be used in the plot
datetime<-paste(electricitydata$date,electricitydata$time)
datetime<-strptime(datetime,"%d/%m/%Y %H:%M:%S")
electricitydata$datetime<-datetime

#plot the line graph
png("plot2.png")
with(electricitydata,plot(datetime,globalactivepower,type="l",xlab=" ",ylab="Global Active Power (kilowatts)"))
dev.off()
     