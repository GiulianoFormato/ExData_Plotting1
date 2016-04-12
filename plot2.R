
####### READING DATASOURCE

####### READING DATASOURCE
rm(list = ls())
source("load_datasource.R")


####### PLOT 2

## printing the plot on the window screen
par(mfrow=c(1,1))
# plot type equal to n (it just prints the plot frame) 
with(datasource.df, plot(Time, Global_active_power, xlab = "", ylab = "Global active power (kilowatts)", type = "n"))
## Please note, the language is set to Italian in my RStudio ("gio", "ven" and "sab" stays for "thu","fri" and "sat")

# now we plot the lines
with(datasource.df, lines(Time, Global_active_power))

# saving the plot in the device
png("plot2.png",height=480, width = 480, units="px", bg = "transparent")
with(datasource.df, plot(Time, Global_active_power, xlab = "", ylab = "Global active power (kilowatts)", type = "n"))
with(datasource.df, lines(Time, Global_active_power))

# closing the device
dev.off()
