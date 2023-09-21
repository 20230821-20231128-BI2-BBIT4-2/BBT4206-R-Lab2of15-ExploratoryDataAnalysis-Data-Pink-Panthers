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
>>>>>>> 2965d9f7efffb12b0423d5b3409a34df8bd0e813


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
