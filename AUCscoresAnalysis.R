#Prepping data for AUC analysis

#To do: Add AUC scores for conspicuity maps

#Load AUC data
rocScores_abs_C0 <- read.csv('rocScores_abs_C0.csv', header = F)
rocScores_abs_C1 <- read.csv('rocScores_abs_C1.csv', header = F)
rocScores_fig_C0 <- read.csv('rocScores_fig_C0.csv', header = F)
rocScores_fig_C1 <- read.csv('rocScores_fig_C1.csv', header = F)

rocScores_abs_C0 <- gather(rocScores_abs_C0)
rocScores_abs_C0 <- plyr::rename(rocScores_abs_C0, c("key"="image",'value'='AUC'))
rocScores_abs_C0$image = str_replace_all(rocScores_abs_C0$image,"V",'abstract_')
rocScores_abs_C0$condition = rep("0", 20)

rocScores_abs_C1 <- gather(rocScores_abs_C1)
rocScores_abs_C1 <- plyr::rename(rocScores_abs_C1, c("key"="image",'value'='AUC'))
rocScores_abs_C1$image = str_replace_all(rocScores_abs_C1$image,"V",'abstract_')
rocScores_abs_C1$condition = rep("1", 20)

rocScores_abs_all <- rbind(rocScores_abs_C0,rocScores_abs_C1)

rocScores_fig_C1 <- gather(rocScores_fig_C1)
rocScores_fig_C1 <- plyr::rename(rocScores_fig_C1, c("key"="image",'value'='AUC'))
rocScores_fig_C1$image = str_replace_all(rocScores_fig_C1$image,"V",'fig_')
rocScores_fig_C1$condition = rep("1", 20)

rocScores_fig_C0 <- gather(rocScores_fig_C0)
rocScores_fig_C0 <- plyr::rename(rocScores_fig_C0, c("key"="image",'value'='AUC'))
rocScores_fig_C0$image = str_replace_all(rocScores_fig_C0$image,"V",'fig_')
rocScores_fig_C0$condition = rep("0", 20)

rocScores_fig_all <- rbind(rocScores_fig_C0, rocScores_fig_C1)

rocScores_all <- rbind(rocScores_abs_all, rocScores_fig_all)
rocScores_all <- rocScores_all[order(rocScores_all[,1]),]

sR <- read.csv('SparsenessResults.csv')
sR <- subset(sR, select = c(image, peak_group))

final_df <- merge(rocScores_all,sR)
