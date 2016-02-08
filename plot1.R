uci<-read.table("household_power_consumption.txt", header=TRUE, sep = ";", stringsAsFactors=FALSE)
uci$Date<-as.Date(uci$Date, "%d/%m/%Y")

DF1<-uci[uci$Date>"2007-02-01",]
df2<-DF1[DF1$Date<"2007-02-02",]

feb<-with(uci, uci[(Date >= "2007-02-01" & Date <= "2007-02-02"), ])
summary(feb)


feb$Global_active_power<- as.numeric(feb$Global_active_power)
hist(feb$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png,'plot1.png',height=480,width=480)
dev.off() 
