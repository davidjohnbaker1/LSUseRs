#======================================================================================================
# LSUserRs Data Cleaning Template (Title Your Script)
# Say a couple of the things that it does here. Who wrote it?
# When was the last edit? What does it do? Does it work with any data type?
# Rubber duck this as much as possible because you won't remember
# what you did in 6 months. Especially if you come up with something clever.
#======================================================================================================
# TRY YOUR BEST TO NOT JUST COPY AND PASTE CODE, GOOGLE WHAT YOU WANT, GET FAMILIAR WITH A FUNCTION'S
# ARGUMENTS AND EMBRACE YOUR INNER NERD AND READ THE DOCUMENTATION!! 
#======================================================================================================
# Import Libraries 
#--------------------------------------------------
# Load all libraries at the start of your script, remember they have to be installed first! 



#======================================================================================================
# Set up your working directory
#--------------------------------------------------
# Use the space below to set your wd as you please. 
# Try to pick a path that makes sense 



#======================================================================================================
# Load in your data
#--------------------------------------------------
# After telling R where to look in your computer/dropbox/google drive/R Project grab what you need!
# Make sure to load in both datasets as we will want them both in our analysis.
# We also want to make sure to clean both datasets as we are going. 



#======================================================================================================
# Inspect the structure of your data
#--------------------------------------------------
# R is going to do its best to guess what kind of data each of the columns of your spreadsheet are.
# Sometimes it thinks things are lists (especially if importing from SPSS)
# Go through each variable as you would with other programs and make sure you set it to what 
# you think will be most useful later. The big thing to check here is categorical variables, and
# if you see any sort of string/character variables.



#======================================================================================================
# Check for Import Errors 
#--------------------------------------------------
# Use a combination of the names(), View(), table(), is.na(), and complete.cases() to get a brief summary of what is 
# going on in your data set to be sure there were minimal import errors and your data looks like
# you want it to. It might also be worth plottting some variables and use some common sense to find mistakes.
# Are there any participants with 999 as their subject number? Negative values where there shouldn't be? 
# If there are, note them and fix these before starting any sort of statistical screening! 



#======================================================================================================
# Cleaning Free Text Response Data
#--------------------------------------------------
# In your data cleaning before you might have noticed that participants were able to freely respond 
# with whatever gender they wanted. Most data look to fall within the normal binary, but the computer
# needs things to be exactly the same before making an easy split? 
# What would be the laziest, most effecient way to fix the gender column? What format does the variable
# have to be in order to make the changes that you need? 
# When you have it figured out, make sure to run the code from top to bottom to make sure things go in 
# the right order!!! As we are not dealing with huge amounts of data, the table() function will help out.



#======================================================================================================
# Melting and Casting Data
#--------------------------------------------------
# To do most plotting and analysis in R your data needs to be in a 'tidy' format.
# Tidy data, according to Hadley Wickham meets three conditions
# 1. Each variable forms a column 
# 2. Each observation forms a row 
# 3. Each type of observational unit forms a table 
# We won't worry about point 3 for now, but do you see any column that we might want to have on each data point
# for grouping purposes? Let's use the data.table package to melt our data from wide format to long.



#======================================================================================================
# Merging Data
#--------------------------------------------------
# Often we will have data from other spreadsheets we want to attach such as demographic data 
# to behavioral responses. Using the data.table functionality, let's merge our two csv 
# files together so that we have every variable accessible to us for this analysis. 



#======================================================================================================
# Checking for Univariate Outliers
#--------------------------------------------------



#======================================================================================================
# Checking for Multivariate Outliers
#--------------------------------------------------



#======================================================================================================
# Exporting Data
#--------------------------------------------------
# It's best practice to separate your cleaning and your analysis into separate scripts.
# Export the dataset you have into a new csv file into a directory that would make sense to 
# someone who has never seen your project before. 



#======================================================================================================