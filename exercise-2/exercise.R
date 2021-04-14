## Exercise 2:  vector functions

### ---------- any and all ----------
### These are very useful utility functions for coding


## Write a function that takes a vector of numbers as argument
## and tells if all numbers are even
## Hint: use modulo operator %% and check out 'all' function
allEven <- function(vector) {
  all(vector %% 2 == 0);
}

## Pass a vector to test if it works correctly
v1 <- c(2,4,6)
v2 <- c(2,5,4)
allEven(v1)
allEven(v2)

## Write a function that takes a vector of numbers as argument
## and tells if among all the numbers there is at least one
## odd number
## Hint: check out 'any' function
anyOdd <- function(vector) {
  all(vector %% 2 == 1);
}

## Pass a vector to test if it works correctly
anyOdd(v1)
anyOdd(v2)

### ---------- vector length ----------

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  length <- abs(length(v1) - length(v2))
  return(paste("The difference in lengths is", length))
}

## Pass two vectors of different length to your `CompareLength` function
## to check if it works as intended 
CompareLength(v1,v2)
CompareLength(v1,c(1))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  length <- length(v1) - length(v2)
  if (length < 0) {
    return(paste("Your second vector is longer by", abs(length), "elements"))
  } else {
    return(paste("Your first vector is longer by", length, "elements"))
  }
}

## Pass two vectors to your `DescribeDifference` function
## check if it works correctly
DescribeDifference(c(1), v1)
DescribeDifference(v1, c(1))

