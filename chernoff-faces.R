# The code I ran for the Chernoff faces visualization in R — daily caloric intake of macronutrients per person.

# installing and loading the aplpack package
install.packages("aplpack")    # if not installed yet
library("aplpack")

# importing the CSV file
library("readr")

# different datasets as variables
load_2000 <- "C:\\...\\Data2000.csv"  # local file path for the 2000 dataset
load_2021 <- "C:\\...\\Data2021.csv"  # local file path for the 2001 dataset

# running the analysis for the year 2000
data_2000 <- read.csv(load_2000, header=TRUE)

# double-checking the structure of the data
str(data_2000)

# subsetting and generating Chernoff faces with the desired parameters
faces(data_2000[,2:6], labels = data_2000$Country, fill = TRUE, face.type = 0, scale = TRUE, print.info = TRUE, cex = 1.5)

# the generated image was then saved, and the analysis was run for the year 2021 with the same steps as for 2000:
data_2021 <- read.csv(load_2021, header=TRUE)
str(data_2021)
faces(data_2021[,2:6], labels=data_2021$Country, fill = TRUE, face.type = 0, scale = TRUE, print.info = TRUE, cex = 1.5)