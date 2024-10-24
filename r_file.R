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

# Remove outliers based on the IQR method for numeric columns
remove_outliers <- function(df, cols) {
  for (col in cols) {
    Q1 <- quantile(df[[col]], 0.25)
    Q3 <- quantile(df[[col]], 0.75)
    IQR <- Q3 - Q1
    df <- df %>% filter(df[[col]] >= (Q1 - 1.5 * IQR) & df[[col]] <= (Q3 + 1.5 * IQR))
  }
  return(df)
}

numeric_cols <- sapply(data, is.numeric)
data <- remove_outliers(data, names(data)[numeric_cols])

#Opgave 1
ggplot(data, aes(x = Hours_Studied, y = Exam_Score, color = Gender)) + geom_jitter() + scale_fill_manual(values = c("blue", "pink"))
#Opgave 2
ggplot(data, aes(x = data$Gender, y = data$Hours_Studied)) + geom_boxplot() +   labs(title = "Boxplot of Hours Studied by Gender", x = "Gender", y = "Hours Studied")

#Opgave 3
ggplot(data, aes(x = Exam_Score)) + geom_histogram(binwidth = 1, aes(fill = ..count..)) + scale_fill_gradient(low = "green", high = "blue") + labs(title = "Histogram of Exam Scores by Student", x = "Exam Score" , y = "Counts of Students")

#Opgave 4
ggplot(data, aes(x=Parental_Involvement, fill = Parental_Involvement))+
  geom_bar() +
  labs(title="Number of students sorted by Parental involvement", x="Parental involvement", y="Students")+
  ylim(0,4000) +
  theme(legend.position = "none",axis.text = element_text(size = 12))
#Bare et bud på et polished plot


#Opgave 5
model <- lm(Exam_Score ~ Hours_Studied + Attendance + Previous_Scores, data = data)
summary(model)

#Opgave 6

library(dotwhisker)
library(stargazer)

# Visualize the model using dotwhiskers
dwplot(model) + 
    theme_minimal() + 
    labs(title = "Coefficient Estimates with 95% CIs", x = "Coefficient", y = "Predictors")

# Summarize the model using stargazer
stargazer(model, type = "text", title = "Regression Results", out = "model_summary.txt")

#Opgave 7



#Opgave 8


