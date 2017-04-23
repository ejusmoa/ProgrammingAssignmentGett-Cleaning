# Getting and Cleaning Data Course Project

**Author**: Juan Carlos Moreno Reina

The goal of this assignment is to submit a tiny dataset that contains statistics on different measurements available in separate text files.

Since the volunteers for the experiment were randomly partitioned in two different sets (train and test) I have gathered and cleaned each of these sets separately and then joined them into one dataframe that I finally wrote into a .txt file.

## Features and activities
Since the features and the activities were common for both sets, in a first step, I stored this information in two variables: 
* **Header_Features**: vector containing the 561 different features. 
* **Activity_Label**: dataframe containing the six different activities.

## Groom train and test sets separately
There are similar sets of .txt files for the train and test group. Therefore, only the processing of the train set will be described below, as it also applies to the test set. Then, the main variables in the code will be described (in the same order they are defined in the script):
* **Xtrain**: first of all, the file _X_train.txt_ is read into a dataframe and the columns names (stored in the vector _Header_Features_) are set. Since there are certain columns with the same name, it’s ensured that they are unique with the function _make.names_. 
* **X_train_meanStd**: once all the columns names are unique, a subset of the original dataframe is built with only the requested variables: measurements on the mean and the standard deviation that, in practice, comprises all the variable names containing the strings “-mean()” or “-std()” (actually after applying the make.names functions the strings to look for were “.mean.” and “.std.”).
* **Activities**: in order to link the activities ID in file y_train.txt to the activities labels stored in the dataframe _Activity_Label_, the dataframe _Activities_ was built by joining _Activities_ID_ (dataframe containing the information in y_train.txt) and  _Activity_Label_. It is worth mentioning that plyr::join function was used, instead of _merge_, in order to preserve the order in _Activities_ID_. Once joined in the dataframe _Activities_, the column _label_ was binded on the left of _X_train_meanStd_.
* **Subjects**: this dataset contains the IDs of the subjects that participated in the experiment. It is also binded on the left of _X_train_meanStd_.

At this point the dataframe _X_train_meanStd_ has 68 columns: the subject ID, the activity and 66 features.
As stated above, the same steps were followed to get an equivalent dataframe for the test group: _X_test_meanStd_

## Join train and test sets
Then main variables in the code will be described below (in the same order they are defined in the script):
* **test_and_train**: this dataset is the result of adding the rows in _X_train_meanStd_ at the bottom of _X_test_meanStd_.
* **test_and_train_grouped**: this dataset is the result of grouping _test_and_train_ by _subject_id_ and _activity_.
* **Avg_Per_Act_And_Subject**: this is the final dataframe that contains the average of each variable for each activity and each subject. The names of the columns are slightly changed at the end of the script so that they look cleaner and are more meaningful.

