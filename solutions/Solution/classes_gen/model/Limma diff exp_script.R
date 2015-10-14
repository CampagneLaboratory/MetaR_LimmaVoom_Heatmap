
#Script generated from Limma diff exp

#Create installation dir for packages
libDir <- "/Users/fac2003/.metaRlibs"
dir.create(file.path(libDir), showWarnings = FALSE, recursive = TRUE)
.libPaths(c(libDir))

#create the output dir
dir.create(file.path("/Users/fac2003/R_RESULTS/model"), showWarnings = FALSE, recursive = TRUE)
if (!( require("limma")|require("edgeR") )) {
 if (!require("BiocInstaller")) { 
     source("http://bioconductor.org/biocLite.R", local=TRUE)  
 }
  
   biocLite(ask=FALSE, c("limma","edgeR"))
  library("limma")
library("edgeR")

} 










if (!require("plyr")) {install.packages("plyr",repos='http://cran.us.r-project.org'); library("plyr")};
if (!require("Cairo")) {install.packages("Cairo",repos='http://cran.us.r-project.org'); library("Cairo")};
if (!require("limma")) {install.packages("limma",repos='http://cran.us.r-project.org'); library("limma")};
if (!require("data.table")) {install.packages("data.table",repos='http://cran.us.r-project.org'); library("data.table")};
if (!require("edgeR")) {install.packages("edgeR",repos='http://cran.us.r-project.org'); library("edgeR")};
if (!require("pheatmap")) {install.packages("pheatmap",repos='http://cran.us.r-project.org'); library("pheatmap")};


#empty line
GSE59364_DC_all.csv <- fread("/Users/fac2003/MPSProjects/git/metar/data/GSE59364_DC_all.csv", colClasses=c("character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
cat("STATEMENT_EXECUTED/8631009386228826788/\n");


tryCatch({

 # Replace row names with gene identifiers
 # TODO: make a copy of the input table, rather than using it by reference.
  countsTable <- copy(GSE59364_DC_all.csv)
  rownames_for_CountsTable <- GSE59364_DC_all.csv$"gene" 
# remove all columns not marked with the "counts" group.
  countsTable <- countsTable[,"gene":=NULL]
  countsTable <- countsTable[,"mRNA len":=NULL]
  countsTable <- countsTable[,"genomic span":=NULL]
  countsTable <- countsTable[,"DC_normal":=NULL]
  countsTable <- countsTable[,"DC_treated":=NULL]

sampleNames <- c("DC0904", "DC0907", "DCLPS0910", "DCLPS0913", "A_DC", "A_DC_LPS", "B_DC", "B_DC_LPS", "C_DC", "C_DC_LPS", "C2DC", "C2DCLPS", "C3DC", "C3DCLPS")

  setcolorder(countsTable, sampleNames)   
  countsTable <- as.matrix(countsTable)

  sampleNames <- colnames(countsTable)
  LPS_Treatment <- c( "LPS_no", "LPS_no", "LPS_yes", "LPS_yes", "LPS_no", "LPS_yes", "LPS_no", "LPS_yes", "LPS_no", "LPS_yes", "LPS_no", "LPS_yes", "LPS_no", "LPS_yes" )

  data <- DGEList(counts=countsTable, genes=rownames_for_CountsTable)
  data <- calcNormFactors(data)
 design <- model.matrix(~ 0 + LPS_Treatment) 
  voom <- voom(data,design)



tryCatch({
fit <- lmFit(voom, design) 
}
)
fit2 <-contrasts.fit(fit, contrasts=makeContrasts( LPS_TreatmentLPS_no-LPS_TreatmentLPS_yes, levels=design))
fit3 <- eBayes(fit2) 


# TODO: change the below line to use constrasts from the limmaVoom statement:
stats <- data.table(topTable(fit3,coef=1, number=nrow(countsTable)))
cat("STATEMENT_EXECUTED/8631009386228826801/\n")
write.table(stats,"/Users/fac2003/R_RESULTS/model/table_stats_0.tsv", row.names=FALSE, sep="\t") 
}
, warning = function(w) {
cat(paste("Node STATEMENT_EXECUTED/8631009386228826801/ generated the following warning: ",w,"\n"));
}
, error = function(e) {
cat(paste("Node STATEMENT_EXECUTED/8631009386228826801/ generated the following error: ",e,"\n"));
stop();
}
, finally = {
cat("STATEMENT_EXECUTED/8631009386228826801/\n");
}
)

tryCatch({

t_1__FDR <- stats[stats$"adj.P.Val" <= 0.001]
if (nrow(t_1__FDR)==0) {
  cat("Warning: Subset removed all rows of table stats. Following statements may fail if they expect results after filtering.\n")
}
write.table(t_1__FDR,"/Users/fac2003/R_RESULTS/model/table_t_1__FDR_0.tsv", row.names=FALSE, sep="\t") 

}
, warning = function(w) {
cat(paste("Node STATEMENT_EXECUTED/8631009386228869341/ generated the following warning: ",w,"\n"));
}
, error = function(e) {
cat(paste("Node STATEMENT_EXECUTED/8631009386228869341/ generated the following error: ",e,"\n"));
stop();
}
, finally = {
cat("STATEMENT_EXECUTED/8631009386228869341/\n");
}
)
#empty line

tryCatch({
setkey(GSE59364_DC_all.csv, "gene")
setkey(t_1__FDR, "genes")
t_1__FDR <- rename(t_1__FDR, c("genes"="gene"))
tableSuffixes=c("", "")
joiningColumns=c("gene")
nextTableToMergeInto=GSE59364_DC_all.csv
nextTableToMergeFrom=t_1__FDR
merged1__FDR <- merge(nextTableToMergeInto, nextTableToMergeFrom, by=joiningColumns, suffixes=tableSuffixes)
nextTableToMergeInto=merged1__FDR
joined <- merged1__FDR
rm(merged1__FDR)

# Add the columns back in the destination:
joined <- joined[,"genes":=joined$"gene"]

# Add the rename back source columns
t_1__FDR <- rename(t_1__FDR, c("gene"="genes"))
write.table(joined,"/Users/fac2003/R_RESULTS/model/table_joined_0.tsv", row.names=FALSE, sep="\t") 
}
, warning = function(w) {
cat(paste("Node STATEMENT_EXECUTED/8631009386228895522/ generated the following warning: ",w,"\n"));
}
, error = function(e) {
cat(paste("Node STATEMENT_EXECUTED/8631009386228895522/ generated the following error: ",e,"\n"));
stop();
}
, finally = {
cat("STATEMENT_EXECUTED/8631009386228895522/\n");
}
)
#empty line
plot_CKBGDWPEUW=function(t)
{

tryCatch({
LegendFrame=data.frame(c("LPS=no","LPS=no","LPS=no","LPS=yes","LPS=yes","LPS=yes","LPS=yes","LPS=no","LPS=yes","LPS=no","LPS=yes","LPS=yes","LPS=no","LPS=no"), c("B_DC","A_DC","C_DC","C3DCLPS","C_DC_LPS","A_DC_LPS","B_DC_LPS","C3DC","C2DCLPS","C2DC","DCLPS0910","DCLPS0913","DC0904","DC0907"))

colnames(LegendFrame)=c("Group","SampleId")
# reorder by group name:
LegendFrameSorted=LegendFrame[order(LegendFrame$Group,LegendFrame$SampleId),]
rownames(LegendFrameSorted)=NULL
sampleNames=c("B_DC","A_DC","C_DC","C3DC","C2DC","DC0904","DC0907","C3DCLPS","C_DC_LPS","A_DC_LPS","B_DC_LPS","C2DCLPS","DCLPS0910","DCLPS0913")
MX<-data.matrix(subset(joined,  select=sampleNames))
MX2<-MX
#MX2=MX2[,order(LegendFrame$Group,LegendFrame$SampleId)]
cluster=TRUE
if(dim(MX)[1]==1){MX2=t(MX2); cluster=FALSE}
annotations=data.frame(
  LPS_Treatment=factor(c("LPS_no", "LPS_no", "LPS_no", "LPS_no", "LPS_no", "LPS_no", "LPS_no", "LPS_yes", "LPS_yes", "LPS_yes", "LPS_yes", "LPS_yes", "LPS_yes", "LPS_yes"))  ,
         row.names=c(sampleNames)
)


#rownames(annotation)=c("B_DC", "A_DC", "C_DC", "C3DCLPS", "C_DC_LPS", "A_DC_LPS", "B_DC_LPS", "C3DC", "C2DCLPS", "C2DC", "DCLPS0910", "DCLPS0913", "DC0904", "DC0907")
rownames(MX2) = apply(subset(joined,select=c("genes")),1, function(x) x)
as.data.frame(LegendFrameSorted[,-2]) -> legend
row.names(legend)=LegendFrameSorted$SampleId
# re-label Annotation to "Group"
colnames(legend) <- "Group"
#Replace infinite values with NAs:
is.na(MX2) <- sapply(MX2, is.infinite)

# Exclude NAs from table, they cause this cryptic error message: Error in do_one(nmeth) : NA/NaN/Inf in foreign function call 
MX2<-MX2[complete.cases(MX2),]

# Plot the heatmap:
pheatmap(MX2,
         cluster_rows=TRUE,cluster_cols = TRUE,
         border_color="NA", 
         #filename = "/Users/fac2003/R_RESULTS/model/plot_CKBGDWPEUW_1.png",
         color = colorRampPalette(c("#f1a340","#f7f7f7","#998ec3"))(100), 
         clustering_distance_rows="manhattan",
         clustering_distance_cols="manhattan",
         clustering_method="complete",members = NULL,
         kmeans_k = NA,breaks = NA, fontsize=6,
         show_colnames=T,
         annotation=annotations,
         cellwidth = 8, cellheight = 6, fontsize_row=6, scale = "row",
         Legend=TRUE
)
}
, warning = function(w) {
cat(paste("Node STATEMENT_EXECUTED/8631009386228895978/ generated the following warning: ",w,"\n"));
}
, error = function(e) {
cat(paste("Node STATEMENT_EXECUTED/8631009386228895978/ generated the following error: ",e,"\n"));
stop();
}
, finally = {
cat("STATEMENT_EXECUTED/8631009386228895978/\n");
}
)
}
png(file="/Users/fac2003/R_RESULTS/model/plot_CKBGDWPEUW_1.png", width=600, height=800)
plot_CKBGDWPEUW(joined)
ignore <- dev.off()
cat("STATEMENT_EXECUTED/8631009386228895978/\n");


tryCatch({
pdf("/Users/fac2003/R_RESULTS/model/heatmap-clustered.pdf", width=6, height=8)
plot_CKBGDWPEUW(joined)
ignore <- dev.off()
}
, warning = function(w) {
cat(paste("Node STATEMENT_EXECUTED/8631009386229060069/ generated the following warning: ",w,"\n"));
}
, error = function(e) {
cat(paste("Node STATEMENT_EXECUTED/8631009386229060069/ generated the following error: ",e,"\n"));
stop();
}
, finally = {
cat("STATEMENT_EXECUTED/8631009386229060069/\n");
}
)
#empty line

