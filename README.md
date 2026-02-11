# RNA-seq Differential Expression Analysis (SARS-CoV-2)

## Overview
This repository contains an RNA-seq data analysis workflow developed to compare host gene expression between SARS-CoV-2 infected and control samples using publicly available datasets.

## Dataset
- GEO accession: GSE147507
- Raw RNA-seq FASTQ files were downloaded from NCBI GEO.
- This project is intended for educational and research purposes only.

## Project Structure
raw_data/ # raw FASTQ files
trimmed/ # quality-trimmed reads
qc/ # quality control reports
alignment/ # aligned reads
counts/ # gene-level read count tables
results/ # differential expression results and plots

## Analysis Workflow
1. Quality control of raw reads
2. Read trimming and preprocessing
3. Read alignment to reference genome
4. Gene-level read counting
5. Differential expression analysis
6. Visualization using volcano plots and heatmaps

## Tools Used
- FastQC
- HISAT2
- FeatureCounts
- DESeq2 (R)
- Python (data handling & visualization)

## Results
The analysis generated gene-level differential expression tables along with visualization outputs (volcano plot and heatmap) to interpret expression changes between infected and control samples.

## Disclaimer
This project does not represent clinical or diagnostic conclusions.
