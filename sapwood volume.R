datam <- read.csv("K:\\Environmental_Studies\\hkropp\\Data\\campus\\buckthorn\\green ash olson paper measurements.csv")
tablem <- datam[,c(2,4)]
library(ggplot2)
plot(tablem$DBH..inches., tablem$Sapwood.Volume..ft.3.)
model <- lm(log(tablem$Sapwood.Volume..ft.3.)~ tablem$DBH..inches.)
summary(model)

