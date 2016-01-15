#!/bin/bash
set -euo pipefail

# Creating directories
mkdir -p ./{data,analysis}

# Downloading data
wget -nv -P data/ ftp://ftp.ncbi.nlm.nih.gov/genomes/GENOME_REPORTS/{README,*.txt}

# Running shell script for Inspecting Data
bash scripts/run_InspectingData.sh

# Running R script
Rscript --vanilla scripts/my_analysis.R
mv Rplots.pdf analysis/

# Print operating system characteristics
uname -a

echo "[$(date)] $0 has been successfully completed."
