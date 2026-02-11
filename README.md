# SARS-CoV-2 RNA-seq Differential Expression Analysis

## Overview

This project performs an end-to-end RNA-seq differential gene expression analysis to explore host transcriptional responses to SARS-CoV-2 infection using publicly available sequencing data.

**Dataset used:**  
GSE147507 (NCBI GEO)

The workflow includes preprocessing of raw sequencing reads using command-line bioinformatics tools, followed by downstream statistical analysis and visualization in R.

---

## Workflow Summary

The RNA-seq pipeline was executed using Windows command-line scripts for preprocessing and R for downstream statistical analysis.

### 1. Quality Control

Raw FASTQ files were assessed using **FastQC** to evaluate:

- Per-base sequence quality  
- Adapter contamination  
- Sequence length distribution  
- GC content  

### 2. Read Trimming

**Trimmomatic (Single-End mode)** was used for:

- Adapter removal  
- Quality filtering  
- Removal of low-quality bases  

### 3. Alignment

Cleaned reads were aligned to the human reference genome (**GRCh38**) using:

- HISAT2  

**Output:** Sorted BAM files

### 4. Gene-level Quantification

**featureCounts** was used to:

- Assign aligned reads to genomic features  
- Generate gene-level count matrix  

### 5. Differential Expression Analysis


DESeq2 (R) was used to identify significantly differentially expressed genes between infected and control samples.


**Statistical testing:**
 
- Adjusted p-value (Benjamini–Hochberg correction)  

**Filtering criteria:**

- padj < 0.05  
- |log2FoldChange| > 1  

### 6. Visualization

**Volcano Plot**
- Generated using EnhancedVolcano  

**Heatmap**
- Top 20 differentially expressed genes  
- Generated using pheatmap  
- Variance-stabilizing transformation (VST) applied  

---

## Key Outputs

All analysis results are available in the `results/` directory:

- Full DESeq2 results table  
- Filtered significant gene list (padj < 0.05 and |log2FC| > 1)  
- Volcano plot image  
- Heatmap of top 20 differentially expressed genes  

---

## Tools & Software

### Command-Line Tools

- FastQC  
- Trimmomatic  
- HISAT2  
- featureCounts  

### R Packages

- DESeq2  
- EnhancedVolcano  
- pheatmap  
- org.Hs.eg.db  
- AnnotationDbi  

Software versions are documented in the `environment/` directory.
---

## Reproducibility Note

RNA-seq preprocessing was executed step-by-step using Windows command-line scripts.

Downstream statistical analysis and visualization were performed in R using DESeq2.

All commands and scripts used in this workflow are provided in the `scripts/` directory for reproducibility.

---

## Biological Interpretation

Differential expression analysis revealed strong activation of inflammatory and innate immune response genes in SARS-CoV-2 infected samples compared to controls.

### Key Observations

- Significant upregulation of:
  - Pro-inflammatory cytokines (e.g., IL1 family genes)
  - Chemokines (e.g., CCL family genes)
  - Inflammatory markers (e.g., S100 family genes)

- Coordinated upregulation of multiple immune-related genes  
- Evidence of activated innate immune signaling pathways  

The presence of multiple immune mediators among the most significantly differentially expressed genes suggests a robust host transcriptional response to viral infection.

This transcriptomic pattern reflects activation of early innate immune pathways typically triggered during viral infections as part of host defense.

Overall, the gene expression profile is consistent with immune activation and inflammatory signaling characteristic of host–pathogen interactions.

