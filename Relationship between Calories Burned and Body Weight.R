install.packages("utf8")
library(readxl)
library(ggplot2)

# Load dataset
data <- read_excel("C:/Users/joeyg/Documents/School/2cd yr Standing/DM 1/Research/Final - Groupings/Dataset/Data gathered.xlsx")

# View dataset
head(data)

# Check structure
str(data)

# Linear Regression
model <- lm(`Weight (kg)` ~ `Calories Burned`, data = data)

# Show regression results
summary(model)

# Pearson Correlation
cor.test(data$`Calories Burned`, data$`Weight (kg)`)

# Plot graph
ggplot(data, aes(x = `Calories Burned`, y = `Weight (kg)`)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Relationship between Calories Burned and Body Weight",
    x = "Calories Burned",
    y = "Body Weight (kg)"
  )