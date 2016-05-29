# load the required data set for 1st and 2nd Feb 2007
electricitydata<-read.csv("household_power_consumption.txt", na.strings = "?", col.names = c("date","time","globalactivepower","globalreactivepower","voltage","globalintensity","submetering1","submetering2","submetering3"),sep=";", skip=grep("1/2/2007", readLines("household_power_consumption.txt")),nrows=(60*24*2)-2, stringsAsFactors = FALSE)

# create histogram
png("plot1.png")
with(electricitydata,hist(globalactivepower, col="orangered", main="Global Active Power",xlab="Global Active Power (kilowatts)"))
dev.off()