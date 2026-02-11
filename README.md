SARS-CoV-2 RNA-seq Differential Expression Analysis
Overview

This project performs an end-to-end RNA-seq differential gene expression analysis to explore host transcriptional responses to SARS-CoV-2 infection using publicly available sequencing data.

Dataset used:

GSE147507 (NCBI GEO)

The workflow includes preprocessing of raw sequencing reads using command-line bioinformatics tools, followed by downstream statistical analysis and visualization in R.

Workflow Summary

The RNA-seq pipeline was executed using Windows command-line scripts for preprocessing and R for downstream statistical analysis.

1. Quality Control

Raw FASTQ files were assessed using FastQC

Evaluated:

Per-base sequence quality

Adapter contamination

Sequence length distribution

GC content

2. Read Trimming

Trimmomatic (Single-End mode) was used for:

Adapter removal

Quality filtering

Removal of low-quality bases

3. Alignment

Cleaned reads were aligned to the human reference genome (GRCh38) using:

HISAT2

Output: Sorted BAM files

4. Gene-level Quantification

featureCounts was used to:

Assign aligned reads to genomic features

Generate gene-level count matrix

5. Differential Expression Analysis

Conducted in R using:

DESeq2

Statistical testing:

Wald test

Adjusted p-value (Benjamini–Hochberg correction)

Filtering criteria:

padj < 0.05

|log2FoldChange| > 1

6. Visualization

Volcano Plot

Generated using EnhancedVolcano

Heatmap

Top 20 differentially expressed genes

Generated using pheatmap

Variance-stabilizing transformation (VST) applied

Key Outputs

All analysis results are available in the results/ directory:

Full DESeq2 results table

Filtered significant gene list
(padj < 0.05 and |log2FC| > 1)

Volcano plot image

Heatmap of top 20 differentially expressed genes

Tools & Software
Command-Line Tools

FastQC

Trimmomatic

HISAT2

featureCounts

R Packages

DESeq2

EnhancedVolcano

pheatmap

org.Hs.eg.db

AnnotationDbi

Software versions are documented in the environment/ directory.
