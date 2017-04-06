# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"


CompareLength <- function(a,b) {
  la <-length(a)
  lb <- length(b)
  n = abs(la - lb)
  answer <- paste("The difference in lengths is", n)
  return(answer)
}
# Pass two vectors of different length to your `CompareLength` function
a <- c(2,333,6,4,5,2)
b <- c(5,6,7,8,3,2,2,3,45,6,6,7,8,8,9)
CompareLength(a,b)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(c,d) {
  n <- abs(length(c) - length(d))
  if(length(c) > length(d)) {
    c1 <- paste("Your first vector is longer by ", n, " elements") 
    return(c1) 
  } elseif (length(c) < length(d)) {
    c2 <- paste("Your second vector is longer by ", n, " elements")
    return(c2)
  } else {
    c3 <- paste("Both vectors have ", length(c), " elements")
    return(c3)
  }
}

# Pass two vectors to your `DescribeDifference` function
c <- c(3,6,4,1,3,4,9,1,3)
b <- c(0,1,0,5,4,9,6,6,0,0,8)
DescribeDifference(c,d)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer