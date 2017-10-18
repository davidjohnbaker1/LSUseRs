#======================================================================================================
# Data Analysis Template
# 
#
#
#
#
#======================================================================================================
# Libraries
#--------------------------------------------------
library(psych)
library(ggplot2)
library(data.table)

#======================================================================================================
# Set Wd and Import Data 
#--------------------------------------------------
setwd("/Users/davidjohnbaker/Desktop/projects/LSUseRs/BasicCleaningAndAnalysis/data/")
explore.me <- read.csv("My_Experiment_Data.csv")
str(explore.me) # note it still thinks strings are factors, not everything was cleaned

#======================================================================================================
# Plots
#--------------------------------------------------
# Let's use try to use ggplot2 to explore our data.
# Plot two continous variables on the x and y axis, group them by a binary, then scale them 
# by the magnitude of one of their effects. 

# Let's plot all the points
ggplot(explore.me, 
       aes(x = TspanAbsScore, y = GENERAL)) + geom_point()

# Does it make sense to use a line? 
ggplot(explore.me, 
       aes(x = TspanAbsScore, y = GENERAL)) + geom_line()

ggplot(explore.me, 
       aes(x = TspanAbsScore, y = GENERAL, color = Gender)) + geom_point()

ggplot(explore.me, 
       aes(x = TspanAbsScore, y = GENERAL, color = Gender, size = Age)) + geom_point()

ggplot(explore.me, 
       aes(x = TspanAbsScore, y = GENERAL, color = Gender, size = Age)) + geom_point() +
      labs(title ="A Sweet Plot", x = "Tone Span", y = "General Sophistication") + geom_smooth(method = "lm")

# Great for spotting outliers, weird codings in your data
# GGPLOT IS NOT JUST END GAME
#======================================================================================================
# T Tests 
#--------------------------------------------------
# Run a basic t test, what's up with the degrees of freedom?
# What arguments can you manipulate within the function? 
# Is every column in the right format to do a t-test?

t.test(explore.me$RavenB1, explore.me$RavenB2)
t.test(explore.me$RavenB1, explore.me$RavenB2, paired = TRUE)
t.test(explore.me$RavenB1, explore.me$RavenB2,var.equal = TRUE)

# What if you wanted to t.test gender? Save for melt lesson 

#======================================================================================================
# Correlation
#--------------------------------------------------
# Let's look at some correlations!
# How would we get correlations for a few different variables? 
# Try using the apply function or the pairs.panels() function from the psych package

cor(explore.me$SINGING, explore.me$EMOTIONS)
cor(explore.me$SINGING, explore.me$EMOTIONS,method = "kendall")

#======================================================================================================
# Regression? 
#--------------------------------------------------
# Can you build a regression model to predict one variable from another? 

my.model.1 <- lm(GENERAL ~ MelodicAcc, data = explore.me)
my.model.2 <- lm(GENERAL ~ MelodicAcc + BeatAcc, data = explore.me)

summary(my.model.1)
summary(my.model.2)

# Note that inside the model are more values of use!
my.model.1$coefficients
my.model.1$residuals

# Can you find an R package that will turn this into an APA formatted table?
#======================================================================================================