#Q1
#importing the dataset
survey_data <- read.csv ("Survey_data.csv")
attach(survey_data)

#check the columns
colnames(survey_data)

#count missing values
sum(is.na(survey_data))

#hist for time per day spent on Facebook
hist(In.the.past.week..on.average..approximately.how.much.time.PER.DAY.have.you.spent.actively.using.Facebook., main = 'Time Per Day Spent On Facebook', xlab = "Time Per Day")

#hist for self satisfaction
hist(On.the.whole..I.am.satisfied.with.myself., main = 'Self Satisfaction', xlab = "Self Satisfaction Rating")

#descriptive stats
summary(In.the.past.week..on.average..approximately.how.much.time.PER.DAY.have.you.spent.actively.using.Facebook.)
summary(On.the.whole..I.am.satisfied.with.myself.)
#since there are NAs in the file, we have to find a way to calculate the sd by dealing with them
#while removing NAs isn't usually a good idea, I will go ahead and do it here to avoid replacing the NAs with the mean
sd(In.the.past.week..on.average..approximately.how.much.time.PER.DAY.have.you.spent.actively.using.Facebook., na.rm = TRUE)
sd(On.the.whole..I.am.satisfied.with.myself., na.rm = TRUE)

#mode is a little more complicated, we can look at the histogram fro a visual result, but i can also count for each value to find the mode
x = 1
while (x <= 4) {
  print(length(which(In.the.past.week..on.average..approximately.how.much.time.PER.DAY.have.you.spent.actively.using.Facebook. == x)))
  x= x+1
} 
x = 1
while (x <= 13) {
  print(length(which(On.the.whole..I.am.satisfied.with.myself. == x)))
  x= x+1
} 

# -----------------------------------------------------------------------
#Q2
#importing the dataset
employee_data <- read.csv ("Employee_data.csv")

#Use dataset name, $, then variable name
summary(employee_data)

#Attach data set and only use variable name
attach(employee_data)
summary(salary)

#creating a histogram
hist (salary)

#creating a qq-plot
qqnorm (salary)
qqline(salary)

#boxplot
boxplot(salary)


#calculating normal distribution for 60000
#lower.tail = FALSE returns the right wing
pnorm(60000, mean(salary), sd=sd(salary), lower.tail=FALSE) 

#calculating normal distribution for 25k-40k
#lower.tail = TRUE returns the area in the left wing of the distribution 
pnorm(40000, mean(salary), sd=sd(salary), lower.tail=TRUE)-pnorm(25000, mean(salary), sd=sd(salary), lower.tail=TRUE) 

