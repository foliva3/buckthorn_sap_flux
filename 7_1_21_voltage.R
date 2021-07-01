library(lubridate)
library(ggplot2)
datav <- read.csv("K:\\Environmental_Studies\\hkropp\\Data\\campus\\buckthorn\\sapflux\\campbell\\07_01_2021\\Sapflow_TableTC.dat",
                  skip = 4, header = FALSE, na.strings = "NAN")
tablev <- datav[,c(1,165:166)]
colnames(tablev) <- c("date","Htr1", "Htr2")
datav$date <- ymd_hms(datav$date)
#changes format of dates to POSIXct
Datev <- as.POSIXct(tablev$date, format = "%Y-%m-%d %H:%M")
#Heater 1
ggplot(data = tablev, aes(Datev, Htr1, group = 1))+
  geom_line()+
  scale_x_datetime(date_breaks = "1 day", 
                   date_labels = "%m/%d")+
  ggtitle("Heater 1")
#Heater 2
ggplot(data = tablev, aes(Datev, Htr2, group = 1))+
  geom_line()+
  scale_x_datetime(date_breaks = "1 day", 
                   date_labels = "%m/%d")+
  ggtitle("Heater 2")
