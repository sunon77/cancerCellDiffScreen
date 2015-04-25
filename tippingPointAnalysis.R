# Observe diverge and converge pattern 
# For each gene, Diverge-converge trajectories 
# totally 13 drugs 13*3  = 39 Samples
# From IBI drug screening team, University of Calgary
# Author: Joseph X. Zhou
# Date:   01/16/2014
# Modify History:
# 1) Date: 01/16/2015, Create a simple 3 point criteria for diverge -converge


## Run in Linux Server
cd /users/jzhou/Programming/R/CancerDiff/Data


ptm <- proc.time();
## Assign to 
##inFileName = "BCDiff_13956x60_ColNameOrder_bk1DayP_noNorm.txt"
##setwd("C:/Users/joseph/Dropbox/Research/Projects/BreastCancerDiff/Data")
setwd("/users/jzhou/Programming/R/CancerDiff/Data");
##inFileName = "BCDiff_13956x60_ColNameOrder_bk1DayP_QuntileNormalized.txt"
inFileName = "GSEA_10986x71_log2_MeanCtltransform2NoTreat_QN_ColNames_NoRepeat_NoLog.txt"
fileStr = strsplit(inFileName, "\\.")
geneIn= read.csv(inFileName, sep="\t",header=T)
# hist(unlist(geneIn[,3:62]),breaks=100)
nCol = dim(geneIn)[2];
##geneIn = geneIn[,-c(55:59)]; # remove ATRA
geneIn[,3:nCol] = log(geneIn[,3:nCol],2);
