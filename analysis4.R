# Exploratory Data Analysis (EDA)
# Dataset: Airquality
# Objective: Basic data inspection, quality check, and descriptive statistics

# --- Load Libraries and Data ---
library(tidyverse)
data <- read_csv("hw1_data.csv")

# --- Unit 1: Initial Data Inspection ---
dim(data)       # Check number of rows and columns
head(data)      # View first 6 rows
names(data)     # List column names
str(data)       # Examine data structure types

# --- Unit 2: Data Quality Assessment ---
summary(data)             # Statistical summary for all variables
colSums(is.na(data))      # Identify missing values (NA count per column)

# --- Unit 3: Global Descriptive Statistics ---
# Calculating the mean for Ozone while removing NAs
# Result: 42.12931
mean(data$Ozone, na.rm = TRUE)

# --- Unit 4: Conditional Subsetting (Specific Analysis) ---
# Filtering data for Ozone > 31 and Temp > 90 to find mean Solar Radiation
sub_data <- subset(data, Ozone > 31 & Temp > 90)
mean(sub_data$Solar.R)    # Result: 212.8

# --- Unit 5: Time-Specific Analysis (Month of May) ---
# Finding the maximum Ozone level recorded in May
may_data <- subset(data, Month == 5)
max(may_data$Ozone, na.rm = TRUE) # Result: 115

# --- Unit 6: Visual Exploration ---
# Plotting the distribution of Ozone levels
hist(data$Ozone, 
     main = "Ozone Distribution", 
     xlab = "Ozone Concentration")
