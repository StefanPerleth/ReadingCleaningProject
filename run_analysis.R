#### Download original dataset
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if (!file.exists("./data")) dir.create("./data")
download.file(zipUrl, destfile = "./data/FUCI_Dataset.zip", method = "libcurl")

### Have a look on the data
unzip("./data/FUCI_Dataset.zip", list = TRUE)

### Unzip the data
unzip("./data/FUCI_Dataset.zip", exdir = "./data")

### Show all directories and files
list.dirs("./data")
list.files(("./data"), recursive = TRUE)

######## 1. Merges the training and the test sets to create one data set.

###### Test files
#### Folder ./test: All files to a list
allFilesTest <- list.files(("./data/UCI HAR Dataset/test"))
allFilesTest

TestFiles <- lapply(allFilesTest[-1], function(x) read.table(file = paste0("./data/UCI HAR Dataset/test/", x)))

#### Folder ./train: to dataframes
for (i in 1:3) {
    assign(gsub(".txt", "", allFilesTest[i + 1]), TestFiles[[i]])
}

#### Folder ./test/Inertial Signals: All files to a list
allFilesTestInertial <- list.files(("./data/UCI HAR Dataset/test/Inertial Signals"))
allFilesTestInertial

TestFilesInertial <- lapply(allFilesTestInertial, 
                            function(x) 
                                read.table(file = paste0("./data/UCI HAR Dataset/test/Inertial Signals/", x))
                            )

#### Folder ./train/Inertial Signals: to dataframes
for (i in 1:9) {
    assign(gsub(".txt", "", allFilesTestInertial[i]), TestFilesInertial[[i]])
}

###### Training files
#### All files to a list
allFilesTrain <- list.files(("./data/UCI HAR Dataset/train"))
allFilesTrain

TrainFiles <- lapply(allFilesTrain[-1], function(x) read.table(file = paste0("./data/UCI HAR Dataset/train/", x)))

#### to dataframes
for (i in 1:3) {
    assign(gsub(".txt", "", allFilesTrain[i + 1]), TrainFiles[[i]])
}

#### Folder ./train/Inertial Signals: All files to a list
allFilesTrainInertial <- list.files(("./data/UCI HAR Dataset/train/Inertial Signals"))
allFilesTrainInertial

trainFilesInertial <- lapply(allFilesTrainInertial, 
                            function(x) 
                                read.table(file = paste0("./data/UCI HAR Dataset/train/Inertial Signals/", x))
)

#### Folder ./train/Inertial Signals: to dataframes
for (i in 1:9) {
    assign(gsub(".txt", "", allFilesTrainInertial[i]), trainFilesInertial[[i]])
}

###### read in variable names
features <- read.table(file = paste0("./data/UCI HAR Dataset/", "features.txt"), stringsAsFactors = FALSE)
names(features) <- c("VarNumber", "VarName")
str(features)

#### Clean VarName
features$VarName <- gsub("()-", "_", features$VarName, fixed = TRUE)
features$VarName <- gsub("()", "", features$VarName, fixed = TRUE)
features$VarName <- gsub("-", "_", features$VarName, fixed = TRUE)
features$VarName <- gsub(",", "_", features$VarName, fixed = TRUE)
features$VarName <- gsub("(", "_", features$VarName, fixed = TRUE)
features$VarName <- gsub(")", "", features$VarName, fixed = TRUE)

length(unique(features$VarName))

features$VarName[303:316] <- paste0(features$VarName[303:316], "_X")
features$VarName[317:330] <- paste0(features$VarName[317:330], "_Y")
features$VarName[331:344] <- paste0(features$VarName[331:344], "_Z")

features$VarName[382:395] <- paste0(features$VarName[382:395], "_X")
features$VarName[396:409] <- paste0(features$VarName[396:409], "_Y")
features$VarName[410:423] <- paste0(features$VarName[410:423], "_Z")

features$VarName[461:474] <- paste0(features$VarName[461:474], "_X")
features$VarName[475:488] <- paste0(features$VarName[475:488], "_Y")
features$VarName[489:502] <- paste0(features$VarName[489:502], "_Z")

length(unique(features$VarName))

###### read in activities
activity_label <- read.table(file = paste0("./data/UCI HAR Dataset/", "activity_labels.txt"), stringsAsFactors = FALSE)
names(activity_label) <- c("ActivityNumber", "ActivityLabel")
str(activity_label)

##### Building one dataframe of each train and test dataframe
train <- cbind(subject_train, y_train, X_train, 
               body_acc_x_train, body_acc_y_train, body_acc_z_train,
               body_gyro_x_train, body_gyro_y_train, body_gyro_z_train,
               total_acc_x_train, total_acc_y_train, total_acc_z_train)

test <- cbind(subject_test, y_test, X_test, 
              body_acc_x_test, body_acc_y_test, body_acc_z_test,
              body_gyro_x_test, body_gyro_y_test, body_gyro_z_test,
              total_acc_x_test, total_acc_y_test, total_acc_z_test)

namesAllData <- c("id", "activity", features$VarName, 
                  paste0("body_acc_x_", 1:128), paste0("body_acc_y_", 1:128), paste0("body_acc_z_", 1:128), 
                  paste0("body_gyro_x_", 1:128), paste0("body_gyro_y_", 1:128), paste0("body_gyro_z_", 1:128), 
                  paste0("total_acc_x_", 1:128), paste0("total_acc_y_", 1:128), paste0("total_acc_z_", 1:128))

#### Name test and training data
names(train) <- namesAllData
names(test) <- namesAllData

#### Build dataset that includs all information
allData <- rbind(train, test)


######## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
library(dplyr)
library(tidyr)

#### Means and Standard deviation of all filtered and Fast-Fourier-transformed data
allDataMeanStd <- allData %>% 
    dplyr::select("id", "activity", contains("mean", ignore.case = TRUE), 
                  contains("std", ignore.case = TRUE), -starts_with("angle"),
                  -contains("meanFreq"))

names(allDataMeanStd)

######## 3. Uses descriptive activity names to name the activities in the data set

allDataMeanStd$activity <- factor(allDataMeanStd$activity, levels = c(1:6), labels = activity_label$ActivityLabel)

######## 4. Appropriately labels the data set with descriptive variable names.

names(allDataMeanStd) <- gsub("^t", "Time_", names(allDataMeanStd))
names(allDataMeanStd) <- gsub("^f", "FFT_", names(allDataMeanStd))
names(allDataMeanStd) <- gsub("_X", "_AxisX", names(allDataMeanStd))
names(allDataMeanStd) <- gsub("_Y", "_AxisY", names(allDataMeanStd))
names(allDataMeanStd) <- gsub("_Z", "_AxisZ", names(allDataMeanStd))
names(allDataMeanStd) <- gsub("Acc", "Acceleration", names(allDataMeanStd))
names(allDataMeanStd)

######## 5. From the data set in step 4, creates a second, independent tidy data set with the average 
########    of each variable for each activity and each subject.

### One line per obersation: tidy for the combination of subject and activity
allDataMeanActivity <- allDataMeanStd %>% 
    dplyr::group_by(id, activity) %>% 
    dplyr::summarise_all(funs(mean(., na.rm = TRUE))) 

write.csv(allDataMeanActivity, file = "./data/tidy.csv", row.names = FALSE)



