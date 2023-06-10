#Q1 ---------------------------------------------------------------
completion_data <- read.csv ("MERGED2013_PPv2.csv")

attach(completion_data)
names(completion_data)
summary(completion_data)

sapply(completion_data, class)

cor.test(UGDS, C150_4)
cor.test(AVGFACSAL, C150_4)
cor.test(COSTT4_A, C150_4)
cor.test(SAT_AVG, C150_4)
cor.test(PCTPELL, C150_4)
cor.test(ADM_RATE, C150_4)

lm(C150_4 ~ SAT_AVG)
fit<-lm(C150_4 ~ SAT_AVG)
summary(fit)

plot(UGDS, C150_4, xlab="number of undergraduates in degree programs", ylab="University’s completion rate")
plot(AVGFACSAL, C150_4, xlab="average faculty salary", ylab="University’s completion rate")
plot(COSTT4_A, C150_4, xlab=" average cost per year", ylab="University’s completion rate")

plot(SAT_AVG, C150_4, xlab="average SAT scores", ylab="University’s completion rate")

plot(PCTPELL, C150_4, xlab="percent of students with PELL grants", ylab="University’s completion rate")
plot(ADM_RATE, C150_4, xlab="admission rate", ylab="University’s completion rate")

lm(C150_4 ~ SAT_AVG)
fit<-lm(C150_4 ~ SAT_AVG)
summary(fit)

#Q2 ---------------------------------------------------------------
cherry_data <- read.csv ("CherryDataPart2.csv")

attach(cherry_data)
names(cherry_data)
summary(cherry_data)

sapply(cherry_data, class)

m <- lm(Day.Peak.Bloom ~ JanTemp + FebTemp + MarTemp + JanSnow + FebSnow + MarSnow)
summary(m)

m <- lm(Day.Peak.Bloom ~ FebTemp + MarTemp)
summary(m)

pred = m$fitted.values 
resid = m$residuals 
resid.sd = sd(resid) 
resid[abs(resid)>=3*resid.sd] 
plot(pred,resid) 
hist(resid) 

real_data <- read.csv ("CherryData2016.csv")
names(real_data)
summary(real_data)

y = -0.63*FebTemp + -1.40*MarTemp + 182.85



