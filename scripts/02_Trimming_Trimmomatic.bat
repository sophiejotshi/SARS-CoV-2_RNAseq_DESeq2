java -jar trimmomatic-0.40.jar SE -threads 4 ^
raw_data\SRR11412215.fastq ^
trimmed\SRR11412215_trimmed.fastq ^
ILLUMINACLIP:adapters\TruSeq3-SE.fa:2:30:10 ^
LEADING:3 TRAILING:3 SLIDINGWINDOW:4:20 MINLEN:30
