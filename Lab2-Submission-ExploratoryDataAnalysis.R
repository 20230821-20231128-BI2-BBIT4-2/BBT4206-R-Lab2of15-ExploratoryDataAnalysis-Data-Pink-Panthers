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

sapply(student_data[, -1,-73,-74,-100], sd)


### STEP 11. Measure the variance of each variable ----
sapply(student_data[, -1,-73,-74,-100], var)

### STEP 12. Measure the kurtosis of each variable ----
if (!is.element("e1071", installed.packages()[, 1])) {
  install.packages("e1071", dependencies = TRUE)
}
require("e1071")

sapply(student_data[, -1,-73,-74,-100],  kurtosis, type = 2)


### STEP 13. Measure the skewness of each variable ----
sapply(student_data[, -1,-73,-74,-100],  skewness, type = 2)

## STEP 14. Measure the covariance between variables ----
student_data_cov <-cov(student_data[, -1,-73,-74,-100])
View(student_data_cov)

## STEP 15. Measure the correlation between variables ----
boston_housing_cor <- cor(BostonHousing[, -4])
View(boston_housing_cor)

##STEP 16. Perform ANOVA on the “student_data” dataset ----
# Dependent variable:	Grade
# Independent variables:	class_group	gender	YOB	regret_choosing_bi	drop_bi_now	motivator	read_content_before_lecture	anticipate_test_questions	answer_rhetorical_questions	find_terms_I_do_not_know	copy_new_terms_in_reading_notebook	take_quizzes_and_use_results	reorganise_course_outline	write_down_important_points	space_out_revision	studying_in_study_group	schedule_appointments	goal_oriented	spaced_repetition	testing_and_active_recall	interleaving	categorizing	retrospective_timetable	cornell_notes	sq3r	commute	study_time	repeats_since_Y1	paid_tuition	free_tuition	extra_curricular	sports_extra_curricular	exercise_per_week	meditate	pray	internet	laptop	family_relationships	friendships	romantic_relationships	spiritual_wellnes	financial_wellness	health	day_out	night_out	alcohol_or_narcotics	mentor	mentor_meetings	A - 1. I am enjoying the subject	A - 2. Classes start and end on time	A - 3. The learning environment is participative, involves learning by doing and is group-based	A - 4. The subject content is delivered according to the course outline and meets my expectations	A - 5. The topics are clear and logically developed	A - 6. I am developing my oral and writing skills	A - 7. I am developing my reflective and critical reasoning skills	A - 8. The assessment methods are assisting me to learn	A - 9. I receive relevant feedback	A - 10. I read the recommended readings and notes	A - 11. I use the eLearning material posted	B - 1. Concept 1 of 6: Principles of Business Intelligence and the DataOps Philosophy	B - 2. Concept 3 of 6: Linear Algorithms for Predictive Analytics	C - 2. Quizzes at the end of each concept	C - 3. Lab manuals that outline the steps to follow during the labs	C - 4. Required lab work submissions at the end of each lab manual that outline the activity to be done on your own	C - 5. Supplementary videos to watch	C - 6. Supplementary podcasts to listen to	C - 7. Supplementary content to read	C - 8. Lectures slides	C - 9. Lecture notes on some of the lecture slides	C - 10. The quality of the lectures given (quality measured by the breadth (the full span of knowledge of a subject) and depth (the extent to which specific topics are focused upon, amplified, and explored) of learning - NOT quality measured by how fun/comical/lively the lectures are)	C - 11. The division of theory and practice such that most of the theory is done during the recorded online classes and most of the practice is done during the physical classes	C - 12. The recordings of online classes	"D - 1. 
#Write two things you like about the teaching and learning in this unit so far."	D - 2. Write at least one recommendation to improve the teaching and learning in this unit (for the remaining weeks in the semester)	Average Course Evaluation Rating	Average Level of Learning Attained Rating	Average Pedagogical Strategy Effectiveness Rating	Project: Section 1-4: (20%) x/10	Project: Section 5-11: (50%) x/10	Project: Section 12: (30%) x/5	Project: (10%): x/30 x 100 TOTAL	Quiz 1 on Concept 1 (Introduction) x/32	Quiz 3 on Concept 3 (Linear) x/15	Quiz 4 on Concept 4 (Non-Linear) x/22	Quiz 5 on Concept 5 (Dashboarding) x/10	Quizzes and  Bonus Marks (7%): x/79 x 100 TOTAL	Lab 1 - 2.c. - (Simple Linear Regression) x/5	Lab 2 - 2.e. -  (Linear Regression using Gradient Descent) x/5	Lab 3 - 2.g. - (Logistic Regression using Gradient Descent) x/5	Lab 4 - 2.h. - (Linear Discriminant Analysis) x/5	Lab 5 - Chart JS Dashboard Setup x/5	Lab Work (7%) x/25 x 100	CAT 1 (8%): x/38 x 100	CAT 2 (8%): x/100 x 100	Attendance Waiver Granted: 1 = Yes, 0 = No	Absenteeism Percentage	Coursework TOTAL: x/40 (40%)	EXAM: x/60 (60%)	TOTAL = Coursework TOTAL + EXAM (100%)	GRADE
student_data_one_way_anova <- aov (GRADE ~ motivator , data = student_data )
summary(student_data_one_way_anova)
