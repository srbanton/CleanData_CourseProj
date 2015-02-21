# About This Repository
##

## Quick background on the data
The original data was collected when 30 subjects performed 6 routine activities while wearing a Samsung Galaxy S II smartphone. Sensors on the smartphone recorded different features of each subject's motion.  The researchers conducting the experiments later refined the sensor data using signal processing techniques.        

The refined/processed data is stored in the University of California Irvine Machine Learning Repository.  The data can be retrieved [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  The researchers opened access to the refined data in 2012.   

*I cleaned and manipulated the processed data in R as part of the Coursera course "Getting and Cleaning Data" offered by Johns Hopkins.* 

##Files in this repository

* **README.md**
* **run_analysis.R**: R script that manipulates and cleans raw data to create "tidydata.txt"
* **tidydata.txt**: 180 rows (R) x 81 columns (C) dataset that summarizes Samsung Galaxy S II motion sensor data
* **Codebook.md**: Has detailed information on the experimental design for the untidy data, my summary/analysis decisions, and the variables in my tidy data   

The following are the data files used in run_analysis.R and are located in the Untidy_Data directory of this repository:

* **features.txt**: List of 561 variables output by motion sensors and refined with signal processing techniques 
* **activity_labels.txt**: Matches 6 activities to the numeric codes used in "y-" files
	* 1 in a "y-" file is equal to Walking, 2 is equal to Walking Upstairs, etc. 
* **x_train.txt**: 7352R x 561C table of motion sensor data for 70% of subjects; each column is one of 561 features
* **y_train.txt**: 7352R x1C table; each row has a numeric code corresponding to one of the six activities
* **x_test.txt**: 2947R x 561C table of sensor data for 30% of subjects; each column is one of 561 features
* **y_test.txt**: 2947R x 1C table; each row has a numeric code corresponding to one of the six activities
* **subject_train.txt**: 7352R x 1C table of Subject IDs; each row shows the subject who performed the training activity
* **subject_test.txt**: 2947R x 1C table of Subject IDs; each row shows the subject who performed the testing activity


##Notes
1. The activity labels file was not called explicitly in run_analysis.R. See Codebook.md for more information
2. Citation for dataset: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012