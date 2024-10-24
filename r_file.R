library(readxl)
library(ggplot2)
library(RColorBrewer)
data <- read.csv("data.csv")

## Opgave 2 point plot ##
data$Hours_Studied

ggplot(data, aes(x = data$Gender, y = data$Hours_Studied)) + geom_boxplot() +   labs(title = "Boxplot of Hours Studied by Gender", x = "Gender", y = "Hours Studied")


## Opgave 3 histogram plot ##

ggplot(data, aes(x = Exam_Score)) + geom_histogram(binwidth = 1, aes(fill = ..count..)) + scale_fill_gradient(low = "green", high = "blue") + labs(title = "Histogram of Exam Scores by Student", x = "Exam Score" , y = "Counts of Students")
