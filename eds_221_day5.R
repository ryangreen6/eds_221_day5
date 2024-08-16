install.packages("testthat")
install.packages("devtools")
install.packages("remotes")

library(testthat)
library(devtools)
library(remotes)

# creating a random function that we can test out

mean_range <- function(df){
  col_means <- apply(X=df, MARGIN=2, FUN=mean, na.rm=TRUE)
  col_mean_max <- max(col_means)
  col_mean_min <- min(col_means)
  
  return(c(col_mean_min, col_mean_max))
}

# now running this function on mtcars

mean_range(mtcars)

# now running tests from the testthat package

expect_length(mean_range(mtcars), 2)

# our test passed because we didn't get anything back in the console. We expect to receive 2 values back, and we did. 

expect_length(mean_range(mtcars), 3)

# now changing our expected values to 3, we receieve an error in the console. 

# now here is a statement that we expect to be true:

mean_range(mtcars)[1] < mean_range(mtcars)[2]

# and testing it:

expect_true(mean_range(mtcars)[1] < mean_range(mtcars)[2])

# test passed, no error message in console. Now let's run a test we know will fail:

expect_true(mean_range(mtcars)[1] > mean_range(mtcars)[2]) # changing < to >

# received error message! 

# moving on..

# sourcing scripts-- building and saving functions or blocks of code that you can source for future projects. Why write all new code when you can use working code you've already written?

# writing an example function for the maximum sustainable harvest of fish from a fishery..

max_sustainable_harvest <- function(K, r){
  harvest <- (K*r)/4
  return(harvest)
}

# trying it out:

max_sustainable_harvest(K=36000, r=0.31)

# output 2790

# Now save this function in it's own R script. Needs to be in a separate R file to be able to be sourced. In this example, our function is stored in an R script called max_sustainable_harvest.R, and placed in the folder "src". This may be different for your directory, so change the file path accordingly.
# Now we can source this function. Clear environment, and run this code:

source(here::here("src", "max_sustainable_harvest.R"))

# now you can see the function appears in our environment, and we can use it!

max_sustainable_harvest(K=36000, r=0.31)

# let's say you have a bunch of functions that you use for projects.. you can create a repository storing those functions, fork it, and then build a new project off that 'skeleton'. 


























