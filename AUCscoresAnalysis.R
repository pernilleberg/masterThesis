#Prepping data for AUC analysis

#Load AUC data: Saliency maps
rocScores_abs_C0 <- read.csv('rocScores_abs_C0.csv', header = F)
rocScores_abs_C1 <- read.csv('rocScores_abs_C1.csv', header = F)
rocScores_fig_C0 <- read.csv('rocScores_fig_C0.csv', header = F)
rocScores_fig_C1 <- read.csv('rocScores_fig_C1.csv', header = F)

rocScores_abs_C0 <- gather(rocScores_abs_C0)
rocScores_abs_C0 <- plyr::rename(rocScores_abs_C0, c("key"="image",'value'='AUC'))
rocScores_abs_C0$image = str_replace_all(rocScores_abs_C0$image,"V",'abstract_')
rocScores_abs_C0$condition = rep("0", 20)
rocScores_abs_C0$map_type = rep('salmap', 20)

rocScores_abs_C1 <- gather(rocScores_abs_C1)
rocScores_abs_C1 <- plyr::rename(rocScores_abs_C1, c("key"="image",'value'='AUC'))
rocScores_abs_C1$image = str_replace_all(rocScores_abs_C1$image,"V",'abstract_')
rocScores_abs_C1$condition = rep("1", 20)
rocScores_abs_C1$map_type = rep('salmap', 20)

rocScores_abs_all <- rbind(rocScores_abs_C0,rocScores_abs_C1)

rocScores_fig_C1 <- gather(rocScores_fig_C1)
rocScores_fig_C1 <- plyr::rename(rocScores_fig_C1, c("key"="image",'value'='AUC'))
rocScores_fig_C1$image = str_replace_all(rocScores_fig_C1$image,"V",'fig_')
rocScores_fig_C1$condition = rep("1", 20)
rocScores_fig_C1$map_type = rep('salmap', 20)

rocScores_fig_C0 <- gather(rocScores_fig_C0)
rocScores_fig_C0 <- plyr::rename(rocScores_fig_C0, c("key"="image",'value'='AUC'))
rocScores_fig_C0$image = str_replace_all(rocScores_fig_C0$image,"V",'fig_')
rocScores_fig_C0$condition = rep("0", 20)
rocScores_fig_C0$map_type = rep('salmap', 20)

rocScores_fig_all <- rbind(rocScores_fig_C0, rocScores_fig_C1)

rocScores_all <- rbind(rocScores_abs_all, rocScores_fig_all)

#Load AUC data: Color
rocScores_abs_C0 <- read.csv('rocScores_abs_C0_color.csv', header = F)
rocScores_abs_C1 <- read.csv('rocScores_abs_C1_color.csv', header = F)
rocScores_fig_C0 <- read.csv('rocScores_fig_C0_color.csv', header = F)
rocScores_fig_C1 <- read.csv('rocScores_fig_C1_color.csv', header = F)

rocScores_abs_C0 <- gather(rocScores_abs_C0)
rocScores_abs_C0 <- plyr::rename(rocScores_abs_C0, c("key"="image",'value'='AUC'))
rocScores_abs_C0$image = str_replace_all(rocScores_abs_C0$image,"V",'abstract_')
rocScores_abs_C0$condition = rep("0", 20)
rocScores_abs_C0$map_type = rep('color', 20)

rocScores_abs_C1 <- gather(rocScores_abs_C1)
rocScores_abs_C1 <- plyr::rename(rocScores_abs_C1, c("key"="image",'value'='AUC'))
rocScores_abs_C1$image = str_replace_all(rocScores_abs_C1$image,"V",'abstract_')
rocScores_abs_C1$condition = rep("1", 20)
rocScores_abs_C1$map_type = rep('color', 20)

rocScores_abs_all <- rbind(rocScores_abs_C0,rocScores_abs_C1)

rocScores_fig_C1 <- gather(rocScores_fig_C1)
rocScores_fig_C1 <- plyr::rename(rocScores_fig_C1, c("key"="image",'value'='AUC'))
rocScores_fig_C1$image = str_replace_all(rocScores_fig_C1$image,"V",'fig_')
rocScores_fig_C1$condition = rep("1", 20)
rocScores_fig_C1$map_type = rep('color', 20)

rocScores_fig_C0 <- gather(rocScores_fig_C0)
rocScores_fig_C0 <- plyr::rename(rocScores_fig_C0, c("key"="image",'value'='AUC'))
rocScores_fig_C0$image = str_replace_all(rocScores_fig_C0$image,"V",'fig_')
rocScores_fig_C0$condition = rep("0", 20)
rocScores_fig_C0$map_type = rep('color', 20)

rocScores_fig_all <- rbind(rocScores_fig_C0,rocScores_fig_C1)

temp_color <- rbind(rocScores_abs_all,rocScores_fig_all)

temp <- rbind(rocScores_all,temp_color)
temp <- temp[order(temp[,1]),]

#Load AUC data: Intensity
rocScores_abs_C0 <- read.csv('rocScores_abs_C0_int.csv', header = F)
rocScores_abs_C1 <- read.csv('rocScores_abs_C1_int.csv', header = F)
rocScores_fig_C0 <- read.csv('rocScores_fig_C0_int.csv', header = F)
rocScores_fig_C1 <- read.csv('rocScores_fig_C1_int.csv', header = F)

rocScores_abs_C0 <- gather(rocScores_abs_C0)
rocScores_abs_C0 <- plyr::rename(rocScores_abs_C0, c("key"="image",'value'='AUC'))
rocScores_abs_C0$image = str_replace_all(rocScores_abs_C0$image,"V",'abstract_')
rocScores_abs_C0$condition = rep("0", 20)
rocScores_abs_C0$map_type = rep('intensity', 20)

rocScores_abs_C1 <- gather(rocScores_abs_C1)
rocScores_abs_C1 <- plyr::rename(rocScores_abs_C1, c("key"="image",'value'='AUC'))
rocScores_abs_C1$image = str_replace_all(rocScores_abs_C1$image,"V",'abstract_')
rocScores_abs_C1$condition = rep("1", 20)
rocScores_abs_C1$map_type = rep('intensity', 20)

rocScores_abs_all <- rbind(rocScores_abs_C0,rocScores_abs_C1)

rocScores_fig_C1 <- gather(rocScores_fig_C1)
rocScores_fig_C1 <- plyr::rename(rocScores_fig_C1, c("key"="image",'value'='AUC'))
rocScores_fig_C1$image = str_replace_all(rocScores_fig_C1$image,"V",'fig_')
rocScores_fig_C1$condition = rep("1", 20)
rocScores_fig_C1$map_type = rep('intensity', 20)

rocScores_fig_C0 <- gather(rocScores_fig_C0)
rocScores_fig_C0 <- plyr::rename(rocScores_fig_C0, c("key"="image",'value'='AUC'))
rocScores_fig_C0$image = str_replace_all(rocScores_fig_C0$image,"V",'fig_')
rocScores_fig_C0$condition = rep("0", 20)
rocScores_fig_C0$map_type = rep('intensity', 20)

rocScores_fig_all <- rbind(rocScores_fig_C0,rocScores_fig_C1)

temp_int <- rbind(rocScores_abs_all,rocScores_fig_all)

temp <- rbind(temp,temp_int)

#Load AUC data: Orientation
rocScores_abs_C0 <- read.csv('rocScores_abs_C0_ori.csv', header = F)
rocScores_abs_C1 <- read.csv('rocScores_abs_C1_ori.csv', header = F)
rocScores_fig_C0 <- read.csv('rocScores_fig_C0_ori.csv', header = F)
rocScores_fig_C1 <- read.csv('rocScores_fig_C1_ori.csv', header = F)

rocScores_abs_C0 <- gather(rocScores_abs_C0)
rocScores_abs_C0 <- plyr::rename(rocScores_abs_C0, c("key"="image",'value'='AUC'))
rocScores_abs_C0$image = str_replace_all(rocScores_abs_C0$image,"V",'abstract_')
rocScores_abs_C0$condition = rep("0", 20)
rocScores_abs_C0$map_type = rep('orientation', 20)

rocScores_abs_C1 <- gather(rocScores_abs_C1)
rocScores_abs_C1 <- plyr::rename(rocScores_abs_C1, c("key"="image",'value'='AUC'))
rocScores_abs_C1$image = str_replace_all(rocScores_abs_C1$image,"V",'abstract_')
rocScores_abs_C1$condition = rep("1", 20)
rocScores_abs_C1$map_type = rep('orientation', 20)

rocScores_abs_all <- rbind(rocScores_abs_C0,rocScores_abs_C1)

rocScores_fig_C1 <- gather(rocScores_fig_C1)
rocScores_fig_C1 <- plyr::rename(rocScores_fig_C1, c("key"="image",'value'='AUC'))
rocScores_fig_C1$image = str_replace_all(rocScores_fig_C1$image,"V",'fig_')
rocScores_fig_C1$condition = rep("1", 20)
rocScores_fig_C1$map_type = rep('orientation', 20)


rocScores_fig_C0 <- gather(rocScores_fig_C0)
rocScores_fig_C0 <- plyr::rename(rocScores_fig_C0, c("key"="image",'value'='AUC'))
rocScores_fig_C0$image = str_replace_all(rocScores_fig_C0$image,"V",'fig_')
rocScores_fig_C0$condition = rep("0", 20)
rocScores_fig_C0$map_type = rep('orientation', 20)


rocScores_fig_all <- rbind(rocScores_fig_C0,rocScores_fig_C1)

temp_orientation <- rbind(rocScores_abs_all,rocScores_fig_all)

temp <- rbind(temp, temp_orientation)
temp <- temp[order(temp[,1]),]

#Merge with sparseness results
sR <- read.csv('SparsenessResults.csv')
sR <- subset(sR, select = c(image, peak_group))

final_df <- merge(temp,sR)

write.csv(final_df,'AUC_scores_OldData_newformat.csv')


#Sal effect at each fixation for each image
#Load AUC data: Saliency maps
df <- read.csv('IndFix_rocScores_fig_C0.csv', header = F)
df <- gather(df)
df$image <- rep(seq(1:20), 10)
df <- plyr::rename(df, c("key"="Fixation_Index","value"="AUC"))
df$genre <- rep('fig_',200)
df$image <- paste(df$genre,df$image)
df$image <- str_replace_all(df$image," ","")
df$Fixation_Index <- str_replace_all(df$Fixation_Index,"V","")
df$condition <- rep(0,200)
#df$Fixation_Index <- as.numeric(df$Fixation_Index)

temp <- read.csv('IndFix_rocScores_fig_C1.csv', header = F)
temp <- gather(temp)
temp$image <- rep(seq(1:20), 10)
temp <- plyr::rename(temp, c("key"="Fixation_Index","value"="AUC"))
temp$genre <- rep('fig_',200)
temp$image <- paste(temp$genre,temp$image)
temp$image = str_replace_all(temp$image," ","")
temp$Fixation_Index = str_replace_all(temp$Fixation_Index,"V","")
temp$condition <- rep(1,200)
temp <- subset(temp, select = -c(genre))

df <- rbind(df,temp)

temp <- read.csv('IndFix_rocScores_abs_C0.csv', header = F)
temp <- gather(temp)
temp$image <- rep(seq(1:20), 10)
temp <- plyr::rename(temp, c("key"="Fixation_Index","value"="AUC"))
temp$genre <- rep('abstract_',200)
temp$image <- paste(temp$genre,temp$image)
temp$image = str_replace_all(temp$image," ","")
temp$Fixation_Index = str_replace_all(temp$Fixation_Index,"V","")
temp$condition <- rep(0,200)
temp <- subset(temp, select = -c(genre))

df <- rbind(df,temp)

temp <- read.csv('IndFix_rocScores_abs_C1.csv', header = F)
temp <- gather(temp)
temp$image <- rep(seq(1:20), 10)
temp <- plyr::rename(temp, c("key"="Fixation_Index","value"="AUC"))
temp$genre <- rep('abstract_',200)
temp$image <- paste(temp$genre,temp$image)
temp$image = str_replace_all(temp$image," ","")
temp$Fixation_Index = str_replace_all(temp$Fixation_Index,"V","")
temp$condition <- rep(1,200)
temp <- subset(temp, select = -c(genre))

df <- rbind(df,temp)

write.csv(df,'combined_rocScores_variationOverFix.csv')

df$Fixation_Index <- as.numeric(df$Fixation_Index)

#10 fixations for each participant for each image
#Load AUC data: Saliency maps
temp = list.files(path = "AUC scores/Condition0/Abs/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_abs_C0 <- rbindlist(myfiles, fill = T)
df_abs_C0 <- gather(df_abs_C0)
df_abs_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20) ####!!!Participant 1 is missing 
df_abs_C0$image <- rep(rep(seq(1:20), 10),13) ####!!!Participant 1 is missing
df_abs_C0 <- plyr::rename(df_abs_C0, c("key"="Fixation_Index","value"="AUC"))
df_abs_C0$genre <- rep('abstract_',2600)
df_abs_C0$image <- paste(df_abs_C0$genre,df_abs_C0$image)
df_abs_C0$image <- str_replace_all(df_abs_C0$image," ","")
df_abs_C0$Fixation_Index <- str_replace_all(df_abs_C0$Fixation_Index,"V","")
df_abs_C0$condition <- rep(0,2600)
df_abs_C0$map_type <- rep('combined',2600)
#df$Fixation_Index <- as.numeric(df$Fixation_Index)

temp = list.files(path = "AUC scores/Condition1/Abs/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_abs_C1 <- rbindlist(myfiles, fill = T)
df_abs_C1 <- gather(df_abs_C1)
df_abs_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20) #Participant 13 is missing
df_abs_C1$image <- rep(rep(seq(1:20), 10),12) 
df_abs_C1 <- plyr::rename(df_abs_C1, c("key"="Fixation_Index","value"="AUC"))
df_abs_C1$genre <- rep('abstract_',2400)
df_abs_C1$image <- paste(df_abs_C1$genre,df_abs_C1$image)
df_abs_C1$image <- str_replace_all(df_abs_C1$image," ","")
df_abs_C1$Fixation_Index <- str_replace_all(df_abs_C1$Fixation_Index,"V","")
df_abs_C1$condition <- rep(1,2400)
df_abs_C1$map_type <- rep('combined',2400)

temp = list.files(path = "AUC scores/Condition0/Fig/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_fig_C0 <- rbindlist(myfiles, fill = T)
df_fig_C0 <- gather(df_fig_C0)
df_fig_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20) ###!!!Participant 1 is missing 
df_fig_C0$image <- rep(rep(seq(1:20), 10),13) ###!!!Participant 1 is missing
df_fig_C0 <- plyr::rename(df_fig_C0, c("key"="Fixation_Index","value"="AUC"))
df_fig_C0$genre <- rep('fig_',2600)
df_fig_C0$image <- paste(df_fig_C0$genre,df_fig_C0$image)
df_fig_C0$image <- str_replace_all(df_fig_C0$image," ","")
df_fig_C0$Fixation_Index <- str_replace_all(df_fig_C0$Fixation_Index,"V","")
df_fig_C0$condition <- rep(0,2600)
df_fig_C0$map_type <- rep('combined',2600)
#df$Fixation_Index <- as.numeric(df$Fixation_Index)

temp = list.files(path = "AUC scores/Condition1/Fig/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_fig_C1 <- rbindlist(myfiles, fill = T)
df_fig_C1 <- gather(df_fig_C1)
df_fig_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20) #change ID's accordingly
df_fig_C1$image <- rep(rep(seq(1:20), 10),12)
df_fig_C1 <- plyr::rename(df_fig_C1, c("key"="Fixation_Index","value"="AUC"))
df_fig_C1$genre <- rep('fig_',2400)
df_fig_C1$image <- paste(df_fig_C1$genre,df_fig_C1$image)
df_fig_C1$image <- str_replace_all(df_fig_C1$image," ","")
df_fig_C1$Fixation_Index <- str_replace_all(df_fig_C1$Fixation_Index,"V","")
df_fig_C1$condition <- rep(1,2400)
df_fig_C1$map_type <- rep('combined',2400)
#df$Fixation_Index <- as.numeric(df$Fixation_Index)

new_data <- rbind(df_abs_C0,df_abs_C1,df_fig_C0,df_fig_C1)

#Three other maps
#Color
temp = list.files(path = "AUC scores/Condition0/Abs/color/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_abs_C0 <- rbindlist(myfiles, fill = T)
df_abs_C0 <- gather(df_abs_C0)
df_abs_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20) ####!!!Participant 1 is missing 
df_abs_C0$image <- rep(rep(seq(1:20), 10),13) ####!!!Participant 1 is missing
df_abs_C0 <- plyr::rename(df_abs_C0, c("key"="Fixation_Index","value"="AUC"))
df_abs_C0$genre <- rep('abstract_',2600)
df_abs_C0$image <- paste(df_abs_C0$genre,df_abs_C0$image)
df_abs_C0$image <- str_replace_all(df_abs_C0$image," ","")
df_abs_C0$Fixation_Index <- str_replace_all(df_abs_C0$Fixation_Index,"V","")
df_abs_C0$condition <- rep(0,2600)
df_abs_C0$map_type <- rep('color',2600)
#df$Fixation_Index <- as.numeric(df$Fixation_Index)

temp = list.files(path = "AUC scores/Condition1/Abs/color/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_abs_C1 <- rbindlist(myfiles, fill = T)
df_abs_C1 <- gather(df_abs_C1)
df_abs_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20) #Participant 13 is missing
df_abs_C1$image <- rep(rep(seq(1:20), 10),12) 
df_abs_C1 <- plyr::rename(df_abs_C1, c("key"="Fixation_Index","value"="AUC"))
df_abs_C1$genre <- rep('abstract_',2400)
df_abs_C1$image <- paste(df_abs_C1$genre,df_abs_C1$image)
df_abs_C1$image <- str_replace_all(df_abs_C1$image," ","")
df_abs_C1$Fixation_Index <- str_replace_all(df_abs_C1$Fixation_Index,"V","")
df_abs_C1$condition <- rep(1,2400)
df_abs_C1$map_type <- rep('color',2400)


temp = list.files(path = "AUC scores/Condition0/Fig/color", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_fig_C0 <- rbindlist(myfiles, fill = T)
df_fig_C0 <- gather(df_fig_C0)
df_fig_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20) ###!!!Participant 1 is missing 
df_fig_C0$image <- rep(rep(seq(1:20), 10),13) ###!!!Participant 1 is missing
df_fig_C0 <- plyr::rename(df_fig_C0, c("key"="Fixation_Index","value"="AUC"))
df_fig_C0$genre <- rep('fig_',2600)
df_fig_C0$image <- paste(df_fig_C0$genre,df_fig_C0$image)
df_fig_C0$image <- str_replace_all(df_fig_C0$image," ","")
df_fig_C0$Fixation_Index <- str_replace_all(df_fig_C0$Fixation_Index,"V","")
df_fig_C0$condition <- rep(0,2600)
df_fig_C0$map_type <- rep('color',2600)
#df$Fixation_Index <- as.numeric(df$Fixation_Index)

temp = list.files(path = "AUC scores/Condition1/Fig/color", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_fig_C1 <- rbindlist(myfiles, fill = T)
df_fig_C1 <- gather(df_fig_C1)
df_fig_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20) #change ID's accordingly
df_fig_C1$image <- rep(rep(seq(1:20), 10),12)
df_fig_C1 <- plyr::rename(df_fig_C1, c("key"="Fixation_Index","value"="AUC"))
df_fig_C1$genre <- rep('fig_',2400)
df_fig_C1$image <- paste(df_fig_C1$genre,df_fig_C1$image)
df_fig_C1$image <- str_replace_all(df_fig_C1$image," ","")
df_fig_C1$Fixation_Index <- str_replace_all(df_fig_C1$Fixation_Index,"V","")
df_fig_C1$condition <- rep(1,2400)
df_fig_C1$map_type <- rep('color',2400)
#df$Fixation_Index <- as.numeric(df$Fixation_Index)

new_data <- rbind(new_data,df_abs_C0, df_abs_C1,df_fig_C0,df_abs_C1)

#Intensity
temp = list.files(path = "AUC scores/Condition0/Abs/int/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_abs_C0 <- rbindlist(myfiles, fill = T)
df_abs_C0 <- gather(df_abs_C0)
df_abs_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20) ####!!!Participant 1 is missing 
df_abs_C0$image <- rep(rep(seq(1:20), 10),13) ####!!!Participant 1 is missing
df_abs_C0 <- plyr::rename(df_abs_C0, c("key"="Fixation_Index","value"="AUC"))
df_abs_C0$genre <- rep('abstract_',2600)
df_abs_C0$image <- paste(df_abs_C0$genre,df_abs_C0$image)
df_abs_C0$image <- str_replace_all(df_abs_C0$image," ","")
df_abs_C0$Fixation_Index <- str_replace_all(df_abs_C0$Fixation_Index,"V","")
df_abs_C0$condition <- rep(0,2600)
df_abs_C0$map_type <- rep('intensity',2600)
#df$Fixation_Index <- as.numeric(df$Fixation_Index)

temp = list.files(path = "AUC scores/Condition1/Abs/int/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_abs_C1 <- rbindlist(myfiles, fill = T)
df_abs_C1 <- gather(df_abs_C1)
df_abs_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20) #Participant 13 is missing
df_abs_C1$image <- rep(rep(seq(1:20), 10),12) 
df_abs_C1 <- plyr::rename(df_abs_C1, c("key"="Fixation_Index","value"="AUC"))
df_abs_C1$genre <- rep('abstract_',2400)
df_abs_C1$image <- paste(df_abs_C1$genre,df_abs_C1$image)
df_abs_C1$image <- str_replace_all(df_abs_C1$image," ","")
df_abs_C1$Fixation_Index <- str_replace_all(df_abs_C1$Fixation_Index,"V","")
df_abs_C1$condition <- rep(1,2400)
df_abs_C1$map_type <- rep('intensity',2400)


temp = list.files(path = "AUC scores/Condition0/Fig/int", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_fig_C0 <- rbindlist(myfiles, fill = T)
df_fig_C0 <- gather(df_fig_C0)
df_fig_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20) ###!!!Participant 1 is missing 
df_fig_C0$image <- rep(rep(seq(1:20), 10),13) ###!!!Participant 1 is missing
df_fig_C0 <- plyr::rename(df_fig_C0, c("key"="Fixation_Index","value"="AUC"))
df_fig_C0$genre <- rep('fig_',2600)
df_fig_C0$image <- paste(df_fig_C0$genre,df_fig_C0$image)
df_fig_C0$image <- str_replace_all(df_fig_C0$image," ","")
df_fig_C0$Fixation_Index <- str_replace_all(df_fig_C0$Fixation_Index,"V","")
df_fig_C0$condition <- rep(0,2600)
df_fig_C0$map_type <- rep('intensity',2600)
#df$Fixation_Index <- as.numeric(df$Fixation_Index)

temp = list.files(path = "AUC scores/Condition1/Fig/int", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_fig_C1 <- rbindlist(myfiles, fill = T)
df_fig_C1 <- gather(df_fig_C1)
df_fig_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20) #change ID's accordingly
df_fig_C1$image <- rep(rep(seq(1:20), 10),12)
df_fig_C1 <- plyr::rename(df_fig_C1, c("key"="Fixation_Index","value"="AUC"))
df_fig_C1$genre <- rep('fig_',2400)
df_fig_C1$image <- paste(df_fig_C1$genre,df_fig_C1$image)
df_fig_C1$image <- str_replace_all(df_fig_C1$image," ","")
df_fig_C1$Fixation_Index <- str_replace_all(df_fig_C1$Fixation_Index,"V","")
df_fig_C1$condition <- rep(1,2400)
df_fig_C1$map_type <- rep('intensity',2400)
#df$Fixation_Index <- as.numeric(df$Fixation_Index)

new_data <- rbind(new_data,df_fig_C0,df_fig_C1,df_abs_C0,df_abs_C1)

#Orientation
temp = list.files(path = "AUC scores/Condition0/Abs/ori/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_abs_C0 <- rbindlist(myfiles, fill = T)
df_abs_C0 <- gather(df_abs_C0)
df_abs_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20) ####!!!Participant 1 is missing 
df_abs_C0$image <- rep(rep(seq(1:20), 10),13) ####!!!Participant 1 is missing
df_abs_C0 <- plyr::rename(df_abs_C0, c("key"="Fixation_Index","value"="AUC"))
df_abs_C0$genre <- rep('abstract_',2600)
df_abs_C0$image <- paste(df_abs_C0$genre,df_abs_C0$image)
df_abs_C0$image <- str_replace_all(df_abs_C0$image," ","")
df_abs_C0$Fixation_Index <- str_replace_all(df_abs_C0$Fixation_Index,"V","")
df_abs_C0$condition <- rep(0,2600)
df_abs_C0$map_type <- rep('orientation',2600)
#df$Fixation_Index <- as.numeric(df$Fixation_Index)

temp = list.files(path = "AUC scores/Condition1/Abs/ori/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_abs_C1 <- rbindlist(myfiles, fill = T)
df_abs_C1 <- gather(df_abs_C1)
df_abs_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20) #Participant 13 is missing
df_abs_C1$image <- rep(rep(seq(1:20), 10),12) 
df_abs_C1 <- plyr::rename(df_abs_C1, c("key"="Fixation_Index","value"="AUC"))
df_abs_C1$genre <- rep('abstract_',2400)
df_abs_C1$image <- paste(df_abs_C1$genre,df_abs_C1$image)
df_abs_C1$image <- str_replace_all(df_abs_C1$image," ","")
df_abs_C1$Fixation_Index <- str_replace_all(df_abs_C1$Fixation_Index,"V","")
df_abs_C1$condition <- rep(1,2400)
df_abs_C1$map_type <- rep('orientation',2400)


temp = list.files(path = "AUC scores/Condition0/Fig/ori", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_fig_C0 <- rbindlist(myfiles, fill = T)
df_fig_C0 <- gather(df_fig_C0)
df_fig_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20) ###!!!Participant 1 is missing 
df_fig_C0$image <- rep(rep(seq(1:20), 10),13) ###!!!Participant 1 is missing
df_fig_C0 <- plyr::rename(df_fig_C0, c("key"="Fixation_Index","value"="AUC"))
df_fig_C0$genre <- rep('fig_',2600)
df_fig_C0$image <- paste(df_fig_C0$genre,df_fig_C0$image)
df_fig_C0$image <- str_replace_all(df_fig_C0$image," ","")
df_fig_C0$Fixation_Index <- str_replace_all(df_fig_C0$Fixation_Index,"V","")
df_fig_C0$condition <- rep(0,2600)
df_fig_C0$map_type <- rep('orientation',2600)
#df$Fixation_Index <- as.numeric(df$Fixation_Index)

temp = list.files(path = "AUC scores/Condition1/Fig/ori", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.delim,sep=",",header = F)
df_fig_C1 <- rbindlist(myfiles, fill = T)
df_fig_C1 <- gather(df_fig_C1)
df_fig_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20) #change ID's accordingly
df_fig_C1$image <- rep(rep(seq(1:20), 10),12)
df_fig_C1 <- plyr::rename(df_fig_C1, c("key"="Fixation_Index","value"="AUC"))
df_fig_C1$genre <- rep('fig_',2400)
df_fig_C1$image <- paste(df_fig_C1$genre,df_fig_C1$image)
df_fig_C1$image <- str_replace_all(df_fig_C1$image," ","")
df_fig_C1$Fixation_Index <- str_replace_all(df_fig_C1$Fixation_Index,"V","")
df_fig_C1$condition <- rep(1,2400)
df_fig_C1$map_type <- rep('orientation',2400)
#df$Fixation_Index <- as.numeric(df$Fixation_Index)

new_data <- rbind(new_data,df_fig_C0,df_fig_C1,df_abs_C0,df_abs_C1)

write.csv(new_data, 'AUC_scores_allpart_allfix.csv')

#Adding the 'special' participants
P1 <- read.csv('AUC scores/Condition0/IndFix_rocScores_abs_P1_ori.csv', header = F)
P1 <- gather(P1)
P1$ID <- rep(c('1'),19) #change ID's accordingly
P1$image <- rep(c(seq(1:18),20), 10)
P1 <- plyr::rename(P1, c("key"="Fixation_Index","value"="AUC"))
P1$genre <- rep('abstract_',190)
P1$image <- paste(P1$genre,P1$image)
P1$image <- str_replace_all(P1$image," ","")
P1$Fixation_Index <- str_replace_all(P1$Fixation_Index,"V","")
P1$condition <- rep(0,190)
P1$map_type <- rep('orientation',190)

new_data <- rbind(P1,new_data)

P1 <- read.csv('AUC scores/Condition0/IndFix_rocScores_fig_P1_ori.csv', header = F)
P1 <- gather(P1)
P1$ID <- rep(c('1'),20) #change ID's accordingly
P1$image <- rep(seq(1:20), 10)
P1 <- plyr::rename(P1, c("key"="Fixation_Index","value"="AUC"))
P1$genre <- rep('fig_',200)
P1$image <- paste(P1$genre,P1$image)
P1$image <- str_replace_all(P1$image," ","")
P1$Fixation_Index <- str_replace_all(P1$Fixation_Index,"V","")
P1$condition <- rep(0,200)
P1$map_type <- rep('orientation',200)

new_data <- rbind(P1,new_data)


P13 <- read.csv('AUC scores/Condition1/IndFix_rocScores_abs_P13_ori.csv', header = F)
P13 <- gather(P13)
P13$ID <- rep(c('13'),20) #change ID's accordingly
P13$image <- rep(seq(1:20), 10)
P13 <- plyr::rename(P13, c("key"="Fixation_Index","value"="AUC"))
P13$genre <- rep('abstract_',200)
P13$image <- paste(P13$genre,P13$image)
P13$image <- str_replace_all(P13$image," ","")
P13$Fixation_Index <- str_replace_all(P13$Fixation_Index,"V","")
P13$condition <- rep(1,200)
P13$map_type <- rep('orientation',200)

new_data <- rbind(P13,new_data)

P13 <- read.csv('AUC scores/Condition1/IndFix_rocScores_fig_P13_ori.csv', header = F)
P13 <- gather(P13)
P13$ID <- rep(c('13'),19) #change ID's accordingly
P13$image <- rep(c(seq(1:6),seq(8:20)), 10)
P13 <- plyr::rename(P13, c("key"="Fixation_Index","value"="AUC"))
P13$genre <- rep('fig_',190)
P13$image <- paste(P13$genre,P13$image)
P13$image <- str_replace_all(P13$image," ","")
P13$Fixation_Index <- str_replace_all(P13$Fixation_Index,"V","")
P13$condition <- rep(1,190)
P13$map_type <- rep('orientation',190)

new_data <- rbind(P13,new_data)

write.csv(new_data, "AUC_scores_nowWithAllPart.csv")


#During the five first seconds
he <- read.csv('AUC scores/IndFix_rocScores_5s_abs_P2.csv', header = F)
rownames(he) = c("abstract_1", "abstract_2", "abstract_3", "abstract_4","abstract_5","abstract_6","abstract_7",
                 "abstract_8","abstract_9","abstract_10",
                 "abstract_11","abstract_12","abstract_13","abstract_14","abstract_15","abstract_16","abstract_17",
                 "abstract_18","abstract_19","abstract_20")
he <- setDT(he, keep.rownames = TRUE)[]
he <- reshape(hehe, idvar = 'rn', varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13'),v.names = 'AUC', direction = "long")
he <- na.omit(he)
he <- plyr::rename(he, c("rn"="image","time"="Fixation_Index"))
he$genre <- 'abstract'
he$condition <- '1'

#Reading multiple files:

temp = list.files(path = "AUC scores/first5seconds/Condition0/Fig", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
df_fig_C0 <- rbindlist(myfiles, fill = T)
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_fig_C0$image = rep(c("fig_1", "fig_2", "fig_3", "fig_4","fig_5","fig_6","fig_7",
                 "fig_8","fig_9","fig_10",
                 "fig_11","fig_12","fig_13","fig_14","fig_15","fig_16","fig_17",
                 "fig_18","fig_19","fig_20"),13)

df_fig_C0[, colSums(is.na(df_fig_C0)) != nrow(df_fig_C0)]
df_fig_C0 <- subset(df_fig_C0, select = -c(V16,V17,V18,V19,V20))
df_fig_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20)
df_fig_C0 <- reshape(df_fig_C0, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14','V15'),v.names = 'AUC', direction = "long")
df_fig_C0 <- na.omit(df_fig_C0)
df_fig_C0 <- plyr::rename(df_fig_C0, c("time"="Fixation_Index"))
df_fig_C0$genre <- 'fig'
df_fig_C0$condition <- '0'
df_fig_C0$map_type <- 'combined'


temp = list.files(path = "AUC scores/first5seconds/Condition1/Fig/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_fig_C1 <- rbindlist(myfiles, fill = T)
df_fig_C1$image = rep(c("fig_1", "fig_2", "fig_3", "fig_4","fig_5","fig_6","fig_7",
                        "fig_8","fig_9","fig_10",
                        "fig_11","fig_12","fig_13","fig_14","fig_15","fig_16","fig_17",
                        "fig_18","fig_19","fig_20"),12)

df_fig_C1[, colSums(is.na(df_fig_C1)) != nrow(df_fig_C1)]
df_fig_C1 <- subset(df_fig_C1, select = -c(V16,V17,V18,V19,V20))
df_fig_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20)
df_fig_C1 <- reshape(df_fig_C1, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14','V15'),v.names = 'AUC', direction = "long")
df_fig_C1 <- na.omit(df_fig_C1)
df_fig_C1 <- plyr::rename(df_fig_C1, c("time"="Fixation_Index"))
df_fig_C1$genre <- 'fig'
df_fig_C1$condition <- '1'
df_fig_C1$map_type <- 'combined'


temp = list.files(path = "AUC scores/first5seconds/Condition1/Abs/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_abs_C1 <- rbindlist(myfiles, fill = T)
df_abs_C1$image = rep(c("abstract_1", "abstract_2", "abstract_3", "abstract_4","abstract_5","abstract_6","abstract_7",
                          "abstract_8","abstract_9","abstract_10",
                          "abstract_11","abstract_12","abstract_13","abstract_14","abstract_15","abstract_16","abstract_17",
                          "abstract_18","abstract_19","abstract_20"),12)

df_abs_C1[, colSums(is.na(df_abs_C1)) != nrow(df_abs_C1)]
df_abs_C1 <- subset(df_abs_C1, select = -c(V15,V16,V17,V18,V19,V20))
df_abs_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20)
df_abs_C1 <- reshape(df_abs_C1, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14'),v.names = 'AUC', direction = "long")
df_abs_C1 <- na.omit(df_abs_C1)
df_abs_C1 <- plyr::rename(df_abs_C1, c("time"="Fixation_Index"))
df_abs_C1$genre <- 'abstract'
df_abs_C1$condition <- '1'
df_abs_C1$map_type <- 'combined'

temp = list.files(path = "AUC scores/first5seconds/Condition0/Abs/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_abs_C0 <- rbindlist(myfiles, fill = T)
df_abs_C0$image = rep(c("abstract_1", "abstract_2", "abstract_3", "abstract_4","abstract_5","abstract_6","abstract_7",
                        "abstract_8","abstract_9","abstract_10",
                        "abstract_11","abstract_12","abstract_13","abstract_14","abstract_15","abstract_16","abstract_17",
                        "abstract_18","abstract_19","abstract_20"),13)

df_abs_C0[, colSums(is.na(df_abs_C0)) != nrow(df_abs_C0)]
df_abs_C0 <- subset(df_abs_C0, select = -c(V16,V17,V18,V19,V20))
df_abs_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                          '22','23','25','26'),each = 20)
df_abs_C0 <- reshape(df_abs_C0, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14','V15'),v.names = 'AUC', direction = "long")
df_abs_C0 <- na.omit(df_abs_C0)
df_abs_C0 <- plyr::rename(df_abs_C0, c("time"="Fixation_Index"))
df_abs_C0$genre <- 'abstract'
df_abs_C0$condition <- '0'
df_abs_C0$map_type <- 'combined'

five_sec_df <- rbind(df_fig_C0,df_fig_C1,df_abs_C0,df_abs_C1)

#Color

temp = list.files(path = "AUC scores/first5seconds/Condition0/Fig/color/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
df_fig_C0 <- rbindlist(myfiles, fill = T)
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_fig_C0$image = rep(c("fig_1", "fig_2", "fig_3", "fig_4","fig_5","fig_6","fig_7",
                        "fig_8","fig_9","fig_10",
                        "fig_11","fig_12","fig_13","fig_14","fig_15","fig_16","fig_17",
                        "fig_18","fig_19","fig_20"),13)

df_fig_C0[, colSums(is.na(df_fig_C0)) != nrow(df_fig_C0)]
df_fig_C0 <- subset(df_fig_C0, select = -c(V16,V17,V18,V19,V20))
df_fig_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20)
df_fig_C0 <- reshape(df_fig_C0, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14','V15'),v.names = 'AUC', direction = "long")
df_fig_C0 <- na.omit(df_fig_C0)
df_fig_C0 <- plyr::rename(df_fig_C0, c("time"="Fixation_Index"))
df_fig_C0$genre <- 'fig'
df_fig_C0$condition <- '0'
df_fig_C0$map_type <- 'color'


temp = list.files(path = "AUC scores/first5seconds/Condition1/Fig/color/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_fig_C1 <- rbindlist(myfiles, fill = T)
df_fig_C1$image = rep(c("fig_1", "fig_2", "fig_3", "fig_4","fig_5","fig_6","fig_7",
                        "fig_8","fig_9","fig_10",
                        "fig_11","fig_12","fig_13","fig_14","fig_15","fig_16","fig_17",
                        "fig_18","fig_19","fig_20"),12)

df_fig_C1[, colSums(is.na(df_fig_C1)) != nrow(df_fig_C1)]
df_fig_C1 <- subset(df_fig_C1, select = -c(V16,V17,V18,V19,V20))
df_fig_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20)
df_fig_C1 <- reshape(df_fig_C1, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14','V15'),v.names = 'AUC', direction = "long")
df_fig_C1 <- na.omit(df_fig_C1)
df_fig_C1 <- plyr::rename(df_fig_C1, c("time"="Fixation_Index"))
df_fig_C1$genre <- 'fig'
df_fig_C1$condition <- '1'
df_fig_C1$map_type <- 'color'


temp = list.files(path = "AUC scores/first5seconds/Condition1/Abs/color/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_abs_C1 <- rbindlist(myfiles, fill = T)
df_abs_C1$image = rep(c("abstract_1", "abstract_2", "abstract_3", "abstract_4","abstract_5","abstract_6","abstract_7",
                        "abstract_8","abstract_9","abstract_10",
                        "abstract_11","abstract_12","abstract_13","abstract_14","abstract_15","abstract_16","abstract_17",
                        "abstract_18","abstract_19","abstract_20"),12)

df_abs_C1[, colSums(is.na(df_abs_C1)) != nrow(df_abs_C1)]
df_abs_C1 <- subset(df_abs_C1, select = -c(V15,V16,V17,V18,V19,V20))
df_abs_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20)
df_abs_C1 <- reshape(df_abs_C1, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14'),v.names = 'AUC', direction = "long")
df_abs_C1 <- na.omit(df_abs_C1)
df_abs_C1 <- plyr::rename(df_abs_C1, c("time"="Fixation_Index"))
df_abs_C1$genre <- 'abstract'
df_abs_C1$condition <- '1'
df_abs_C1$map_type <- 'color'

temp = list.files(path = "AUC scores/first5seconds/Condition0/Abs/color/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_abs_C0 <- rbindlist(myfiles, fill = T)
df_abs_C0$image = rep(c("abstract_1", "abstract_2", "abstract_3", "abstract_4","abstract_5","abstract_6","abstract_7",
                        "abstract_8","abstract_9","abstract_10",
                        "abstract_11","abstract_12","abstract_13","abstract_14","abstract_15","abstract_16","abstract_17",
                        "abstract_18","abstract_19","abstract_20"),13)

df_abs_C0[, colSums(is.na(df_abs_C0)) != nrow(df_abs_C0)]
df_abs_C0 <- subset(df_abs_C0, select = -c(V16,V17,V18,V19,V20))
df_abs_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20)
df_abs_C0 <- reshape(df_abs_C0, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14','V15'),v.names = 'AUC', direction = "long")
df_abs_C0 <- na.omit(df_abs_C0)
df_abs_C0 <- plyr::rename(df_abs_C0, c("time"="Fixation_Index"))
df_abs_C0$genre <- 'abstract'
df_abs_C0$condition <- '0'
df_abs_C0$map_type <- 'color'

five_sec_df <- rbind(five_sec_df,df_fig_C0,df_fig_C1,df_abs_C0,df_abs_C1)

#Intensity

temp = list.files(path = "AUC scores/first5seconds/Condition0/Fig/int/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
df_fig_C0 <- rbindlist(myfiles, fill = T)
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_fig_C0$image = rep(c("fig_1", "fig_2", "fig_3", "fig_4","fig_5","fig_6","fig_7",
                        "fig_8","fig_9","fig_10",
                        "fig_11","fig_12","fig_13","fig_14","fig_15","fig_16","fig_17",
                        "fig_18","fig_19","fig_20"),13)

df_fig_C0[, colSums(is.na(df_fig_C0)) != nrow(df_fig_C0)]
df_fig_C0 <- subset(df_fig_C0, select = -c(V16,V17,V18,V19,V20))
df_fig_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20)
df_fig_C0 <- reshape(df_fig_C0, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14','V15'),v.names = 'AUC', direction = "long")
df_fig_C0 <- na.omit(df_fig_C0)
df_fig_C0 <- plyr::rename(df_fig_C0, c("time"="Fixation_Index"))
df_fig_C0$genre <- 'fig'
df_fig_C0$condition <- '0'
df_fig_C0$map_type <- 'intensity'


temp = list.files(path = "AUC scores/first5seconds/Condition1/Fig/int/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_fig_C1 <- rbindlist(myfiles, fill = T)
df_fig_C1$image = rep(c("fig_1", "fig_2", "fig_3", "fig_4","fig_5","fig_6","fig_7",
                        "fig_8","fig_9","fig_10",
                        "fig_11","fig_12","fig_13","fig_14","fig_15","fig_16","fig_17",
                        "fig_18","fig_19","fig_20"),12)

df_fig_C1[, colSums(is.na(df_fig_C1)) != nrow(df_fig_C1)]
df_fig_C1 <- subset(df_fig_C1, select = -c(V16,V17,V18,V19,V20))
df_fig_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20)
df_fig_C1 <- reshape(df_fig_C1, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14','V15'),v.names = 'AUC', direction = "long")
df_fig_C1 <- na.omit(df_fig_C1)
df_fig_C1 <- plyr::rename(df_fig_C1, c("time"="Fixation_Index"))
df_fig_C1$genre <- 'fig'
df_fig_C1$condition <- '1'
df_fig_C1$map_type <- 'intensity'


temp = list.files(path = "AUC scores/first5seconds/Condition1/Abs/int/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_abs_C1 <- rbindlist(myfiles, fill = T)
df_abs_C1$image = rep(c("abstract_1", "abstract_2", "abstract_3", "abstract_4","abstract_5","abstract_6","abstract_7",
                        "abstract_8","abstract_9","abstract_10",
                        "abstract_11","abstract_12","abstract_13","abstract_14","abstract_15","abstract_16","abstract_17",
                        "abstract_18","abstract_19","abstract_20"),12)

df_abs_C1[, colSums(is.na(df_abs_C1)) != nrow(df_abs_C1)]
df_abs_C1 <- subset(df_abs_C1, select = -c(V15,V16,V17,V18,V19,V20))
df_abs_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20)
df_abs_C1 <- reshape(df_abs_C1, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14'),v.names = 'AUC', direction = "long")
df_abs_C1 <- na.omit(df_abs_C1)
df_abs_C1 <- plyr::rename(df_abs_C1, c("time"="Fixation_Index"))
df_abs_C1$genre <- 'abstract'
df_abs_C1$condition <- '1'
df_abs_C1$map_type <- 'intensity'

temp = list.files(path = "AUC scores/first5seconds/Condition0/Abs/int/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_abs_C0 <- rbindlist(myfiles, fill = T)
df_abs_C0$image = rep(c("abstract_1", "abstract_2", "abstract_3", "abstract_4","abstract_5","abstract_6","abstract_7",
                        "abstract_8","abstract_9","abstract_10",
                        "abstract_11","abstract_12","abstract_13","abstract_14","abstract_15","abstract_16","abstract_17",
                        "abstract_18","abstract_19","abstract_20"),13)

df_abs_C0[, colSums(is.na(df_abs_C0)) != nrow(df_abs_C0)]
df_abs_C0 <- subset(df_abs_C0, select = -c(V16,V17,V18,V19,V20))
df_abs_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20)
df_abs_C0 <- reshape(df_abs_C0, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14','V15'),v.names = 'AUC', direction = "long")
df_abs_C0 <- na.omit(df_abs_C0)
df_abs_C0 <- plyr::rename(df_abs_C0, c("time"="Fixation_Index"))
df_abs_C0$genre <- 'abstract'
df_abs_C0$condition <- '0'
df_abs_C0$map_type <- 'intensity'

five_sec_df <- rbind(five_sec_df,df_fig_C0,df_fig_C1,df_abs_C0,df_abs_C1)

#Orientation

temp = list.files(path = "AUC scores/first5seconds/Condition0/Fig/ori/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
df_fig_C0 <- rbindlist(myfiles, fill = T)
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_fig_C0$image = rep(c("fig_1", "fig_2", "fig_3", "fig_4","fig_5","fig_6","fig_7",
                        "fig_8","fig_9","fig_10",
                        "fig_11","fig_12","fig_13","fig_14","fig_15","fig_16","fig_17",
                        "fig_18","fig_19","fig_20"),13)

df_fig_C0[, colSums(is.na(df_fig_C0)) != nrow(df_fig_C0)]
df_fig_C0 <- subset(df_fig_C0, select = -c(V16,V17,V18,V19,V20))
df_fig_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20)
df_fig_C0 <- reshape(df_fig_C0, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14','V15'),v.names = 'AUC', direction = "long")
df_fig_C0 <- na.omit(df_fig_C0)
df_fig_C0 <- plyr::rename(df_fig_C0, c("time"="Fixation_Index"))
df_fig_C0$genre <- 'fig'
df_fig_C0$condition <- '0'
df_fig_C0$map_type <- 'orientation'


temp = list.files(path = "AUC scores/first5seconds/Condition1/Fig/ori/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_fig_C1 <- rbindlist(myfiles, fill = T)
df_fig_C1$image = rep(c("fig_1", "fig_2", "fig_3", "fig_4","fig_5","fig_6","fig_7",
                        "fig_8","fig_9","fig_10",
                        "fig_11","fig_12","fig_13","fig_14","fig_15","fig_16","fig_17",
                        "fig_18","fig_19","fig_20"),12)

df_fig_C1[, colSums(is.na(df_fig_C1)) != nrow(df_fig_C1)]
df_fig_C1 <- subset(df_fig_C1, select = -c(V16,V17,V18,V19,V20))
df_fig_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20)
df_fig_C1 <- reshape(df_fig_C1, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14','V15'),v.names = 'AUC', direction = "long")
df_fig_C1 <- na.omit(df_fig_C1)
df_fig_C1 <- plyr::rename(df_fig_C1, c("time"="Fixation_Index"))
df_fig_C1$genre <- 'fig'
df_fig_C1$condition <- '1'
df_fig_C1$map_type <- 'orientation'


temp = list.files(path = "AUC scores/first5seconds/Condition1/Abs/ori/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_abs_C1 <- rbindlist(myfiles, fill = T)
df_abs_C1$image = rep(c("abstract_1", "abstract_2", "abstract_3", "abstract_4","abstract_5","abstract_6","abstract_7",
                        "abstract_8","abstract_9","abstract_10",
                        "abstract_11","abstract_12","abstract_13","abstract_14","abstract_15","abstract_16","abstract_17",
                        "abstract_18","abstract_19","abstract_20"),12)

df_abs_C1[, colSums(is.na(df_abs_C1)) != nrow(df_abs_C1)]
df_abs_C1 <- subset(df_abs_C1, select = -c(V15,V16,V17,V18,V19,V20))
df_abs_C1$ID <- rep(c('2','5','6','8','10','11','17',
                      '19','20','21','24','27'),each = 20)
df_abs_C1 <- reshape(df_abs_C1, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14'),v.names = 'AUC', direction = "long")
df_abs_C1 <- na.omit(df_abs_C1)
df_abs_C1 <- plyr::rename(df_abs_C1, c("time"="Fixation_Index"))
df_abs_C1$genre <- 'abstract'
df_abs_C1$condition <- '1'
df_abs_C1$map_type <- 'orientation'

temp = list.files(path = "AUC scores/first5seconds/Condition0/Abs/ori/", pattern = "*.csv", full.names = T)
mixedsort(sort(temp))
myfiles = lapply(temp,read.table,sep=",",header = F, col.names = paste0("V",seq_len(20)), fill = TRUE)
df_abs_C0 <- rbindlist(myfiles, fill = T)
df_abs_C0$image = rep(c("abstract_1", "abstract_2", "abstract_3", "abstract_4","abstract_5","abstract_6","abstract_7",
                        "abstract_8","abstract_9","abstract_10",
                        "abstract_11","abstract_12","abstract_13","abstract_14","abstract_15","abstract_16","abstract_17",
                        "abstract_18","abstract_19","abstract_20"),13)

df_abs_C0[, colSums(is.na(df_abs_C0)) != nrow(df_abs_C0)]
df_abs_C0 <- subset(df_abs_C0, select = -c(V16,V17,V18,V19,V20))
df_abs_C0$ID <- rep(c('3','4','7','9', '12','14','15','16','18',
                      '22','23','25','26'),each = 20)
df_abs_C0 <- reshape(df_abs_C0, idvar = c('image', 'ID'), varying = c('V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14','V15'),v.names = 'AUC', direction = "long")
df_abs_C0 <- na.omit(df_abs_C0)
df_abs_C0 <- plyr::rename(df_abs_C0, c("time"="Fixation_Index"))
df_abs_C0$genre <- 'abstract'
df_abs_C0$condition <- '0'
df_abs_C0$map_type <- 'orientation'

five_sec_df <- rbind(five_sec_df,df_fig_C0,df_fig_C1,df_abs_C0,df_abs_C1)

write.csv(five_sec_df, 'AUC_scores_5sec.csv')
