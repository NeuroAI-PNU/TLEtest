# https://bioinformatics-core-shared-training.github.io/RNAseq_July_2020_remote/html/02_Preprocessing_Data.html

# GSE255223 raw counts csv 파일 발견, 필요한 라이브러리 로딩
library(DESeq2)
library(tidyverse)


#샘플 카운트데이터 읽기
seqdataTLE <- read_tsv("TLEtest/tsv_GSE255223_raw_counts_GRCh38.p13_NCBI", comment = "#")
seqdataTLE
