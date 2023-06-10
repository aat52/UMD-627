#Q1 ---------------------------------------------------------------------
#importing the dataset
song_data <- read.csv ("MillionSongsFinal.csv")

#Use dataset name, $, then variable name
summary(song_data)

attach(song_data)
colnames(song_data)
genre<-as.factor(genre)
summary(genre)

aggregate(duration, list(genre), FUN = mean)
sd = aggregate(duration, list(genre), FUN = sd)
aggregate(duration, list(genre), FUN = median)
aggregate(duration, list(genre), FUN = min)
aggregate(duration, list(genre), FUN = max)
aggregate(duration, list(genre), FUN = mean)

tapply(duration, genre, mean)
hist(duration)
qqnorm(duration)  
boxplot(duration~genre)

library(car)
leveneTest(duration~genre)

aov(duration~genre) 
model = aov(duration~genre) 

summary(model) 

pairwise.t.test(duration, genre, p.adjust = "bonferroni")

#Q2 ---------------------------------------------------------------------
#importing the dataset
Liddle_data <- read.csv ("LiddleData.csv")

#Use dataset name, $, then variable name
summary(Liddle_data)

attach(Liddle_data)
colnames(Liddle_data)

gender<-as.factor(gender)
disclose<-as.factor(disclose)
summary(gender)
summary(disclose)

hist(ratings)

#IV: gender, disclose (Bio/drug)
#DV: ratings (BP)

summary(aov(ratings~disclose + gender))
summary(aov(ratings~disclose*gender))

tapply (ratings, disclose, mean)  
tapply (ratings, gender, mean)  
tapply (ratings, list("disclose"=disclose, "gender"=gender), mean) 

TukeyHSD(aov(ratings~disclose*gender), which="gender")
TukeyHSD(aov(ratings~disclose*gender), which="disclose")

interaction.plot(disclose, gender, ratings)

install.packages('tidyverse')
library(tidyverse)

# Box plot with two factor variables
boxplot(ratings ~ disclose * gender, col = c("#00AFBB", "#E7B800"), ylab="")
        
        ggplot(df,aes(x=disclose,y=ratings, fill=gender)) + stat_summary(fun.y="mean", geom="bar",position="dodge")
        
        gender2cat <- factor(ifelse(gender == "No_gender_Served", "no", "yes"))
        
        summary(gender2cat)
        
        summary (aov(ratings~disclose+gender2cat))
        summary (aov(ratings~disclose*gender2cat))
        
        interaction.plot(disclose, gender2cat, ratings)
        interaction.plot(disclose, gender, ratings)
        