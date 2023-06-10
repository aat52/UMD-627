#Q1 ---------------------------------------------------------------------
#importing the dataset
employee_data <- read.csv ("Employee_data.csv")

#Use dataset name, $, then variable name
summary(employee_data)

attach(employee_data)

mean(salary)
36000-34419

#standard error of the mean = population stdev/(sqrt(sample number))
20000/(sqrt(length(salary)))


sd(salary)

#lower.tail = FALSE returns the right wing

pnorm((918.6304+34419.57), 36000, 20000)

c <- sample(salary, 5)
mean(c)
sd(c)
20000/(sqrt(5))

d <- sample(salary, 50)
mean(d)
sd(d)
20000/(sqrt(50))

#trying z score
(34419.57 - 36000)/20000

#Q2 ---------------------------------------------------------------------
survey_data <- read.csv ("Survey_data.csv")
attach(survey_data)

names(survey_data)
Approximately.how.many.TOTAL.Facebook.friends.do.you.have.
hist(Approximately.how.many.TOTAL.Facebook.friends.do.you.have.)

summary(Approximately.how.many.TOTAL.Facebook.friends.do.you.have.)
sd <- sd(Approximately.how.many.TOTAL.Facebook.friends.do.you.have., na.rm = TRUE)
mean <- mean(Approximately.how.many.TOTAL.Facebook.friends.do.you.have., na.rm = TRUE)
length(Approximately.how.many.TOTAL.Facebook.friends.do.you.have.)

#t statistic
tvalue <- (mean-150)/(sd/sqrt(437))
tvalue
t.test(Approximately.how.many.TOTAL.Facebook.friends.do.you.have.)

pt((tvalue),436)
pt((31.016),436)

#cohen's d
(mean-150)/(sd)

#Q4 ---------------------------------------------------------------------
caffeine_data <- read.csv ("caffeine_experiment.csv")

summary(caffeine_data)
attach(caffeine_data)

expected_performance<-as.factor(expected_performance)
summary(expected_performance)

summary(num_correct_answers)

boxplot(expected_performance, horizontal=TRUE)
boxplot(num_correct_answers, horizontal=TRUE)

# perform a two-sample t-test
t.test(num_correct_answers~expected_performance, caffeine_data, subset=expected_performance %in% c("bad", "good"))

df2 <- subset(caffeine_data, expected_performance %in% c("bad", "good"))
t.test(df2$num_correct_answers~df2$expected_performance)


#Q5 ---------------------------------------------------------------------
#anger
N_anger <- 19
mean_anger <- 6.47
stdev_anger <- 2.25

#sad
N_sad <- 29
mean_sad <- 4.05
stdev_sad <- 1.61

t.test.from.summary.data <- function(mean_anger, stdev_anger, N_anger, mean_sad, stdev_sad, N_sad) {
  data1 <- scale(1:N_anger)*stdev_anger + mean_anger
  data2 <- scale(1:N_sad)*stdev_sad + mean_sad
  t.test(data1, data2)
}

t.test.from.summary.data(6.47, 2.25, 19, 4.05, 1.61, 29)

# effect size
#cohen's d
s1<-stdev_anger
s2<-stdev_sad
m1<-mean_anger
m2<-mean_sad
s<-sqrt(((s1^2)+(s2^2))/(2))
(m1-m2)/s


