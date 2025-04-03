# Version info: R 4.2.2, Biobase 2.58.0, GEOquery 2.66.0, limma 3.54.0
################################################################
#   Data plots for selected GEO samples
# (analyze with GEO2R 링크: https://www.ncbi.nlm.nih.gov/geo/geo2r/?acc=GSE255223 ) 어찌된 영문인지 두 nonHS TLE 유형인 GSM8066751~2가 누락됨. 그래서 데이터도 GSM8066753~7만 분석됨. 근데 원시 데이터는 그대로 남아있음.

# load counts table from GEO
urld <- "https://www.ncbi.nlm.nih.gov/geo/download/?format=file&type=rnaseq_counts"
path <- paste(urld, "acc=GSE255223", "file=GSE255223_raw_counts_GRCh38.p13_NCBI.tsv.gz", sep="&");
tbl <- as.matrix(data.table::fread(path, header=T, colClasses="integer"), rownames=1)

# pre-filter low count genes
# keep genes with at least 2 counts > 10
keep <- rowSums( tbl >= 10 ) >= 2
tbl <- tbl[keep, ]

# log transform raw counts
# instead of raw counts can display vst(as.matrix(tbl)) i.e. variance stabilized counts
dat <- log10(tbl + 1)

# box-and-whisker plot
par(mar=c(7,4,2,1))
boxplot(dat, boxwex=0.7, notch=T, main="GSE255223", ylab="lg(cnt + 1)", outline=F, las=2)

# UMAP plot (dimensionality reduction)
library(umap)
dat <- dat[!duplicated(dat), ] # first remove duplicates
ump <- umap(t(dat), n_neighbors = 2, random_state = 123)
plot(ump$layout, main="GSE255223 UMAP plot, nbrs =2", xlab="", ylab="", pch=20, cex=1.5)
library(car)
pointLabel(ump$layout, labels = rownames(ump$layout), method="SANN", cex=0.6)
