# Loading data

url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'

download.file(url, "datafile.zip")

unzip("datafile.zip")
list.files()
df <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)

# Viewing data

head(df)
summary(df)
str(df)

# Converting dates

df$Date <- as.Date(df$Date, format="%d/%m/%Y")
df$Time <- paste(df$Date, df$Time)
df$Time <- as.POSIXct(df$Time, format="%Y-%m-%d %H:%M:%S")

# Extracting data

df_extract <- subset(df, subset= (df$Date=="2007-02-01" | df$Date=="2007-02-02"))
head(df_extract, 50)

