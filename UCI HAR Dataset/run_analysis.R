#reading the features file and extracting the column names with the mean() & std() 
  
  features=read.table("features.txt")
  features_vector=as.vector(features[,2])
  col_mean=grep("mean()",features_vector, fixed = TRUE)
  col_std=grep("std()",features_vector)
  col_combine=c(col_mean,col_std)

#reading the acitivty lables file
  
  activity_labels=read.table("activity_labels.txt")
  activity_labels_factor=as.factor(activity_labels[,2])
  
#reading the subject, y & X files 
  
  y_test=read.table("test/y_test.txt")
  y_train=read.table("train/y_train.txt")
  subject_test=read.table("test/subject_test.txt")
  subject_train=read.table("train/subject_train.txt")
  X_test=read.table("test/X_test.txt",col.names = features_vector)
  X_train=read.table("train/X_train.txt",col.names = features_vector)
  
# subsetting the X file by the required mean & std feature variables
  
  X_test_sub=subset(X_test,select=col_combine)
  
  X_train_sub=subset(X_train,select=col_combine)
  
#Combining the test & train files
  
  test_act_bind=cbind( X_test_sub,y_test,subject_test)
  train_act_bind=cbind( X_train_sub,y_train,subject_train)
  final_comb=rbind(test_act_bind,train_act_bind)
  colnames(final_comb)[67:68]=c("activity","subject_num")
  
#Naming the activity number with the descriptive activity names
  
  final_comb$activity <- ifelse(final_comb$activity == 1, "walking", ifelse(final_comb$activity ==2,"walking upstairs",ifelse(final_comb$activity ==3,"walking downstairs",ifelse(final_comb$activity ==4,"sitting",ifelse(final_comb$activity ==5,"standing","laying")))))
  
#Final output is the required mean_matrix that lists down the average
#of the each required feature variable for each activity and each subject. First column 
#is the activity & second column is subject number
  
  mean_matrix=aggregate(x=final_comb[, 1:66], by=list(final_comb$activity,final_comb$subject_num), mean)
  colnames(mean_matrix)[1:2]=c("activity","subject_num")
  
  colnames(mean_matrix)

  