## Q1.

One measure of a university's effectiveness is how many of its students graduate. Universities can try to improve rates of completion by offering services, such as advising, reduced class size, and better faculty; adjusting incentives, such as cost to students; and by selective admission, such as percent of students admitted. You can investigate some of these factors, because the federal government made this data available here (MERGED2013_PPv2.csv). 

a) Which of the following variables is related to a University’s completion rate (C150_4): number of undergraduates in degree programs (UGDS), average faculty salary (AVGFACSAL), average cost per year (COSTT4_A), average SAT scores (SAT_AVG), percent of students with PELL grants (low income families, PCTPELL), admission rate (ADM_RATE)? Provide summary of statistical results for all tests (r, df, p) and describe the relationships between the predictors and outcome in sentences (including direction of relationship).

b) Identify and plot the strongest relationship between the predictor variables and the outcome variable. Label your axes with understandable labels (e.g. “Percent of students receiving PELL grants” not “d$PCTPELL”).

c) Did all the correlation tests have the same degrees of freedom? Discuss why or why not.

d) Run a regression model using the two variables from question 2. Report the coefficient for the predictor variable and it's p value.

 

## Q2. 

For this question you will use the [cherry blossom data set](https://umd.instructure.com/courses/1330960/files/70395134?wrap=1).

The goal of this assignment is to build the best possible linear model to explain the day of peak bloom. Using the data from 1921 to 2015 (*** note do not include 2016 data) build a multiple linear regression model to predict the Peak Bloom Date. 

a) Construct a multiple linear regression model including all predictors for snow and temperature for January, February, and March. Identify the predictors that are significantly related to Peak Bloom Date.

b)  Rerun the regression model only including significant predictors. What is the estimated  regression equation? Describe the relationship between each predictor and the outcome (remember to consider, significance, sign, and size). How much variance is explained by this model? 

c) Plot the relationship between your predicted values and your residuals using a scatterplot (see the lecture outline for R code). Do the residuals seem to vary consistently at all predicted values?

d) Use your estimated regression equation from part b to predict the Peak Bloom Date for 2016. How accurate is the prediction?  The actual Peak Bloom Date from 2016 is available in this [dataset](https://umd.instructure.com/courses/1330960/files/68799111?wrap=1). 
