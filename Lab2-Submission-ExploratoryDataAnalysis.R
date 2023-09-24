# HEAD
###STEP ONE:###
# Install renv:
if (!is.element("renv", installed.packages()[, 1])) {
  install.packages("renv", dependencies = TRUE)
}
require("renv")


.libPaths()


# Command to see which packages are available in
# each library:
lapply(.libPaths(), list.files)

# Execute the following code to reinstall the specific package versions
# recorded in the lockfile:
renv::restore()

# One of the packages required to use R in VS Code is the "languageserver"
# package. It can be installed manually as follows if you are not using the
# renv::restore() command.
if (!is.element("languageserver", installed.packages()[, 1])) {
  install.packages("languageserver", dependencies = TRUE)
}
require("languageserver")


###STEP TWO & THREE: LOADING DATASETS###
#load the dataset here
library(readr)
student_data <- read_csv("data/student.data.csv")
View(student_data)

if (!is.element("readr", installed.packages()[, 1])) {
  install.packages("readr", dependencies = TRUE)
}


## STEP FOUR & FIVE: PREVIEWING THE DATASET
# Dimensions refer to the number of observations (rows) and the number of
# attributes/variables/features (columns). Execute the following commands to
# display the dimensions of your datasets:

dim(student_data)
# >>>>>>> 2965d9f7efffb12b0423d5b3409a34df8bd0e813


#STEP 6:IDENTIFYING THE DATA TYPES
sapply(student_data, class)


#STEP 7:Identify the number of instances that belong to each class.
student_data_freq <- student_data$class_group
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$gender
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$YOB
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$regret_choosing_bi
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$drop_bi_now
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$motivator
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$read_content_before_lecture
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$anticipate_test_questions
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$answer_rhetorical_questions
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$find_terms_I_do_not_know
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$copy_new_terms_in_reading_notebook
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$take_quizzes_and_use_results
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$reorganise_course_outline
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$write_down_important_points
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$space_out_revision
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$studying_in_study_group
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$schedule_appointments
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$goal_oriented
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$spaced_repetition
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$testing_and_active_recall
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$interleaving
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$categorizing
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$retrospective_timetable
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$cornell_notes
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$sq3r
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$commute
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$study_time
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$repeats_since_Y1
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$paid_tuition
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$free_tuition
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$extra_curricular
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$sports_extra_curricular
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$exercise_per_week
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$meditate
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$pray
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$internet
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$laptop
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$family_relationships
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$friendships
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$romantic_relationships
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$spiritual_wellnes
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$financial_wellness
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$health
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$day_out
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$night_out
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$alcohol_or_narcotics
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$mentor
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)

student_data_freq <- student_data$mentor_meetings
cbind(frequency = table(student_data_freq),
      percentage = prop.table(table(student_data_freq)) * 100)


#STEP 8: Calculate the mode
student_data_classgroup_mode <- names(table(student_data$class_group))[
  which(table(student_data$class_group) == max(table(student_data$class_group)))
]
print(student_data_classgroup_mode)

### STEP 9. Measure the distribution of the data for each variable ----
summary(student_data)


### STEP 10. Measure the standard deviation of each variable ----



sapply(student_data[, c(78, 79, 80, 
                         81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
                         91, 92, 93, 94,96, 97, 98, 99)], sd)


### STEP 11. Measure the variance of each variable ----

sapply(student_data[, c( 78, 79, 80, 
                         81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
                         91, 92, 93, 94,96, 97, 98, 99)], var)


### STEP 12. Measure the kurtosis of each variable ----
if (!is.element("e1071", installed.packages()[, 1])) {
  install.packages("e1071", dependencies = TRUE)
}
require("e1071")

sapply(student_data[, c( 78, 79, 80, 
                         81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
                         91, 92, 93, 94,96, 97, 98, 99)], kurtosis, type = 2)

### STEP 13. Measure the skewness of each variable ----

sapply(student_data[, c(78, 79, 80, 
                         81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
                         91, 92, 93, 94,96, 97, 98, 99)], skewness, type = 2)

## STEP 14. Measure the covariance between variables ----

student_data_cov <- cov (student_data[, c(78, 79, 80, 
                         81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
                         91, 92, 93, 94,96, 97, 98, 99)])

View(student_data_cov)

## STEP 15. Measure the correlation between variables ----

student_data_cor <- cor (student_data[, c(78, 79, 80, 
                                           81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
                                           91, 92, 93, 94,96, 97, 98, 99)])
View(student_data_cor)

##STEP 16. Perform ANOVA on the “student_data” dataset ----

student_data_one_way_anova <- aov (TOTAL = CourseworkTOTAL + EXAM (100%) ~ Absenteesim_Percentage , data = student_data )
summary(student_data_one_way_anova)


### STEP 17. Create Histograms for Each Numeric Attribute ----
# Identify numeric columns
# Identify numeric columns
numeric_columns <- sapply(student_data, is.numeric)

# Select only the numeric columns
numeric_data <- student_data[, numeric_columns]

# Remove any non-numeric values and convert to numeric
numeric_data <- sapply(numeric_data, function(x) ifelse(is.na(as.numeric(x)), NA, as.numeric(x)))

# Remove columns with all NA values (non-numeric columns)
numeric_data <- numeric_data[, colSums(is.na(numeric_data)) < nrow(numeric_data)]

# Define the number of bins for histograms
num_bins <- 20

# Create histograms for numeric variables
par(mfrow = c(2, 2))  # Adjust the layout based on the number of numeric variables
for (i in 1:ncol(numeric_data)) {
  if (!all(is.na(numeric_data[, i]))) {  # Check if there are no NA values in the column
    hist(numeric_data[, i], main = names(numeric_data)[i], breaks = num_bins)
  }
}


# The name suggesting what the histogram is for
par(mfrow = c(1, 3))
student_regretting <- as.numeric(unlist(student_data[, 4]))
hist(student_regretting, main = names(student_data)[4])

student_read_contet <- as.numeric(unlist(student_data[, 7]))
hist(student_read_contet, main = names(student_data)[7])

student_study_time <- as.numeric(unlist(student_data[, 27]))
hist(student_study_time, main = names(student_data)[27])

student_repeats <- as.numeric(unlist(student_data[, 28]))
hist(student_repeats, main = names(student_data)[28])

student_with_internet <- as.numeric(unlist(student_data[, 36]))
hist(student_with_internet, main = names(student_data)[36])

student_avg_evaluation <- as.numeric(unlist(student_data[, 75]))
hist(student_avg_evaluation, main = names(student_data)[75])

student_avg_learning <- as.numeric(unlist(student_data[, 76]))
hist(student_avg_learning, main = names(student_data)[76])

student_total <- as.numeric(unlist(student_data[, 98]))
hist(student_total, main = names(student_data)[98])

### STEP 18. Create Box and Whisker Plots for Each Numeric Attribute ----

par(mfrow = c(1, 3))
for (i in 4:6) {
  boxplot(student_data[, i], main = names(student_data)[i])
}
#Avg course evaluation
boxplot(student_data[, 75], main = names(student_data)[75])

par(mfrow = c(1, 7))
for (i in 60:72) {
  boxplot(student_data[, i], main = names(student_data)[i])
}
par(mfrow = c(1, 3))
#learning
boxplot(student_data[, 76], main = names(student_data)[76])
#Totals
par(mfrow = c(1, 2))

boxplot(student_data[, 98], main = names(student_data)[98])


### STEP 19. Create Bar Plots for Each Categorical Attribute ----

#Barplot for all categorical data
par(mfrow = c(1, 6))
for (i in 1:6) {for (i in 1:6) {
  barplot(table(student_data[, i]), main = names(student_data)[i])
}
  barplot(table(student_data[, i]), main = names(student_data)[i])
}
for (i in 7:12) {
  barplot(table(student_data[, i]), main = names(student_data)[i])
}
for (i in 13:18) {
  barplot(table(student_data[, i]), main = names(student_data)[i])
}
for (i in 25:30) {
  barplot(table(student_data[, i]), main = names(student_data)[i])
}
for (i in 31:36) {
  barplot(table(student_data[, i]), main = names(student_data)[i])
}
for (i in 37:42) {
  barplot(table(student_data[, i]), main = names(student_data)[i])
}
for (i in 43:48) {
  barplot(table(student_data[, i]), main = names(student_data)[i])
}
for (i in 49:54) {
  barplot(table(student_data[, i]), main = names(student_data)[i])
}
for (i in 55:60) {
  barplot(table(student_data[, i]), main = names(student_data)[i])
}
for (i in 61:66) {
  barplot(table(student_data[, i]), main = names(student_data)[i])
}
for (i in 67:72) {
  barplot(table(student_data[, i]), main = names(student_data)[i])
}


### STEP 20. Create a Missingness Map to Identify Missing Data ----

if (!is.element("Amelia", installed.packages()[, 1])) {
  install.packages("Amelia", dependencies = TRUE)
}
require("Amelia")

missmap(student_data, col = c("red", "grey"), legend = TRUE)


### STEP 21. Create a Correlation Plot ----

if (!is.element("corrplot", installed.packages()[, 1])) {
  install.packages("corrplot", dependencies = TRUE)
}
require("corrplot")
corrplot(cor(student_data[, 4:8]), method = "circle")
corrplot(cor(student_data[, 94:96]), method = "circle")

if (!is.element("ggcorrplot", installed.packages()[, 1])) {
  install.packages("ggcorrplot", dependencies = TRUE)
}
require("ggcorrplot")
#Absentism vs coursework marks
ggcorrplot(cor(student_data[, 95:97]))
#Marks
ggcorrplot(cor(student_data[, 97:99]))
#Avg Course Evaluation
ggcorrplot(cor(student_data[, 75:77]))


### STEP 22. Create a Scatter Plot ----

ggplot(student_data,
       aes(x = gender, y = study_time, color = class_group)) +
  geom_point() +
  geom_smooth(method = lm)


ggplot(student_data,
       aes(x = YOB, y = study_time, color = class_group)) +
  geom_point() +
  geom_smooth(method = lm)

ggplot(student_data,
       aes(x = gender, y = goal_oriented, color = class_group)) +
  geom_point() +
  geom_smooth(method = lm)


### STEP 23. Create Multivariate Box and Whisker Plots by Class ----
if (!is.element("caret", installed.packages()[, 1])) {
  install.packages("caret", dependencies = TRUE)
}
require("caret")
featurePlot(x = student_data[, 1:3], y = student_data[, 100], plot = "box")


