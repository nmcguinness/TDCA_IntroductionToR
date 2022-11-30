
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
hist(titanic_data_raw$Age, breaks = 8,
     main = "Age Breakdown",
     xlab = "Age Range",
     ylab = "Frequency",
     col = "orange") #rgb(1,1,0))

