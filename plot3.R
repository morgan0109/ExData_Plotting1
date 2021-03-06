data <- read.table('/Users/lydc/datascience/EDA/household_power_consumption.txt', text = grep("^[1,2]/2/2007",value=TRUE), sep = ';', col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = '?')
png(filename = 'plot2.png', width = 480, height = 480, units='px')
Sys.setlocale(category = "LC_ALL")## I don't know why , my locale can't be set to "english",so "Thu","Fri","Sat" can't be shown on the vertical axis.
plot(data$DateTime, data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(data$DateTime, data$Sub_metering_2, col = 'red')
lines(data$DateTime, data$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
dev.off()