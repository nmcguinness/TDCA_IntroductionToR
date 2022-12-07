
# plot types - pie chart, histogram, scatterplot, boxplot, linegraph, scatterplot
# use the forward and backward arrows in the top left hand corner of the Plots window to see each plot

# pie chart #################################################################
sunshinePerDay <- c(6, 12, 17, 13)
cities <- c("dublin", "paris", "narvik", "caracas")

# uncomment the parameters (i.e. edges, main, border) to see what each parameter does
pie(x = sunshinePerDay, 
    labels = cities, 
   # edges = 64,
   # main = "Hours Sunshine on 21st June 2022", 
   # border = FALSE,
   # col = c("red","blue","green","orange")
   )

# histogram from external CSV data ##########################################
# IMPORTANT - to run this example we must set the Session Directory - to set this click on Session/Set Working Directory/To Source File Location in the main menu above
titanic_data_raw <- read.csv("titanic.csv")

View(titanic_data_raw)


hist(titanic_data_raw$Age, breaks = 8,
     main = "Age Breakdown",
     xlab = "Age Range",
     ylab = "Frequency",
     col = "orange") #rgb(1,1,0))

# histogram from external CSV data ##########################################
# IMPORTANT - to run this example we must set the Session Directory - to set this click on Session/Set Working Directory/To Source File Location in the main menu above

# load library for View() function to show a nice table
library(readr)

# load the data
gamer_survey_data <- read.csv("amalgamated_game_survey_250_2022.csv")
gamer_survey_data

# view the first, last, and table of data
#head(gamer_survey_data, 2)
#tail(gamer_survey_data, 20)
# View(gamer_survey_data)

# generate a histogram 
hist(gamer_survey_data$age,
     main = "This is the title",
     xlab = "Age(years)",
     ylab = "Freq",
     col = "steelblue",
     breaks = 8)

# generate a boxplot 
boxplot(gamer_survey_data$age,
        main = "This is the other title",
        ylab = "Age(years)",
        xlab = "All Participants",
        col = "steelblue")

# generate a boxplot across multiple facets
boxplot(gamer_survey_data$age~gamer_survey_data$gender,
        main = "This is the other title",
        ylab = "Age(years)",
        xlab = "Gender",
        col = c("red", "coral", "blue", "orange"),
        ylim = c(18, 40))

# generate a boxplot across multiple facets
boxplot(iris$Sepal.Width~iris$Species,
        col=c("red", "coral", "blue"))

# generate a barplot and sort
barplot(sort(table(gamer_survey_data$gender), decreasing = FALSE),
        main = "This is the other title",
        ylim = c(0, 80))







