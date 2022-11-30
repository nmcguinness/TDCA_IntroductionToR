# this is a comment
library(readr)

gamer_survey_data <- read.csv("amalgamated_game_survey_250_2022.csv")
gamer_survey_data

#head(gamer_survey_data, 2)
#tail(gamer_survey_data, 20)
# View(gamer_survey_data)

# summary(gamer_survey_data$years_playing_games)

# histogram
hist(gamer_survey_data$age,
     main = "This is the title",
     xlab = "Age(years)",
     ylab = "Freq",
     col = "steelblue",
     breaks = 8)

# boxplot - numeric data
boxplot(gamer_survey_data$age,
        main = "This is the other title",
        ylab = "Age(years)",
        xlab = "All Participants",
        col = "steelblue")

boxplot(gamer_survey_data$age~gamer_survey_data$gender,
        main = "This is the other title",
        ylab = "Age(years)",
        xlab = "Gender",
        col = "steelblue")

boxplot(iris$Sepal.Width~iris$Species)

barplot(sort(table(gamer_survey_data$gender), decreasing = FALSE))







