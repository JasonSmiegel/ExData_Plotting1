#plot the multiplt line graph with legend
png("plot3.png")
with(electricitydata,plot(datetime,submetering1,type="l",xlab=" ",ylab="Energy sub metering"))
with(electricitydata,points(datetime,submetering2,type="l",col="red"))
with(electricitydata,points(datetime,submetering3,type="l",col="blue"))
legend("topright",col=c("black","red","blue"),lty=1, legend=c("sub_metering_1","sub_metering_2","sub_metering_3"))
dev.off()
