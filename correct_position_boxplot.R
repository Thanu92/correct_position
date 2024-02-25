#Sep 20, 2023

Correct_position<- read.csv("Correct_Species_Placement.csv")
class(Correct_position)
names(Correct_position)
library(ggpubr)
ggboxplot(Correct_position,x="sample_type",y="correct_position_percentage", color = "sample_type",palette = c("#6BAED6" ,"#4292C6", "#2171B5", "#084594","#F1B6DA","#DE77AE","#C51B7D","#8E0152","#B8E186")
          ,main="Boxplot of correct species position percentage based on sample types",add= "point", width=1,outlier.shape = NA)


#In App-spaM/build folder
Correct_position<- read.csv("species_position_App-spam .csv")
class(Correct_position)
names(Correct_position)
library(ggpubr)
ggboxplot(Correct_position,x="sample_type",y="correct_position_percentage", color = "sample_type",palette = c("#6BAED6" ,"#4292C6", "#2171B5", "#084594")
          ,main="Boxplot of correct species position percentage based on sample types",add= "point", width=0.8,outlier.shape = NA)



#EPAng
Correct_position<- read.csv("EPAng_correct_positionCor.csv")
class(Correct_position)
names(Correct_position)
library(ggpubr)
ggboxplot(Correct_position,x="sample_type",y="correct_position_percentage", color = "sample_type",palette = c("#6BAED6" ,"#4292C6", "#2171B5", "#084594")
          ,main="Boxplot of correct species position percentage based on EPAng sample types",add= "point", width=0.8,outlier.shape = NA)

#datadriven 9 samples(random,strati and bias)
Correct_position<- read.csv("Bias_correct_sp_position.csv")
class(Correct_position)
names(Correct_position)
library(ggpubr)
ggboxplot(Correct_position,x="Sample_type",y="correct_position_percentage", color = "Sample_type",palette = c("#6BAED6" ,"#4292C6", "#2171B5", "#084594","#F1B6DA","#DE77AE","#C51B7D","#8E0152","#B8E186")
          ,main="Boxplot of correct species position percentage based on sample types",add= "point", width=1,outlier.shape = NA)
