# ReadingCleaningProject
Needed files for reading and cleanung Project of Couseras data science training

tydy.csv contains the data
run_analysis.R the R script which was run under R Version 3.5.1
CodeBook.md contains the original featture_info.txt plus the information about the variable in the file tidy.csv 

The run_analysis.R script downloads the file "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
and unzips it.
Then it reads in all available data files and joins them to the single datafile allData
All mean and standard deviation variables were extracted together with the id and activity variable and sored in allDataMeanStd
The variable activity is then labeled and in the next step the remainung variable names are transformed in a more labelinh form.
At the end the dataset it grouped by id and activity and the mean for all variables is calculated and stored in allDataMeanActivity.
The the data is written to the file tidy.csv.
