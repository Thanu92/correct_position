#Sep 19, 2023

#Sister species table
getwd()
library(foreach)
#install.packages("phytools")
library(phytools)
library(maps)
library(phangorn)
library(phylotools)
#Read fasta files of placed co1 on the bb tree
R_co1_20_1=read.fasta(file = "CO1_20_1.fasta")
R_co1_20_2=read.fasta(file = "CO1_20_2.fasta")
R_co1_20_3=read.fasta(file = "CO1_20_3.fasta")
R_co1_20_4=read.fasta(file = "CO1_20_4.fasta")
R_co1_20_5=read.fasta(file = "CO1_20_5.fasta")
R_co1_20_6=read.fasta(file = "CO1_20_6.fasta")
R_co1_20_7=read.fasta(file = "CO1_20_7.fasta")
R_co1_20_8=read.fasta(file = "CO1_20_8.fasta")
R_co1_20_9=read.fasta(file = "CO1_20_9.fasta")
R_co1_20_10=read.fasta(file = "CO1_20_10.fasta")
R_co1_40_1=read.fasta(file = "CO1_40_1.fasta")
R_co1_40_2=read.fasta(file = "CO1_40_2.fasta")
R_co1_40_3=read.fasta(file = "CO1_40_3.fasta")
R_co1_40_4=read.fasta(file = "CO1_40_4.fasta")
R_co1_40_5=read.fasta(file = "CO1_40_5.fasta")
R_co1_40_6=read.fasta(file = "CO1_40_6.fasta")
R_co1_40_7=read.fasta(file = "CO1_40_7.fasta")
R_co1_40_8=read.fasta(file = "CO1_40_8.fasta")
R_co1_40_9=read.fasta(file = "CO1_40_9.fasta")
R_co1_40_10=read.fasta(file = "CO1_40_10.fasta")
R_co1_60_1=read.fasta(file = "CO1_60_1.fasta")
R_co1_60_2=read.fasta(file = "CO1_60_2.fasta")
R_co1_60_3=read.fasta(file = "CO1_60_3.fasta")
R_co1_60_4=read.fasta(file = "CO1_60_4.fasta")
R_co1_60_5=read.fasta(file = "CO1_60_5.fasta")
R_co1_60_6=read.fasta(file = "CO1_60_6.fasta")
R_co1_60_7=read.fasta(file = "CO1_60_7.fasta")
R_co1_60_8=read.fasta(file = "CO1_60_8.fasta")
R_co1_60_9=read.fasta(file = "CO1_60_9.fasta")
R_co1_60_10=read.fasta(file = "CO1_60_10.fasta")
R_co1_80_1=read.fasta(file = "CO1_80_1.fasta")
R_co1_80_2=read.fasta(file = "CO1_80_2.fasta")
R_co1_80_3=read.fasta(file = "CO1_80_3.fasta")
R_co1_80_4=read.fasta(file = "CO1_80_4.fasta")
R_co1_80_5=read.fasta(file = "CO1_80_5.fasta")
R_co1_80_6=read.fasta(file = "CO1_80_6.fasta")
R_co1_80_7=read.fasta(file = "CO1_80_7.fasta")
R_co1_80_8=read.fasta(file = "CO1_80_8.fasta")
R_co1_80_9=read.fasta(file = "CO1_80_9.fasta")
R_co1_80_10=read.fasta(file = "CO1_80_10.fasta")
class(R_co1_20_1)
#read the refernce tree
ReferenceTree <- read.tree("RAxML_bestTree.FR100_new")

#Read the 40 trees generated using EPA-ng Random samples
R20_1_tree<-read.tree("epa20_1.nwk")
R20_2_tree<-read.tree("epa20_2.nwk")
R20_3_tree<-read.tree("epa20_3.nwk")
R20_4_tree<-read.tree("epa20_4.nwk")
R20_5_tree<-read.tree("epa20_5.nwk")
R20_6_tree<-read.tree("epa20_6.nwk")
R20_7_tree<-read.tree("epa20_7.nwk")
R20_8_tree<-read.tree("epa20_8.nwk")
R20_9_tree<-read.tree("epa20_9.nwk")
R20_10_tree<-read.tree("epa20_10.nwk")
R40_1_tree<-read.tree("epa40_1.nwk")
R40_2_tree<-read.tree("epa40_2.nwk")
R40_3_tree<-read.tree("epa40_3.nwk")
R40_4_tree<-read.tree("epa40_4.nwk")
R40_5_tree<-read.tree("epa40_5.nwk")
R40_6_tree<-read.tree("epa40_6.nwk")
R40_7_tree<-read.tree("epa40_7.nwk")
R40_8_tree<-read.tree("epa40_8.nwk")
R40_9_tree<-read.tree("epa40_9.nwk")
R40_10_tree<-read.tree("epa40_10.nwk")
R60_1_tree<-read.tree("epa60_1.nwk")
R60_2_tree<-read.tree("epa60_2.nwk")
R60_3_tree<-read.tree("epa60_3.nwk")
R60_4_tree<-read.tree("epa60_4.nwk")
R60_5_tree<-read.tree("epa60_5.nwk")
R60_6_tree<-read.tree("epa60_6.nwk")
R60_7_tree<-read.tree("epa60_7.nwk")
R60_8_tree<-read.tree("epa60_8.nwk")
R60_9_tree<-read.tree("epa60_9.nwk")
R60_10_tree<-read.tree("epa60_10.nwk")
R80_1_tree<-read.tree("epa80_1.nwk")
R80_2_tree<-read.tree("epa80_2.nwk")
R80_3_tree<-read.tree("epa80_3.nwk")
R80_4_tree<-read.tree("epa80_4.nwk")
R80_5_tree<-read.tree("epa80_5.nwk")
R80_6_tree<-read.tree("epa80_6.nwk")
R80_7_tree<-read.tree("epa80_7.nwk")
R80_8_tree<-read.tree("epa80_8.nwk")
R80_9_tree<-read.tree("epa80_9.nwk")
R80_10_tree<-read.tree("epa80_10.nwk")


#------
R_co1_20_1_species <- R_co1_20_1$seq.name
R_co1_20_2_species <- R_co1_20_2$seq.name
R_co1_20_3_species <- R_co1_20_3$seq.name
R_co1_20_4_species <- R_co1_20_4$seq.name
R_co1_20_5_species <- R_co1_20_5$seq.name
R_co1_20_6_species <- R_co1_20_6$seq.name
R_co1_20_7_species <- R_co1_20_7$seq.name
R_co1_20_8_species <- R_co1_20_8$seq.name
R_co1_20_9_species <- R_co1_20_9$seq.name
R_co1_20_10_species <- R_co1_20_10$seq.name
R_co1_40_1_species <- R_co1_40_1$seq.name
R_co1_40_2_species <- R_co1_40_2$seq.name
R_co1_40_3_species <- R_co1_40_3$seq.name
R_co1_40_4_species <- R_co1_40_4$seq.name
R_co1_40_5_species <- R_co1_40_5$seq.name
R_co1_40_6_species <- R_co1_40_6$seq.name
R_co1_40_7_species <- R_co1_40_7$seq.name
R_co1_40_8_species <- R_co1_40_8$seq.name
R_co1_40_9_species <- R_co1_40_9$seq.name
R_co1_40_10_species <- R_co1_40_10$seq.name
R_co1_60_1_species <- R_co1_60_1$seq.name
R_co1_60_2_species <- R_co1_60_2$seq.name
R_co1_60_3_species <- R_co1_60_3$seq.name
R_co1_60_4_species <- R_co1_60_4$seq.name
R_co1_60_5_species <- R_co1_60_5$seq.name
R_co1_60_6_species <- R_co1_60_6$seq.name
R_co1_60_7_species <- R_co1_60_7$seq.name
R_co1_60_8_species <- R_co1_60_8$seq.name
R_co1_60_9_species <- R_co1_60_9$seq.name
R_co1_60_10_species <- R_co1_60_10$seq.name
R_co1_80_1_species <- R_co1_80_1$seq.name
R_co1_80_2_species <- R_co1_80_2$seq.name
R_co1_80_3_species <- R_co1_80_3$seq.name
R_co1_80_4_species <- R_co1_80_4$seq.name
R_co1_80_5_species <- R_co1_80_5$seq.name
R_co1_80_6_species <- R_co1_80_6$seq.name
R_co1_80_7_species <- R_co1_80_7$seq.name
R_co1_80_8_species <- R_co1_80_8$seq.name
R_co1_80_9_species <- R_co1_80_9$seq.name
R_co1_80_10_species <- R_co1_80_10$seq.name

RefTree_R_co1_20_1_List <- foreach(i=1:length(R_co1_20_1_species)) %do% sister(ReferenceTree,R_co1_20_1_species[i],type="terminal",label=T)
R_80_co1_20_1_List <- foreach(i=1:length(R_co1_20_1_species)) %do% sister(R80_1_tree,R_co1_20_1_species[i],type="terminal",label=T)
#bb 80% tree when placed 20% co1
RefTree_R_co1_20_1_List <- foreach(i=1:length(R_co1_20_1_species)) %do% getSisters(ReferenceTree,R_co1_20_1_species[i],mode="label")
R_80_co1_20_1_List <- foreach(i=1:length(R_co1_20_1_species)) %do% getSisters(R80_1_tree,R_co1_20_1_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_1_List [(RefTree_R_co1_20_1_List %in% R_80_co1_20_1_List )] #374
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_1_List [!(RefTree_R_co1_20_1_List %in% R_80_co1_20_1_List)] #530

RefTree_R_co1_20_2_List <- foreach(i=1:length(R_co1_20_2_species)) %do% getSisters(ReferenceTree,R_co1_20_2_species[i],mode="label")
R_80_co1_20_2_List <- foreach(i=1:length(R_co1_20_2_species)) %do% getSisters(R80_2_tree,R_co1_20_2_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_2_List [(RefTree_R_co1_20_2_List %in% R_80_co1_20_2_List )] #365
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_2_List [!(RefTree_R_co1_20_2_List %in% R_80_co1_20_2_List)] #539

RefTree_R_co1_20_3_List <- foreach(i=1:length(R_co1_20_3_species)) %do% getSisters(ReferenceTree,R_co1_20_3_species[i],mode="label")
R_80_co1_20_3_List <- foreach(i=1:length(R_co1_20_3_species)) %do% getSisters(R80_3_tree,R_co1_20_3_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_3_List [(RefTree_R_co1_20_3_List %in% R_80_co1_20_3_List )] #353
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_3_List [!(RefTree_R_co1_20_3_List %in% R_80_co1_20_3_List)] #551

RefTree_R_co1_20_4_List <- foreach(i=1:length(R_co1_20_4_species)) %do% getSisters(ReferenceTree,R_co1_20_4_species[i],mode="label")
R_80_co1_20_4_List <- foreach(i=1:length(R_co1_20_4_species)) %do% getSisters(R80_4_tree,R_co1_20_4_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_4_List [(RefTree_R_co1_20_4_List %in% R_80_co1_20_4_List )] #365

#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_4_List [!(RefTree_R_co1_20_4_List %in% R_80_co1_20_4_List)] #539

RefTree_R_co1_20_5_List <- foreach(i=1:length(R_co1_20_5_species)) %do% getSisters(ReferenceTree,R_co1_20_5_species[i],mode="label")
R_80_co1_20_5_List <- foreach(i=1:length(R_co1_20_5_species)) %do% getSisters(R80_5_tree,R_co1_20_5_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_5_List [(RefTree_R_co1_20_5_List %in% R_80_co1_20_5_List )] #377
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_5_List [!(RefTree_R_co1_20_5_List %in% R_80_co1_20_5_List)] #527

RefTree_R_co1_20_6_List <- foreach(i=1:length(R_co1_20_6_species)) %do% getSisters(ReferenceTree,R_co1_20_6_species[i],mode="label")
R_80_co1_20_6_List <- foreach(i=1:length(R_co1_20_6_species)) %do% getSisters(R80_6_tree,R_co1_20_6_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_6_List [(RefTree_R_co1_20_6_List %in% R_80_co1_20_6_List )] #348
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_6_List [!(RefTree_R_co1_20_6_List %in% R_80_co1_20_6_List)] #556

RefTree_R_co1_20_7_List <- foreach(i=1:length(R_co1_20_7_species)) %do% getSisters(ReferenceTree,R_co1_20_7_species[i],mode="label")
R_80_co1_20_7_List <- foreach(i=1:length(R_co1_20_7_species)) %do% getSisters(R80_7_tree,R_co1_20_7_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_7_List [(RefTree_R_co1_20_7_List %in% R_80_co1_20_7_List )] #360
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_7_List [!(RefTree_R_co1_20_7_List %in% R_80_co1_20_7_List)] #544

RefTree_R_co1_20_8_List <- foreach(i=1:length(R_co1_20_8_species)) %do% getSisters(ReferenceTree,R_co1_20_8_species[i],mode="label")
R_80_co1_20_8_List <- foreach(i=1:length(R_co1_20_8_species)) %do% getSisters(R80_8_tree,R_co1_20_8_species[i],mode="label")


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_8_List [(RefTree_R_co1_20_8_List %in% R_80_co1_20_8_List )] #365
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_8_List [!(RefTree_R_co1_20_8_List %in% R_80_co1_20_8_List)] #539

RefTree_R_co1_20_9_List <- foreach(i=1:length(R_co1_20_9_species)) %do% getSisters(ReferenceTree,R_co1_20_9_species[i],mode="label")
R_80_co1_20_9_List <- foreach(i=1:length(R_co1_20_9_species)) %do% getSisters(R80_9_tree,R_co1_20_9_species[i],mode="label")


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_9_List [(RefTree_R_co1_20_9_List %in% R_80_co1_20_9_List )] #362
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_9_List [!(RefTree_R_co1_20_9_List %in% R_80_co1_20_9_List)] #542

RefTree_R_co1_20_10_List <- foreach(i=1:length(R_co1_20_10_species)) %do% getSisters(ReferenceTree,R_co1_20_10_species[i],mode="label")
R_80_co1_20_10_List <- foreach(i=1:length(R_co1_20_10_species)) %do% getSisters(R80_10_tree,R_co1_20_10_species[i],mode="label")


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_10_List [(RefTree_R_co1_20_10_List %in% R_80_co1_20_10_List )] #356
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_10_List [!(RefTree_R_co1_20_10_List %in% R_80_co1_20_10_List)] #548

#bb 60% tree when placed 40% co1
RefTree_R_co1_40_1_List <- foreach(i=1:length(R_co1_40_1_species)) %do% getSisters(ReferenceTree,R_co1_40_1_species[i],mode="label")
R_60_co1_40_1_List <- foreach(i=1:length(R_co1_40_1_species)) %do% getSisters(R60_1_tree,R_co1_40_1_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_1_List [(RefTree_R_co1_40_1_List %in% R_60_co1_40_1_List )] #664
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_1_List [!(RefTree_R_co1_40_1_List %in% R_60_co1_40_1_List )] #1144

RefTree_R_co1_40_2_List <- foreach(i=1:length(R_co1_40_2_species)) %do% getSisters(ReferenceTree,R_co1_40_2_species[i],mode="label")
R_60_co1_40_2_List <- foreach(i=1:length(R_co1_40_2_species)) %do% getSisters(R60_2_tree,R_co1_40_2_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_2_List [(RefTree_R_co1_40_2_List %in% R_60_co1_40_2_List )] #672
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_2_List [!(RefTree_R_co1_40_2_List %in% R_60_co1_40_2_List )] #1136

RefTree_R_co1_40_3_List <- foreach(i=1:length(R_co1_40_3_species)) %do% getSisters(ReferenceTree,R_co1_40_3_species[i],mode="label")
R_60_co1_40_3_List <- foreach(i=1:length(R_co1_40_3_species)) %do% getSisters(R60_3_tree,R_co1_40_3_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_3_List [(RefTree_R_co1_40_3_List %in% R_60_co1_40_3_List )] #684
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_3_List [!(RefTree_R_co1_40_3_List %in% R_60_co1_40_3_List )] #1124

RefTree_R_co1_40_4_List <- foreach(i=1:length(R_co1_40_4_species)) %do% getSisters(ReferenceTree,R_co1_40_4_species[i],mode="label")
R_60_co1_40_4_List <- foreach(i=1:length(R_co1_40_4_species)) %do% getSisters(R60_4_tree,R_co1_40_4_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_4_List [(RefTree_R_co1_40_4_List %in% R_60_co1_40_4_List )] #671
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_4_List [!(RefTree_R_co1_40_4_List %in% R_60_co1_40_4_List )] #1137

RefTree_R_co1_40_5_List <- foreach(i=1:length(R_co1_40_5_species)) %do% getSisters(ReferenceTree,R_co1_40_5_species[i],mode="label")
R_60_co1_40_5_List <- foreach(i=1:length(R_co1_40_5_species)) %do% getSisters(R60_5_tree,R_co1_40_5_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_5_List [(RefTree_R_co1_40_5_List %in% R_60_co1_40_5_List )] #670
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_5_List [!(RefTree_R_co1_40_5_List %in% R_60_co1_40_5_List )] #1138

RefTree_R_co1_40_6_List <- foreach(i=1:length(R_co1_40_6_species)) %do% getSisters(ReferenceTree,R_co1_40_6_species[i],mode="label")
R_60_co1_40_6_List <- foreach(i=1:length(R_co1_40_6_species)) %do% getSisters(R60_6_tree,R_co1_40_6_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_6_List [(RefTree_R_co1_40_6_List %in% R_60_co1_40_6_List )] #654
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_6_List [!(RefTree_R_co1_40_6_List %in% R_60_co1_40_6_List )] #1154

RefTree_R_co1_40_7_List <- foreach(i=1:length(R_co1_40_7_species)) %do% getSisters(ReferenceTree,R_co1_40_7_species[i],mode="label")
R_60_co1_40_7_List <- foreach(i=1:length(R_co1_40_7_species)) %do% getSisters(R60_7_tree,R_co1_40_7_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_7_List [(RefTree_R_co1_40_7_List %in% R_60_co1_40_7_List )] #682
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_7_List [!(RefTree_R_co1_40_7_List %in% R_60_co1_40_7_List )] #1126

RefTree_R_co1_40_8_List <- foreach(i=1:length(R_co1_40_8_species)) %do% getSisters(ReferenceTree,R_co1_40_8_species[i],mode="label")
R_60_co1_40_8_List <- foreach(i=1:length(R_co1_40_8_species)) %do% getSisters(R60_8_tree,R_co1_40_8_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_8_List [(RefTree_R_co1_40_8_List %in% R_60_co1_40_8_List )] #657
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_8_List [!(RefTree_R_co1_40_8_List %in% R_60_co1_40_8_List )] #1151

RefTree_R_co1_40_9_List <- foreach(i=1:length(R_co1_40_9_species)) %do% getSisters(ReferenceTree,R_co1_40_9_species[i],mode="label")
R_60_co1_40_9_List <- foreach(i=1:length(R_co1_40_9_species)) %do% getSisters(R60_9_tree,R_co1_40_9_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_9_List [(RefTree_R_co1_40_9_List %in% R_60_co1_40_9_List )] #672
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_9_List [!(RefTree_R_co1_40_9_List %in% R_60_co1_40_9_List )] #1136

RefTree_R_co1_40_10_List <- foreach(i=1:length(R_co1_40_10_species)) %do% getSisters(ReferenceTree,R_co1_40_10_species[i],mode="label")
R_60_co1_40_10_List <- foreach(i=1:length(R_co1_40_10_species)) %do% getSisters(R60_10_tree,R_co1_40_10_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_10_List [(RefTree_R_co1_40_10_List %in% R_60_co1_40_10_List )] #658
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_10_List [!(RefTree_R_co1_40_10_List %in% R_60_co1_40_10_List )] #1150

#RefTree_biasco1List[sapply(names(RefTree_biasco1List), function(x) !identical(RefTree_biasco1List[[x]], biasco1List[[x]]))] 

#bb 40% tree when placed 60% co1
RefTree_R_co1_60_1_List <- foreach(i=1:length(R_co1_60_1_species)) %do% getSisters(ReferenceTree,R_co1_60_1_species[i],mode="label")
R_40_co1_60_1_List <- foreach(i=1:length(R_co1_40_1_species)) %do% getSisters(R40_1_tree,R_co1_60_1_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_1_List [(RefTree_R_co1_60_1_List %in% R_40_co1_60_1_List )] #628
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_1_List [!(RefTree_R_co1_60_1_List %in% R_40_co1_60_1_List )] #2084

RefTree_R_co1_60_2_List <- foreach(i=1:length(R_co1_60_2_species)) %do% getSisters(ReferenceTree,R_co1_60_2_species[i],mode="label")
R_40_co1_60_2_List <- foreach(i=1:length(R_co1_40_2_species)) %do% getSisters(R40_2_tree,R_co1_60_2_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_2_List [(RefTree_R_co1_60_2_List %in% R_40_co1_60_2_List )] #638
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_2_List [!(RefTree_R_co1_60_2_List %in% R_40_co1_60_2_List )] #2074


RefTree_R_co1_60_3_List <- foreach(i=1:length(R_co1_60_3_species)) %do% getSisters(ReferenceTree,R_co1_60_3_species[i],mode="label")
R_40_co1_60_3_List <- foreach(i=1:length(R_co1_40_3_species)) %do% getSisters(R40_3_tree,R_co1_60_3_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_3_List [(RefTree_R_co1_60_3_List %in% R_40_co1_60_3_List )] #674
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_3_List [!(RefTree_R_co1_60_3_List %in% R_40_co1_60_3_List )] #2038

RefTree_R_co1_60_4_List <- foreach(i=1:length(R_co1_60_4_species)) %do% getSisters(ReferenceTree,R_co1_60_4_species[i],mode="label")
R_40_co1_60_4_List <- foreach(i=1:length(R_co1_40_4_species)) %do% getSisters(R40_4_tree,R_co1_60_4_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_4_List [(RefTree_R_co1_60_4_List %in% R_40_co1_60_4_List )] #654
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_4_List [!(RefTree_R_co1_60_4_List %in% R_40_co1_60_4_List )] #2058


RefTree_R_co1_60_5_List <- foreach(i=1:length(R_co1_60_5_species)) %do% getSisters(ReferenceTree,R_co1_60_5_species[i],mode="label")
R_40_co1_60_5_List <- foreach(i=1:length(R_co1_40_5_species)) %do% getSisters(R40_5_tree,R_co1_60_5_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_5_List [(RefTree_R_co1_60_5_List %in% R_40_co1_60_5_List )] #646
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_5_List [!(RefTree_R_co1_60_5_List %in% R_40_co1_60_5_List )] #2066

RefTree_R_co1_60_6_List <- foreach(i=1:length(R_co1_60_6_species)) %do% getSisters(ReferenceTree,R_co1_60_6_species[i],mode="label")
R_40_co1_60_6_List <- foreach(i=1:length(R_co1_40_6_species)) %do% getSisters(R40_6_tree,R_co1_60_6_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_6_List [(RefTree_R_co1_60_6_List %in% R_40_co1_60_6_List )] #649

#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_6_List [!(RefTree_R_co1_60_6_List %in% R_40_co1_60_6_List )] #2063

RefTree_R_co1_60_7_List <- foreach(i=1:length(R_co1_60_7_species)) %do% getSisters(ReferenceTree,R_co1_60_7_species[i],mode="label")
R_40_co1_60_7_List <- foreach(i=1:length(R_co1_40_7_species)) %do% getSisters(R40_7_tree,R_co1_60_7_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_7_List [(RefTree_R_co1_60_7_List %in% R_40_co1_60_7_List )] #638
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_7_List [!(RefTree_R_co1_60_7_List %in% R_40_co1_60_7_List )] #2074

RefTree_R_co1_60_8_List <- foreach(i=1:length(R_co1_60_8_species)) %do% getSisters(ReferenceTree,R_co1_60_8_species[i],mode="label")
R_40_co1_60_8_List <- foreach(i=1:length(R_co1_40_8_species)) %do% getSisters(R40_8_tree,R_co1_60_8_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_8_List [(RefTree_R_co1_60_8_List %in% R_40_co1_60_8_List )] #670
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_8_List [!(RefTree_R_co1_60_8_List %in% R_40_co1_60_8_List )] #2042

RefTree_R_co1_60_9_List <- foreach(i=1:length(R_co1_60_9_species)) %do% getSisters(ReferenceTree,R_co1_60_9_species[i],mode="label")
R_40_co1_60_9_List <- foreach(i=1:length(R_co1_40_9_species)) %do% getSisters(R40_9_tree,R_co1_60_9_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_9_List [(RefTree_R_co1_60_9_List %in% R_40_co1_60_9_List )] #667
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_9_List [!(RefTree_R_co1_60_9_List %in% R_40_co1_60_9_List )] #2045

RefTree_R_co1_60_10_List <- foreach(i=1:length(R_co1_60_10_species)) %do% getSisters(ReferenceTree,R_co1_60_10_species[i],mode="label")
R_40_co1_60_10_List <- foreach(i=1:length(R_co1_40_10_species)) %do% getSisters(R40_10_tree,R_co1_60_10_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_10_List [(RefTree_R_co1_60_10_List %in% R_40_co1_60_10_List )] #619
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_10_List [!(RefTree_R_co1_60_10_List %in% R_40_co1_60_10_List )] #2093


#bb 20% tree when placed 80% co1
RefTree_R_co1_80_1_List <- foreach(i=1:length(R_co1_80_1_species)) %do% getSisters(ReferenceTree,R_co1_80_1_species[i],mode="label")
R_20_co1_80_1_List <- foreach(i=1:length(R_co1_80_1_species)) %do% getSisters(R20_1_tree,R_co1_80_1_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_1_List [(RefTree_R_co1_80_1_List %in% R_20_co1_80_1_List )] #1223
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_1_List [!(RefTree_R_co1_80_1_List %in% R_20_co1_80_1_List )] #2393

RefTree_R_co1_80_2_List <- foreach(i=1:length(R_co1_80_2_species)) %do% getSisters(ReferenceTree,R_co1_80_2_species[i],mode="label")
R_20_co1_80_2_List <- foreach(i=1:length(R_co1_80_2_species)) %do% getSisters(R20_2_tree,R_co1_80_2_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_2_List [(RefTree_R_co1_80_2_List %in% R_20_co1_80_2_List )] #1288
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_2_List [!(RefTree_R_co1_80_2_List %in% R_20_co1_80_2_List )] #2328

RefTree_R_co1_80_3_List <- foreach(i=1:length(R_co1_80_3_species)) %do% getSisters(ReferenceTree,R_co1_80_3_species[i],mode="label")
R_20_co1_80_3_List <- foreach(i=1:length(R_co1_80_3_species)) %do% getSisters(R20_3_tree,R_co1_80_3_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_3_List [(RefTree_R_co1_80_3_List %in% R_20_co1_80_3_List )] #1253
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_3_List [!(RefTree_R_co1_80_3_List %in% R_20_co1_80_3_List )] #2363

RefTree_R_co1_80_4_List <- foreach(i=1:length(R_co1_80_4_species)) %do% getSisters(ReferenceTree,R_co1_80_4_species[i],mode="label")
R_20_co1_80_4_List <- foreach(i=1:length(R_co1_80_4_species)) %do% getSisters(R20_4_tree,R_co1_80_4_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_4_List [(RefTree_R_co1_80_4_List %in% R_20_co1_80_4_List )] #1276
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_4_List [!(RefTree_R_co1_80_4_List %in% R_20_co1_80_4_List )] #2340

RefTree_R_co1_80_5_List <- foreach(i=1:length(R_co1_80_5_species)) %do% getSisters(ReferenceTree,R_co1_80_5_species[i],mode="label")
R_20_co1_80_5_List <- foreach(i=1:length(R_co1_80_5_species)) %do% getSisters(R20_5_tree,R_co1_80_5_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_5_List [(RefTree_R_co1_80_5_List %in% R_20_co1_80_5_List )] #1281
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_5_List [!(RefTree_R_co1_80_5_List %in% R_20_co1_80_5_List )] #2335

RefTree_R_co1_80_6_List <- foreach(i=1:length(R_co1_80_6_species)) %do% getSisters(ReferenceTree,R_co1_80_6_species[i],mode="label")
R_20_co1_80_6_List <- foreach(i=1:length(R_co1_80_6_species)) %do% getSisters(R20_6_tree,R_co1_80_6_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_6_List [(RefTree_R_co1_80_6_List %in% R_20_co1_80_6_List )] #1289
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_6_List [!(RefTree_R_co1_80_6_List %in% R_20_co1_80_6_List )] #2327

RefTree_R_co1_80_7_List <- foreach(i=1:length(R_co1_80_7_species)) %do% getSisters(ReferenceTree,R_co1_80_7_species[i],mode="label")
R_20_co1_80_7_List <- foreach(i=1:length(R_co1_80_7_species)) %do% getSisters(R20_7_tree,R_co1_80_7_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_7_List [(RefTree_R_co1_80_7_List %in% R_20_co1_80_7_List )] #1279
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_7_List [!(RefTree_R_co1_80_7_List %in% R_20_co1_80_7_List )] #2337

RefTree_R_co1_80_8_List <- foreach(i=1:length(R_co1_80_8_species)) %do% getSisters(ReferenceTree,R_co1_80_8_species[i],mode="label")
R_20_co1_80_8_List <- foreach(i=1:length(R_co1_80_8_species)) %do% getSisters(R20_8_tree,R_co1_80_8_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_8_List [(RefTree_R_co1_80_8_List %in% R_20_co1_80_8_List )] #1250
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_8_List [!(RefTree_R_co1_80_8_List %in% R_20_co1_80_8_List )] #2366

RefTree_R_co1_80_9_List <- foreach(i=1:length(R_co1_80_9_species)) %do% getSisters(ReferenceTree,R_co1_80_9_species[i],mode="label")
R_20_co1_80_9_List <- foreach(i=1:length(R_co1_80_9_species)) %do% getSisters(R20_9_tree,R_co1_80_9_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_9_List [(RefTree_R_co1_80_9_List %in% R_20_co1_80_9_List )] #1283
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_9_List [!(RefTree_R_co1_80_9_List %in% R_20_co1_80_9_List )] #2333

RefTree_R_co1_80_10_List <- foreach(i=1:length(R_co1_80_10_species)) %do% getSisters(ReferenceTree,R_co1_80_10_species[i],mode="label")
R_20_co1_80_10_List <- foreach(i=1:length(R_co1_80_10_species)) %do% getSisters(R20_10_tree,R_co1_80_10_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_10_List [(RefTree_R_co1_80_10_List %in% R_20_co1_80_10_List )] #1225
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_10_List [!(RefTree_R_co1_80_10_List %in% R_20_co1_80_10_List )] #2391

