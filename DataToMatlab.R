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

#Condition 0:
for(i in unique(averaged_dataC0$image)){
  data <- subset(averaged_dataC0, image == i)
  data <- subset(data, select = c(PositionX, PositionY))
  file = i
  filename = paste("dataMatlab/Condition0/C0_",file,".csv",sep = "")
  write.csv(data,file = filename)
}

#Condition 1:
for(i in unique(averaged_dataC1$image)){
  data <- subset(averaged_dataC1, image == i)
  data <- subset(data, select = c(PositionX, PositionY))
  file = i
  filename = paste("dataMatlab/Condition1/C1_",file,".csv",sep = "")
  write.csv(data,file = filename)
}
