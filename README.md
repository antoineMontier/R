# R-Learning


## Project architecture
```sh
│ 
├── README.md
├── td2.R
├── td3.R
└── td4.R
```

## Lesson

to launch R : type `$ R` in terminal. `> help(command)` can be useful. `q()` is the exit function.

# Basics
## Operators and math functions

- `+`
- `-`
- `*`
- `/`
- `sqrt()`
- `^`
- `abs()`
- `log()`
- `sin()`
- `cos()`
- `round()`
- `exp()`

are some of the traditional operators.

R also has pre-installed variables such as `pi`

## basic functions

`print()` function prints the value
`edit()` let the user edit the value (in case x is an array for example)

**R doesn't delete variables when close**, use `rm()` instead. use `ls()` to know what are the in-memory variables.

## Data types
- null : NULL
- logical : TRUE/FALSE or T/F
- numeric : 1/.8 ...
- character : 'hello'

data types can be known by using `mode()` function.

## vectors 
4 types : 
collector `c()`
```R
> x <- c(3, 4, 5, 7.8)
> x
[1] 3 4 5 7.8
```
operator `:`
```R
> x <- 1:7
> x
[1] 1 2 3 4 5 6 7 #1 and 7 are included
```
Sequence
```R
> seq(1,4,by=0.5)
[1] 1.0 1.5 2.0 2.5 3.0 3.5 4.0

> seq(1,6,length=5)
[1] 1.00 2.25 3.50 4.75 6.00
```
Scan : basic scanner that gets the input from the terminal.

### operations on vectors
every operations applied to a vector will apply to each slot
```R
> x
[1] 2  4  6  8  9 11 13
> x^2
[1]   4  16  36  64  81 121 169
> x > 7
[1] FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE
```

## statistics functions

- `sum(arr)` calculates the sum of arr elements
- `length(arr)` returns the length of 
- `mean(arr)` calculates the average of the elements
- `sd(arr)` calculates the standard deviation
- `median(arr)` calculates the median of the elements
- `var(arr)` calculates the variance of the elements `= sd(x)^2`
- `summary(arr)`returns a summary of min, 1st quarter, median, average, 3rd quarter, and max.

## Table importation

import a table using `var=read.table('tablename.ext')`. Another option is to just drag the file in Rstudio.

## data.frame
data.frame is exactly equivalent to a excel file. consider the following code for the dimensions : 
```R
$ dim(var)
[1] 52 10 # the var object have 52 lines and 10 columns
$ nrow(val)
[1] 52 # the var object have 52 lines
$ ncol(val)
[1] 10 # the var object have 10 cols

$ var[22, 6] # access the object at line 22 and column 6

$ colnames(val) # returns the names of the columns (usually located above the first line, not neccessary a line)
$ rownames(val) # returns the names of the rows
```

### How to create a data.frame ?
```R
#create the variables to hold the values : 
blood.glucose <- c(15.30, 10.80, 8.10, 19.50, 7.20, 5.30, 9.30, 11.10, 7.50, 12.20, 6.70, 5.20, 19.00, 15.10, 6.70, 4.20, 10.30, 12.50, 16.10, 13.30, 4.90, 8.80, 9.50)
short.velocity <- c(1.76, 1.34, 1.27, 1.47, 1.27, 1.49, 1.31, 1.09, 1.18, 1.22, 1.25, 1.19, 1.95, 1.28, 1.52, 1.12, 1.37, 1.19, 1.05, 1.32, 1.03, 1.12, 1.70)
#insert into a data.frame
diabet = data.frame(blood.glucose, short.velocity)
```

The function `par(mfrow=c(lines, cols))` allow us to display multiple graph at the same time on a window, default mode is `par(mfrow=c(1, 1))`.
## plot functions
plot are function to create a graph from a data frame. they are personalisable, here's how :

```R
$ plot(var[1:2]) # creates a new plot with columns 1 (x-axis) and 2 (y-axis)

$ plot(var$a,var$b, xlab="x-label", ylab="y-label", main="Title (main label)") # more advanced plot

$ plot(var$a,var$b, xlab="x-label", ylab="y-label", main="Title (main label)", type="l") # type="l" stands for a line graphic (time values), default p (points) and last b (both)

points(abs, ord)#adds a point at the specified coordinates
```
also sub (subtitle) col (colors)...

you can get an estimated cumulative distribution function with the `ecdf()` function.
Also known as stairs function.

### Multiple functions on the same plot : 
```R
plot(x, pdf, type="l", col="red")
lines(y, pdy, type="l", col="blue")
```

## boxplot functions
boxplot are functions that allows us to create a boxplot from a column of data frame. In french it's called "boîte à moustache". the middle bold mark is the median value. The bottom border is the first quarter and the upper border is the last quarter. Upper line ("moustache") is the min between max and Q3 + 1.5(Q3 - Q1). Downer line is the max between min and Q1 - 1.5(Q3 - Q1). We can sometimes notice "outliners" : points exceptionnaly high or low.

Here's how to create a boxplot : 
```R
$ boxplot(ozone$maxO3) # creates a boxplot from the O3 column of ozone table
$ boxplot(maxO3~vent,data=ozone) # will create a few boxplot, one for each wind sector in this example
```

## hist functions

hist functions are used to display an histogram of the values of a given data frame. they come with many arguments. Here are some differents commands

```R
hist(variable, freq=TRUE/FALSE)
#freq=TRUE : effectifs are represented by the bars // FALSE : the bars represents frequences
hist(variable, breaks=int)
#breaks stands for the approximative number of classes
hist(variable, label=TRUE/FALSE)
#label=TRUE : value of each bar will is write up the bar
hist(variable, xlab='x-title', ylab='y-title', main='main-title')
hist(variable, col='#FF00FF')
#col stands for the color
```

## 3-Dimension graph
tri-dimension graph can link 3 variables, they come with a library. Here is an example : 
```R
library(lattice)
cloud(maxO3~T12+Vx12, type=c("p", "h"), data=ozone)
```

## Linear Regression
Create an object : 
```R
reg.simple = lm(var-y~var-x, data=<actual_data.frame>)
```
### display the linear regression on the plot (previously created)
abline(reg.simple)
### display informations about the linear regression

```R
summary(reg.simple)
```
- `Call` : Reminds us which function we used (here it's `lm()`).
- `Residuals` : summarizes the residuals of the linear regression (for each point it calculates the difference between the real value and the value computed by the linear regression)
- `Estimate` : corresponds to the B1 and B0 parameters of the linear regression function
- `Std. Error` : calculates standart deviation
- `t-value` : is the output of the student tests (H0, H1).
- `Pr(>|t|)` : is the p-value of the variable (p-value = 0.05 => 95% confidence for example)

```R
coef(reg.simple)
```
gives us B0 and B1 (in this order) according the equation : `Y = B0 + B1*X`.
```R
residuals(reg.simple)
```
provides us with the residuals for each point show the difference between the real point and the estimated value of the point.
```R
rstandard(reg.simple)
```
almost the same as up but for each point there is a more advanced calulation involving std deviation that leads to an interesting result. If the standard residuals are less than -3 or greater than 3, there are outliners.
`rstudent(reg.simple)` would provide us with the student residuals.

### Prediction
```R
predict(reg.simple,<data_frame_of_1_row_to_predict>,interval="pred")
```
here is an example of creation : 
```R
#-- create a data.frame
xnew <- matrix(20, nrow=1)
xnew <- as.data.frame(xnew)
#-- submit the data frame for prediction
predict(reg.simple,xnew,interval="pred")
```

# Probabilities laws

## Functions
For each probabiliy law, there are 4 functions : 
- `d<law>()` density function for a continous probability function. =! P[X = k] if discrete
- `p<law>()` repartition function (FDR) : P[X < `x`]
- `q<law>()` quantiles function : returns the smallest `u` as F(`u`) <= `p` ; with `F` the FDR of the actual law
- `r<law>()` : generates random distributions, independant of the `<law>` distribution

## The laws
1. binomial `binom` (`size`, `prob`)
2. exponential `exp` (1/`mean`)
3. fisher `f` (`df1`, `df2`)
4. geometric `geom` (`prob`)
5. chi-squared`chisq` (`df`)
6. normal `norm` (`mean`, `sd`)
7. poisson `pois` (`lambda`)
**8**. student `t` (`df`)

## Examples

```R
x=seq(-3,3,0.01) # creates a set of number from -3 to 3 with a .01 pace
pdf=dnorm(x) # get the image of each x value (density) > bell function
pdf=pnorm(x) # get the image of each x value (FDR) > integral function
pdf=pnorm(x) # get the quantile of each x value
pdf=rnorm(x) # get random val for each x value
plot(x,pdf,type="l") # displays on a line plot the values
```


`pbinom(s,t,p)` return the probability of having `s` success or **less** with `t` tries on a `p` probability.

it's the same as this :
```R
dbinom(0, 5, 0.5) + dbinom(1, 5, 0.5) + dbinom(2, 5, 0.5) + dbinom(3, 5, 0.5) + dbinom(4, 5, 0.5)
```

`qt(1-a,df)` returns the value of the student-distribution with `df` as a degree of freedom and `a` as the upper %. Used in hypothesis and confidence intervals.
`qchisq(1-a, df)` is the same but with Khi-squared distribution


## Central-Limit theorem (iid)

```R
n_ech = 50000
sz_ech = 300
prob = 1/2

avgs = rep(0, n_ech)
for(i in 1:n_ech){
  ech = rbinom(n=sz_ech, p=prob, size=1)
  avgs[i] = mean(ech)
}

hist(avgs, freq=F)  # behave as a Normal law
mean(avgs)          # almost = prob
var(avgs)           # almost = prob*(1-prob) / sz_ech
```









