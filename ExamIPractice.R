# CSC 315, Exam I Practice Problems

# set your library path if necessary
library(dplyr)
library(ggplot2)
library(reshape2)
library(readr)

# Note: This is not a comprehensive review, but contains exercises
# covering some of the concepts that will be on the first exam. 
# In addition to these exercises, make sure you understand concepts 
# covered in lecture and on the previous labs.

# Directions: Modify this script to add R code in order to answer the questions 
# and/or complete the steps below. 

# Note: For the exam, you will turn in a Notebook containing code and answers to
# the problems below.


# 1. Create a vector called ages that contains the numbers 21, 24, 32, and 19
ages <- c(21, 24, 32, 19)
# 2. Create a vector called evens that contains all even numbers 
#     between 1 and 100, and the number 200.
events <- seq(0,100, by = 2)

# 3. Write a function in R called min.max which takes a vector x as an argument 
#    and returns a list containing two named elements, the minimum of x and the
#    maximum of x. Use this function to find the minimum and maximum of the 
#    vector ages from problem (1). 
min.max <- function(x){
  maximum <- max(x)
  minimum <- min(x)
  return (list(maximum, minimum))
}
x <- min.max(ages)
x
# 4. Include the following code in your script to create a matrix filled with 
#    5 columns and 20 rows, that is filled with random numbers between 0 and 1.

      m = matrix(runif(100), ncol = 5, nrow = 20)

#   (a) Find the median of each row 
#   (b) Find the median of each column.
     rows <-  apply(m, 1, median)
     rows
     cols <- apply(m, 2, median)
     cols
# 5. The read in an old survey dataset by running the command below:
      
      data <- read.delim("http://pastebin.com/raw/1csmBawE")
      
# 6. Find the correlation between Alcohol Consumption and College GPA and 
#     describe the trend in the data 
      cor(data$Alcohol, data$College.GPA)
      
      # moderate negative correlation between alcohol comnsumption and College GPA

# 7. For those who agree with same sex marriage legalization, find the mean 
#    and standard deviation of College GPA.
      AgreeWithGayMarriage <- filter(data, Same.Sex.Marriage.Legalization == "Agree")
      sd(AgreeWithGayMarriage$College.GPA)
      mean(AgreeWithGayMarriage$College.GPA)
# 8. Construct side-by-side boxplots for FB usage based on whether or not
#    a person agrees or disagrees with same sex marriage 
#    Make sure to label the y-axis and give the chart a meaningful title. 
#    Is there an association between FB usage and views on same sex marriage?
      
  
# 9. Construct a histogram of alcohol consumption, and describe the shape of the histogram. 
#   Is it unimodal, bimodal, or flat. Is it skewed right, skewed left, or symmetric?

      
# 10.  Construct a bar graph showing the proportion of females who agree
#      with marijuana legalization and the proportion that disagree.
#      Give the bar graph a meaningful title and y-axis label. 

      