
####### READING DATASOURCE
setwd("~/Data Science Spec/R practice/4.Exploratory Graphs/Assignment Week1/")
rm(list = ls())
source("load_datasource.R")


####### PLOT 3

## printing the plot on the window screen
par(mfrow=c(1,1))
# plot type equal to n (it just prints the plot frame) 
with(datasource.df, plot(Time, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n"))
## Please note, the language is set to Italian in my RStudio ("gio", "ven" and "sab" stays for "thu","fri" and "sat")

# now we plot the lines
with(datasource.df, lines(Time, Sub_metering_1))
with(datasource.df, lines(Time, Sub_metering_2, col = "red"))
with(datasource.df, lines(Time, Sub_metering_3, col = "blue"))
legend("topright",  lty=c(1,1,1), col = c("red", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_2"))

# saving the plot in the device
png("plot3.png",height=480, width = 480, units="px", bg = "transparent")
with(datasource.df, plot(Time, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n"))
with(datasource.df, lines(Time, Sub_metering_1))
with(datasource.df, lines(Time, Sub_metering_2, col = "red"))
with(datasource.df, lines(Time, Sub_metering_3, col = "blue"))
legend("topright",  lty=c(1,1,1), col = c("red", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_2"))

# closing the device
dev.off()
