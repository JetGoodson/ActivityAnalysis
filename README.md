ActivityAnalysis
================

This is a package for the cleaning of SmartPhone activity for Coursera/Johns Hopkins "Getting and Cleaning Data" course.

The original dataset with original documentation can be found at the website:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data to be cleaned can be found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Please download and de-compress the data before preceeding with cleaning of the data.

The only script used in this package is the run_analysis.R script. To run it, open R and source the file.

> source("run_analysis.R")

The data will then be loaded and cleaned. 

Two datasets will be produced. The skimmed version of the dataset will be placed in a file called:

"HumanActivitySmartphoneRecognition_cleanedData.txt

The skimmed dataset will only contain the mean and standard deviation variables. The test and train data will both be in the dataset, with test data marked UNLABELED in the ActivityLabel column.

A tidy dataset will also be produced. This dataset contains the average (mean) of all skimmed features for each subject and each activity. This summary is saved in the file:

"HumanActivitySmartphoneRecognition_tidyData.txt"


The file "HumanActivitySmartphoneRecognition_CodeBook.txt" contains more information on the meaning of each variable.