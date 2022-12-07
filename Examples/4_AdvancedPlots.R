# to do...

# titanic_data_raw <- read.csv("titanic.csv")
# #View(titanic_data_raw)
# 
# #avg_age <- avg(titanic_data_raw$Age)
# #avg_age
# 
# median_age <- median(titanic_data_raw$Age)
# median_age
# 
# stdev_age <- sd(titanic_data_raw$Age)
# stdev_age
# 
# hist(titanic_data_raw$Age)
# 
# boxplot(titanic_data_raw$Age~titanic_data_raw$Sex,
#         main = "This is the other title",
#         ylab = "Age(years)",
#         xlab = "Gender",
#         col = c("red", "coral"),
#         ylim = c(0, 100))

# download the packages
if(!require(tidyverse))
  install.packages("tidyverse")

if(!require("hrbrthemes"))
  install.packages("hrbrthemes")

if(!require("viridis"))
  install.packages("viridis")

# load libraries
library(tidyverse)
library(hrbrthemes)
library(viridis)
library(ggridges)

# load the data
data <- read.csv("amalgamated_game_survey_250_2022.csv")
#View(data)

data %>%
  ggplot( aes(x=gender, y=age, fill=gender)) +
  geom_point(aes(col=gender, size = age)) +
  geom_violin() +
  ylim(c(18, 40)) +
  ggtitle("Age vs Gender", subtitle ="VR User Tests 2.0 2022") +
  xlab("Gender") + 
  ylab("Age") +
  scale_y_continuous(breaks=seq(18, 35, 2)) +
  # theme_old() +
  scale_fill_viridis(discrete = TRUE, alpha=0.2, option="A") 


data %>% 
  ggplot(aes(x = age, y = gender, fill = gender)) +
  geom_density_ridges() +
  theme_ridges() + 
  theme(legend.position = "none")

data %>%
  ggplot( aes(x=age, fill=gender)) +
  geom_histogram( color="#e9ecef", alpha=0.6, position = 'identity') +
  #scale_fill_manual(values=c("#69b3a2", "#404080")) #+
  theme_ipsum() +
  labs(fill="") +
  scale_x_continuous(breaks=seq(18, 35, 1)) 


