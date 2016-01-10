#!/bin/bash
set -euo pipefail

# Creating directories
mkdir -p ./{data/$(date +%F),analysis/$(date +%F)}

# Downloading data
wget -nv -P data/ ftp://ftp.ncbi.nlm.nih.gov/genomes/GENOME_REPORTS/{README,*.txt}

# Running shell script for Inspecting Data
bash scripts/run_InspectingData.sh

# Running R script
Rscript --vanilla scripts/my_analysis.R

# Print operating system characteristics
uname -a

echo "[$(date)] Thank you, come again."
