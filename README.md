# R-Learning

to launch R : type `$ R` in terminal. `> help()` can be useful. `q()` is the exit function.

# Basics
## Operators and math functions

- +
- -
- *
- /
- sqrt()
- ^
- abs()
- log()
- sin()
- cos()
- round()
- exp()

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


