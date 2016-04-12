
# setting env
library(sqldf)

filename <- "electric_power_consumption.zip"

# Download and unzip the dataset if it has not been done yet:
if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileURL, filename)
}  
if (!file.exists("household_power_consumption.txt")) { 
    unzip(filename) 
}

# opening the connection to the file
datasource <- file("household_power_consumption.txt") 
attr(datasource, "file.format") <- list(sep = ";", header = TRUE) 

# use sqldf to read it in keeping only indicated rows 
datasource.df <- sqldf("select * from datasource where Date in ('1/2/2007','2/2/2007')") 

# closing the connection to the file
close(datasource)

# showing some data
# head(datasource.df)

# converting the Date and Time variables to Date/Time classes
datasource.df$Date <- with(datasource.df, as.Date(Date,"%d/%m/%Y"))
datasource.df$Time <- with(datasource.df, strptime(paste(Date, Time), "%Y-%m-%d %H:%M:%S"))

# str(datasource.df) # variables classes <- c("Date","Time","numeric",..,"numeric")
# Then, NA could have been introduced by coertion when the value of any variable is equal to "?"
# removing incomplete cases
if (!any(is.na(datasource.df[,1:9])))
    datasource.df <- na.omit(datasource.df)
