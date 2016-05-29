#plot multiple graphs on one image
png("plot4.png")

par(mfcol=c(2,2))
with(electricitydata,{
        plot(datetime,globalactivepower,type="l",xlab=" ",ylab="Global Active Power (kilowatts)")
        
        plot(datetime,submetering1,type="l",xlab=" ",ylab="Energy sub metering")
        points(datetime,submetering2,type="l",col="red")
        points(datetime,submetering3,type="l",col="blue")
        legend("topright",col=c("black","red","blue"),lty=1, bty="n", legend=c("sub_metering_1","sub_metering_2","sub_metering_3"))
        
        plot(datetime,voltage,type="l")
        
        plot(datetime,globalreactivepower,type="l", cex.axis=0.8)
        
})

dev.off()