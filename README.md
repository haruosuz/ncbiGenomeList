----------

Haruo Suzuki  
Last Update: 2016-01-08  

----------

# NCBI Genome List Project
Project started 2015-11-11.  

Lists of genome sequencing projects for eukaryotes, prokaryotes (archaea and bacteria), and mobile genetic elements (viruses and plasmids) were retrieved from the NCBI FTP site.
[R](https://www.r-project.org) was used for statistical computing.

## Project directories

    ncbiGenomeList/
     README.md: project documentation 
     data/: contains lists of genome sequence data
     scripts/: contains R and Shell scripts
     analysis/: contains results of data analyses

## Data

Data downloaded on 2015-11-11 from <ftp://ftp.ncbi.nlm.nih.gov/genomes/GENOME_REPORTS/> into `data/`:

	data/README
	data/overview.txt
	data/eukaryotes.txt
	data/prokaryotes.txt
	data/prok_reference_genomes.txt
	data/prok_representative_genomes.txt
	data/plasmids.txt
	data/viruses.txt

## Scripts

The shell script `scripts/run.sh` automatically carries out the entire steps: creating directories (`data/` and `analysis/`), downloading data files, 
running the shell script for inspecting data `scripts/run_InspectingData.sh` (generating the output file `analysis/output_InspectingData.txt`), and
running the R script `scripts/my_analysis.R` (generating the output files `analysis/plot.pdf` and `analysis/table.csv`).

## Usage

In the project's main directory `ncbiGenomeList/`, we run the shell script `scripts/run.sh` with:

    bash scripts/run.sh > log.txt 2>&1 &

----------

## References
- [Nucleic Acids Res. 2015 Jan;43(Database issue):D599-605. "Update on RefSeq microbial genomes resources."](http://www.ncbi.nlm.nih.gov/pubmed/25510495)
- [Relationship between genome size and GC content for sequenced Bacterial and Archaeal genomes.](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2704378/figure/pgen-1000565-g001/)

![http://schaechter.asmblog.org/schaechter/2009/07/an-iconoclastic-endosymbiont.html](http://schaechter.asmblog.org/.a/6a00d8341c5e1453ef0115723c61fc970b-300wi)

----------