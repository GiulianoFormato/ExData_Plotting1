
####### READING DATASOURCE
setwd("~/Data Science Spec/R practice/4.Exploratory Graphs/Assignment Week1/")
rm(list = ls())
source("load_datasource.R")

####### PLOT 4

## printing the plot on the window screen

par(mfcol = c(2, 2))
with(datasource.df, {
    
    # plot 1.1
    with(datasource.df, plot(Time, Global_active_power, xlab = "", ylab = "Global active power (kilowatts)", type = "n"))
    with(datasource.df, lines(Time, Global_active_power))
    
    # plot 2.1
    with(datasource.df, plot(Time, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n"))
    with(datasource.df, lines(Time, Sub_metering_1))
    with(datasource.df, lines(Time, Sub_metering_2, col = "red"))
    with(datasource.df, lines(Time, Sub_metering_3, col = "blue"))
    
    # plot 1.2
    with(datasource.df, plot(Time, Voltage, xlab = "datetime", type = "n"))
    with(datasource.df, lines(Time, Voltage))
    
    # plot 2.2
    with(datasource.df, plot(Time, Global_reactive_power, xlab = "datetime", type = "n"))
    with(datasource.df, lines(Time, Global_reactive_power))
})

# saving the plot in the device
png("plot4.png",height=480, width = 480, units="px", bg = "transparent")
par(mfcol = c(2, 2))
with(datasource.df, {
    
    # plot 1.1
    with(datasource.df, plot(Time, Global_active_power, xlab = "", ylab = "Global active power (kilowatts)", type = "n"))
    with(datasource.df, lines(Time, Global_active_power))
    
    # plot 2.1
    with(datasource.df, plot(Time, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n"))
    with(datasource.df, lines(Time, Sub_metering_1))
    with(datasource.df, lines(Time, Sub_metering_2, col = "red"))
    with(datasource.df, lines(Time, Sub_metering_3, col = "blue"))
    
    # plot 1.2
    with(datasource.df, plot(Time, Voltage, xlab = "datetime", type = "n"))
    with(datasource.df, lines(Time, Voltage))
    
    # plot 2.2
    with(datasource.df, plot(Time, Global_reactive_power, xlab = "datetime", type = "n"))
    with(datasource.df, lines(Time, Global_reactive_power))
})

# closing the device
dev.off()
