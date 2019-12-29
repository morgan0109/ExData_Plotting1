data <- read.table('/Users/lydc/datascience/EDA/household_power_consumption.txt', text = grep("^[1,2]/2/2007",value=TRUE), sep = ';', col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = '?')
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
png(filename = 'plot2.png', width = 480, height = 480, units='px')
Sys.setlocale(category = "LC_ALL") ## I don't know why , my locale can't be set to "english",so "Thu","Fri","Sat" can't be shown on the vertical axis.
plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
dev.off()