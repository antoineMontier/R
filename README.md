# R-Learning

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

## plot functions
plot are function to create a graph from a data frame. they are personalisable, here's how :

```R
$ plot(var[1:2]) # creates a new plot with columns 1 (x-axis) and 2 (y-axis)

$ plot(var$a,var$b, xlab="x-label", ylab="y-label", main="Title (main label)") # more advanced plot

$ plot(var$a,var$b, xlab="x-label", ylab="y-label", main="Title (main label)", type="l") # type="l" stands for a line graphic (time values), default p (points) and last b (both)

```
also sub (subtitle) col (colors)...

## boxplot functions
boxplot are functions that allows us to create a boxplot from a column of data frame. In french it's called "bo??te ?? moustache". the middle bold mark is the median value. The bottom border is the first quarter and the upper border is the last quarter. Upper line ("moustache") is the min between max and Q3 + 1.5(Q3 - Q1). Downer line is the max between min and Q1 - 1.5(Q3 - Q1). We can sometimes notice "outliners" : points exceptionnaly high or low.

Here's how to create a boxplot : 
```R
$ boxplot(ozone$maxO3) # creates a boxplot from the O3 column of ozone table
$ boxplot(maxO3~vent,data=ozone) # will create a few boxplot, one for each wind sector in this example
```

## hist functions

hist functions are used to display an histogram of the values of a given data frame. they come with many arguments. Here are some differents commands

```R
hist()
```