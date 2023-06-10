
Write up your answers in a Word document.

## Q1. 

The dataset you used for exercise 2, [Employee_data.csv](https://umd.instructure.com/courses/1330960/files/68799047/download), gives a *sample* of salaries of students who graduated from the MIM program. Suppose we know that the *population* mean and standard deviation of all MIM graduates' salaries are mean = $36,000 and std = $20,000 respectively

a) What is the sample mean? How does it compare to the population mean?

b) What is the standard error of the mean? How does this compare to the standard deviation of the population?

c) Formulate a null and alternative hypothesis about how our sample compares to the population of MIM graduates (see the “Lecture 4 Outline” for an example).

d) Using R, estimate the likelihood of getting a sample as extreme as we did given the null hypothesis. What would you conclude about our sample?

 

## Q2.

Answer these questions about standard errors (which you now know refers to the standard deviation of the sampling distribution).

a) If the standard error of the mean is 10 for N = 12, what is the standard error of the mean for N = 22?

b) If the standard error of the mean is 50 for N = 25, what is it for N = 64?
([relevant section](http://onlinestatbook.com/2/sampling_distributions/samp_dist_mean.html)).

c) If numerous samples are taken from a uniform distribution and a frequency distribution of the means is drawn, what would be the shape of the frequency distribution according to the Central Limit Theorem? ([relevant section](http://onlinestatbook.com/2/sampling_distributions/samp_dist_mean.html)) & [relevant section](http://onlinestatbook.com/2/sampling_distributions/clt_demo.html).

d) True/false: The standard error of the mean is smaller when n = 100 than when n = 50 (n is the sample size). ([relevant section](http://onlinestatbook.com/2/sampling_distributions/samp_dist_mean.html))

e) True/false: The standard error of the mean is smaller when σ = 2.0 than when σ = 2.5 (σ is the standard deviation of the population distribution). ([relevant section](http://onlinestatbook.com/2/sampling_distributions/samp_dist_mean.html)) 

 

## Q3. 

Robin Dunbar a famous anthropologist argued that humans only have the capacity to keep track of so many people at a time. He argued that the maximum number of people humans could keep track of is 150. This number is called [Dunbar's number](https://en.wikipedia.org/wiki/Dunbar%27s_number). Some have interpreted this to mean that any individual person has on average about 150 friends. 

Some technologists have argued that social media and modern information technology allow individuals to keep track of more people. For example, Facebook algorithmically organizes and presents information about our Facebook friends in a centralized feed lowering the costs associated with keeping in contact with all these people.

Fortunately we can evaluate this claim because our colleague Prof. Vitak has collected data on Facebook usage among college students at a large university. Using this [sample data](https://umd.instructure.com/courses/1330960/files/68799102/download?wrap=1) and the [codebook](https://umd.instructure.com/courses/1330960/files/68799101/download?wrap=1)which explains the variables evaluate the technologists's claim.

Using the theoretical population mean and the sample provided conduct a one-sample t-test (with significance level alpha = 0.05) to determine whether individuals have more friends than would be expected by Dunbar's number. (R Hints: 1) if you didn't already do this for Exercise 1, convert .xls to .csv by saving as .csv in Excel this will make it easier to read in to R; 2) relabel the columns that you are going to use to one word labels with no spaces in Excel, this will make it easier to refer to them in R e.g. change "How old are you?" to "age" you don't need to do this with all columns, just the ones you plan to use.)  

Please report your answers to the following questions using full sentences (like you would in a report or paper).

a) Graph the total Facebook friend values for the sample. What is the shape?

b) State your null and alternative hypotheses.

c) Calculate your t-statistic

d) Look up the probability for the t-statistic

e) What is the effect size?

f) What would you conclude?

g) What are the limitations, if any?

 

## Q4. 

Much has been made of the concept of experimenter bias, which refers to the fact that for even the most conscientious experimenters there seems to be a tendency for the data to come out in the desired direction. Suppose we use students as experimenters. All the experimenters are told that participants will be given caffeine before the experiment, but half the experimenters are told that we expect caffeine to lead to good performance, and half are told that we expect it to lead to poor performance. The dependent variable is the number of simple arithmetic problems the participant can solve in two minutes. The obtained data are saved in the week 6 files as “[caffeine experiment](https://umd.instructure.com/courses/1330960/files/68799142?wrap=1)”.

Do a two-sample t-test. What would you conclude from these results?

 

## Q5. 

a) Brescoll and Uhlmann (2008) investigated the hypothesis that when an observer views a videotape of a male expressing anger as opposed to sadness, the male in the anger condition is accorded higher status than the male in the sadness condition. For 19 males the mean and standard deviation (in parentheses) of the anger condition were 6.47 (2.25). For the 29 men in the sad condition the mean and standard deviation were 4.05 (1.61). Is this difference significant?

b) Brescoll and Uhlmann (2008) found the reverse effect for females. They thought that perhaps this latter result was related to the way anger is judged in females compared to males. When they compared judgments of a video of a group of 41 females who expressed anger without an attribution for the source of anger, women’s perceived status had a mean and standard deviation of 3.40 (1.44). When the women on the video gave an external attribution for their anger (an employee stole something), their perceived status had a mean and standard deviation of 5.02 (1.66). Is this difference significant?

c) What is the effect size for question 5b?
