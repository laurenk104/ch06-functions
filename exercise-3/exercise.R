### Exercise 3: functions and conditionals



## Define a function `compareStrings` that takes in two strings. The
## function should return one of the following sentences as appropriate
##   "Your first string is longer by N characters"
##   "Your second string is longer by N characters"
##   "Your strings are the same length!"
##
## Hint: check out function 'nchar'
compareStrings <- function(s1, s2) {
  diff <- nchar(s1) - nchar(s2)
  if (diff > 0) {
    return(paste("Your first string is longer by", diff, "characters"))
  } else if (diff < 0) {
    return(paste("Your second string is longer by", -diff, "characters"))
  } else {
    return(paste("Your strings are the same length!"))
  }
}

## Call your `describe_difference` function by passing it different length strings
## to confirm that it works. Make sure to check all 3 conditions1
compareStrings("hi", "hello")
compareStrings("hello", "hi")
compareStrings("hi", "hi")

## Define a function `twiceLong` that takes in two character strings, and 
## returns whether or not (e.g., a boolean) the length of one argument
## (i.e. number of characters) is greater
## than or equal to twice the length of the other.
## 
## Hint: compare the length difference to the length of the smaller string
## 
twiceLong <- function(s1, s2) {
  return(nchar(s1) >= nchar(s2)*2 | nchar(s2) >= nchar(s1)*2)
}

# Call your `twiceLong` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
twiceLong("hi", "hello")
twiceLong("hello", "hi")
twiceLong("hi", "hi")

## Create a function 'censor' that replaces expletives with '***' in a sentence.
## It should replace at least two expletives: "moron" and "damned" by '***'.
## You can add more words in this list.
## The function should return the same sentence, just all expletives replaced
## by "***".


## Call your function with a sentency that contains expletives.
## Show that it works.

