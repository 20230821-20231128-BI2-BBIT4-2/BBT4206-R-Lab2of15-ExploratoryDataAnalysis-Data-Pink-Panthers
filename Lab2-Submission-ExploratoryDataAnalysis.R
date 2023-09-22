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
