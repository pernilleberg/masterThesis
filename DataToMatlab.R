#Preparing fixation coordinates for rocScore calculation in matlab

#Average fixation data for each image

#Condition 0 = non-experts
averaged_dataC0 <- subset(Fix_df_10Fix, condition == 0) %>% #Change the dataframes accordingly
  group_by(image) %>%
  mutate(Counter = sequence(rle(ID)$lengths)) %>%
  ungroup() %>%
  group_by(image, Counter) %>%
  summarize(
    PositionX = median(PositionX),
    PositionY = median(PositionY),
    Condition = condition[1]
  )

#Condition 1 = experts
averaged_dataC1 <- subset(Fix_df_10Fix, condition == 1) %>% #Change the dataframe accordingly
  group_by(image) %>%
  mutate(Counter = sequence(rle(ID)$lengths)) %>%
  ungroup() %>%
  group_by(image, Counter) %>%
  summarize(
    PositionX = median(PositionX),
    PositionY = median(PositionY),
    Condition = condition[1]
  )

#Writing the fixation data to csv

test <- subset(Fix_df_10Fix, Fix_df_10Fix$ID == 1)

#10  first fixations for all participants for all images

for (par in unique(Fix_df_10Fix$ID)){
  ID_data <- subset(Fix_df_10Fix, ID == par) 
  for (i in unique(Fix_df_10Fix$image)){
    data <- subset(ID_data, image == i)
    data <- subset(data, select = c(PositionX,PositionY))
    file = i
    participant = par
    filename = paste("dataMatlab/IndividualPar/",participant,"/",participant,file,".csv",sep="")
    write.csv(data,file = filename)
  }
}

#Condition 1:
for(i in unique(averaged_dataC1$image)){
  data <- subset(averaged_dataC1, image == i)
  data <- subset(data, select = c(PositionX, PositionY))
  file = i
  filename = paste("dataMatlab/Condition1/C1_",file,".csv",sep = "")
  write.csv(data,file = filename)
}

#Condition 0:
for(i in unique(averaged_dataC0$image)){
  data <- subset(averaged_dataC0, image == i)
  data <- subset(data, select = c(PositionX, PositionY))
  file = i
  filename = paste("dataMatlab/Condition0/C0_",file,".csv",sep = "")
  write.csv(data,file = filename)
}


#5 seconds for all participants for all images

for (par in unique(Fix_df_fiveS$ID)){
  ID_data <- subset(Fix_df_fiveS, ID == par) 
  for (i in unique(Fix_df_fiveS$image)){
    data <- subset(ID_data, image == i)
    data <- subset(data, select = c(PositionX,PositionY))
    file = i
    participant = par
    filename = paste("dataMatlab/IndividualPar_5seconds/",participant,"/",participant,file,".csv",sep="")
    write.csv(data,file = filename)
  }
}