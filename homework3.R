################################################################################
# Homework 3
# Caroline Devine
# 2/11/2025
################################################################################

################################################################################
# Problem 1: Problem of the Week
################################################################################

help(setdiff) # performs set (asymmetric!) difference --> setdiff(x,y) where x 
              # and y are the vectors. will discard any duplicated values + apply 
              # as.vector to their arguments
              # a vector of same mode as x

# %in% ==> logical vector indicating if a match was located for each element of x
          # true or false
          # returns a vector of positions of (first) matches of its first argument in its second
          # value matching, never returns NA, useful in if conditions

# Numbers packase: Number-Theoretic Functions for prime factorization -> google
library(numbers)
help(numbers)

# A vector with the products of unique prime numbers with one incorrect error
problem.numbers <- c(6, 10, 14, 15, 21,
                    22, 26, 33, 34, 35,
                    38, 39, 46, 51, 55,
                    57, 58, 62, 65, 69,
                    75, 77, 82, 85, 86,
                    87, 91, 93, 94, 95)

unique.prime.numbers <- function(i){
  prime.factorization <- primeFactors(i)
  return (length(prime.factorization) == 2 && length(prime.factorization) == length(unique(prime.factorization)))
}

correct.numbers <- c()
for (x in 1:99){
  if(unique.prime.numbers(x) == T){
    correct.numbers <- c(correct.numbers, x)
  }
}
correct.numbers

incorrect.num <- setdiff(problem.numbers, correct.numbers)

fixed.number <- setdiff(correct.numbers, problem.numbers)
