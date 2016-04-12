
####### READING DATASOURCE
rm(list = ls())
source("load_datasource.R")

####### PLOT 1

## printing the plot on the window screen
par(mfrow=c(1,1))
with(datasource.df, hist(Global_active_power, col = "red", main = "Global active power", xlab = "Global active power (kilowatts)"))

# saving the plot in the device
png("plot1.png",height=480, width = 480, units="px", bg = "transparent")
with(datasource.df, hist(Global_active_power, col = "red", main = "Global active power", xlab = "Global active power (kilowatts)"))

# closing the device
dev.off()
