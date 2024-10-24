#OKAY LETS GO <3

library(knitr)
library(markdown)
library(rmarkdown)
library(tidyverse)
library(lubridate)
library(readxl)
library(ggplot2)
#library(tidymv)
theme_set(theme_bw())

data <- read_csv("data.csv")

### Create a point plot or a jitter plot
ggplot(data, aes(x = data$Attendance, y = data$School_Type)) +
    geom_jitter(width = 0.2, height = 0) +
    labs(title = "Jitter Plot", x = "Factor Variable", y = "Numeric Variable") +
    theme_minimal()


ggplot(data, aes(x = data$Hours_Studied, y = data$Exam_Score)) +
    geom_jitter(width = 0.2, height = 0) +
    labs(title = "Jitter Plot", x = "Factor Variable", y = "Numeric Variable") +
    theme_minimal()


# Load necessary libraries
library(ggplot2)

# Assuming you have already loaded the dataset as `df`
# Replace `df` with the name of your dataset if different

# Create a point plot
ggplot(data, aes(x = data$Parental_Involvement, y = Exam_Score)) + geom_jitter() 

ggplot(data, aes(x = Hours_Studied, y = Exam_Score, color = Gender)) + geom_jitter() + scale_fill_manual(values = c("blue", "pink"))

ggplot(data, aes(x = data$Gender, y = data$Hours_Studied)) + geom_boxplot() +   labs(title = "Boxplot of Hours Studied by Gender", x = "Gender", y = "Hours Studied")

ggplot(data, aes(x = Exam_Score)) + geom_histogram(binwidth = 1, aes(fill = ..count..)) + scale_fill_gradient(low = "green", high = "blue") + labs(title = "Histogram of Exam Scores by Student", x = "Exam Score" , y = "Counts of Students")
