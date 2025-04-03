# --split-files : Download sequencing data for GSM8066751, split paired-end reads into separate files.
# --skip-technical -F : skip technical reads, and output in FASTQ format.

# TLE-HS
fastq-dump GSM8066751 --split-files --skip-technical -F
fastq-dump GSM8066752 --split-files --skip-technical -F
fastq-dump GSM8066753 --split-files --skip-technical -F

# TLE-nonHS
fastq-dump GSM8066754 --split-files --skip-technical -F #여기까지 서버에 받아둠.

#남은 두 파일은 하드디스크받은 후부터.
fastq-dump GSM8066755 --split-files --skip-technical -F
fastq-dump GSM8066756 --split-files --skip-technical -F