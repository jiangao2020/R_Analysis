install.packages("tidyverse")
install.packages("tidyverse")
install.packages("jsonlite")
library(jsonlite)
library(tidyverse)

mecha_cars<-read.csv('MechaCar_mpg.csv',stringsAsFactors = F)
head(mecha_cars)

plt <- ggplot(mecha_cars,aes(x=mpg,y=vehicle.length))
plt + geom_point()
cor(mecha_cars$mpg,mecha_cars$vehicle.length)

plt <- ggplot(mecha_cars,aes(x=mpg,y=vehicle.weight))
plt + geom_point()
cor(mecha_cars$mpg,mecha_cars$vehicle.weight)

plt <- ggplot(mecha_cars,aes(x=mpg,y=spoiler.angle))
plt + geom_point()
cor(mecha_cars$mpg,mecha_cars$spoiler.angle)

plt <- ggplot(mecha_cars,aes(x=mpg,y=ground.clearance))
plt + geom_point()
cor(mecha_cars$mpg,mecha_cars$ground.clearance)

model <- lm(mpg ~ vehicle.length,mecha_cars)
yvals <- model$coefficients['vehicle.length']*mecha_cars$vehicle.length + model$coefficients['(Intercept)']

plt <- ggplot(mecha_cars,aes(x=vehicle.length,y=mpg))
plt + geom_point() + geom_line(aes(y=yvals), color = "red")

summary(lm(mpg ~ vehicle.length,mecha_cars))
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance,data=mecha_cars))

coil_test<-read.csv('Suspension_Coil.csv',stringsAsFactors = F)

summarize_coil<- coil_test%>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_Deviation=sd(PSI))

summarize_coilbylot <-coil_test%>%group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_Deviation=sd(PSI))

plt<-ggplot(coil_test,aes(x=PSI))
plt+geom_density()

t.test((coil_test$PSI),mu=1500)

t.test(log10(coil_test$PSI),mu=(log10(1500))
