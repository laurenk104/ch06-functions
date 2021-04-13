### Exercise 3: functions and conditionals



## Define a function `compareStrings` that takes in two strings. The
## function should return one of the following sentences as appropriate
##   "Your first string is longer by N characters"
##   "Your second string is longer by N characters"
##   "Your strings are the same length!"
##
## Hint: check out function 'nchar'
compareStrings <- function(s1, s2) {
   l1 <- nchar(s1)
   l2 <- nchar(s2)
   if(l1 > l2) {
      res <- paste("your first string is longer by", l1-l2, "characters")
   } else if(l2 > l1) {
      res <- paste("your second string is longer by", l2-l1, "characters")
   } else
      res <- "Your strings are of the same length!"
   return(res)
}


## Call your `describe_difference` function by passing it different length strings
## to confirm that it works. Make sure to check all 3 conditions1
compareStrings("abd", "dddd")
compareStrings("abduuss", "dddd")
compareStrings("abduuss", "ddddddd")



## Define a function `twiceLong` that takes in two character strings, and 
## returns whether or not (e.g., a boolean) the length of one argument
## (i.e. number of characters) is greater
## than or equal to twice the length of the other.
## 
## Hint: compare the length difference to the length of the smaller string
## 
twiceLong <- function(s1, s2) {
   ## compute lengths
   l1 <- nchar(s1)
   l2 <- nchar(s2)
   if(l1 < l2) {
      ## s1 is shorter: the difference must be equal to l1
      return(l2 - l1 >= l1)
   }
   ## that was not true: hence l2 shorter, the difference mus
   ## equal to l2
   return(l1 - l2 >= l2)
}


# Call your `twiceLong` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
twiceLong("abc", "aaggdd")
twiceLong("abc", "aaggd")
twiceLong("aaggd", "abc")
twiceLong("aaggdd", "abc")
twiceLong("aaggdd", "ab")




## Create a function 'censor' that replaces expletives with '***' in a sentence.
## It should replace at least two expletives: "moron" and "damned" by '***'.
## You can add more words in this list.
## The function should return the same sentence, just all expletives replaced
## by "***".
censor <- function(s) {
   ## Do with a for-loop.
   ## If students do not know the loop, can also just put the gsub
   ## functions underneath each other.
   expletives <- c("moron", "damned")
   for(expletive in expletives) {
      s <- gsub(expletive, "***", s)
   }
   s
}


## Call your function with a sentency that contains expletives.
## Show that it works.
censor("You are a damned moron!")
