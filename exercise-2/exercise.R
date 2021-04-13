## Exercise 2:  vector functions

### ---------- any and all ----------
### These are very useful utility functions for coding

## Write a function that takes a vector of numbers as argument
## and tells if all numbers are even
## Hint: use modulo operator %% and check out 'all' function
allEven <- function(x) {
   all(x %% 2 == 0)
}

## Pass a vector to test if it works correctly
allEven(c(2,4,6))
allEven(c(2,5,4))

## Write a function that takes a vector of numbers as argument
## and tells if among all the numbers there is at least one
## odd number
## Hint: check out 'any' function
anyOdd <- function(x) {
   any(x %% 2 == 1)
}

## Pass a vector to test if it works correctly
anyOdd(c(2,4,6))
anyOdd(c(2,5,4))

### ---------- vector length ----------

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  diff <- abs(length(v1) - length(v2))
  diff.string <- paste('The difference in lengths is', diff)
  return(diff.string)
}  

## Pass two vectors of different length to your `CompareLength` function
## to check if it works as intended 
CompareLength(c(1,2,3), 1:100)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a,b) {
  diff <- length(a) - length(b)
  if(diff > 0) {
    sentence <- paste('Your first vector is longer by', diff, 'elements')
  } else {
    sentence <- paste('Your second vector is longer by', -diff, 'elements')
  }
  return(sentence)
}

## Pass two vectors to your `DescribeDifference` function
## check if it works correctly
DescribeDifference(1:15, 9:17)
