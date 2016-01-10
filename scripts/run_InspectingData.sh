#!/bin/bash
set -e
set -u
#set -o pipefail

    cd data/
    echo "#######################################################"
    echo "# Inspecting and Manipulating Text Data with Unix Tools"
    echo "#######################################################"

    echo "# Inspecting Data with Head and Tail"
    head -n 2 overview.txt
    tail -n 2 overview.txt

    # Plain-Text Data Summary Information with wc, ls, and awk
    echo "# wc -l outputs the number of lines"
    wc -l *.txt
    echo "# ls -lh reports human-readable file sizes"
    ls -lh *.txt
    echo "# use an awk one-liner to return how many fields a file contains"
    awk -F "\t" '{print NF; exit}' overview.txt

    # grep
    echo "# use grep to extract lines of a file that match a pattern"
    grep "uncultured phage" overview.txt
    echo "# add the option -i to grep to be case insensitive"
    grep -i "uncultured phage" overview.txt
    echo "# add the option -c to grep to count how many lines match a pattern"
    grep -c "[Uu]ncultured phage" overview.txt

    echo; 
    echo "# Using grep, cut, sort, uniq to summarize columns of data"
    echo "# add the option -v to grep to only return lines that do not match a pattern"
    echo "# Extracting the column(s) with cut"
    echo "# Sorting Plain-Text Data with Sort"
    echo "# Finding Unique Values in Uniq"
    grep -v "^#" overview.txt | cut -f2 | sort | uniq
    echo "# Adding the option -c to uniq to show the counts of occurrences next to the unique lines"
    grep -v "^#" overview.txt | cut -f2 | sort | uniq -c
    echo "# pipe these results to sort -rn to show these counts in order from most frequent to least"
    grep -v "^#" overview.txt | cut -f2 | sort | uniq -c | sort -rn
    echo "# count multiple columns, e.g. Group,SubGroup (columns 3,4)"
    grep "Eukaryota" overview.txt | cut -f3,4 | sort | uniq -c

    # Text Processing with Awk
    echo "# extract lines with Size (Mb) greater than 4000"
    awk -F "\t" '$5 > 4000' overview.txt
