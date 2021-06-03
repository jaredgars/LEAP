# Index
- [Introduction](#LEAP-project)
- [Folder structure](#folder-structure)
- [Data cleaning details](#data-cleaning)
- [Analysis steps](#analysis-steps)
- [Code requirements](#code-requirements)

# Project title

Collaborators: Giacomo Battiston, Jared Gars

LEAP example research repo with code and results (Data located in /Dropbox/LEAP/data)

# Data cleaning

Scripts go through each step, from cleaning raw data to analysis. The master `.do` files should completely replicate the analysis.<br>

## Pre-requisites

* **Update:** `config.do` <br>
This script defines path names; update location of working directory if needed
* **Run:** `0_setup.do` <br>
This script installs dependencies (e.g., user-written Stata programs)<br>
It only needs to be run once and is *not* included in the master .do file
    > **Note:** `0_setup.do` defines a macro called `adoUpdate`; set it to 0 if you do not want to update all ado files

## Step 1: Clean raw data
[`1_cleaning.do`](analysis/scripts/1_cleaning.do)

**Part 1: Clean ancillary data**

| Input | Outputs |
| --- | --- |  
data/auto.dta        | processed/auto_clean.dta

</details>
source files located in "~dropbox/LEAP/data/" <br>
output files located in "~dropbox/LEAP/processed/" <br>

[Back to index](#index)


## Folder structure

The general repo structure looks as follows:<br>


```
Code 
git/LEAP
├──README.md 
├──tutorial
│   └──gitting_started.md
└──analysis
    ├──masterDoFile.do
    ├──config.do       
        ├──scripts
           ├──stata
           └──python


Data
Dropbox/LEAP
├──data 
├──processed 
│  └──temp 
└──documentation
   └──questionnaire
   └──grants

Text
Dropbox/LEAP
└──draft
    ├──tables_and_figures.tex
    ├──tables
    ├──figures
    └──statistics
```

<details>
<summary>Full directory structure under fold</summary>

TBD

</details>

Raw data lives in the data/ folder _(read-only)_ <br>
We do not version control data <br>
Scripts take us from  raw data to analysis-ready data <br>

[Back to index](#index)

# Analysis steps
First we do this, then we do that.<br>

[Back to index](#index)

## Different versions of the data
 - [ ] Move to an issue
We run our analyses at both the week- and month-levels.
> Ideally we should have the same regression file for both, with a choice at the top for "week" or "month." Otherwise we risk errors / inconsistencies across the analysis files.

[Back to index](#index)


# References

Jesus Fernandez-Villaverde, 2020. Version Control: Git. <em>Computational Methods for Economists.</em>
https://www.sas.upenn.edu/~jesusfv/Chapter_HPC_5_Git.pdf

Frank Pinter, 2019. Git: A Guide for Economists. Presentation.
https://www.frankpinter.com/notes/git-for-economists-presentation.pdf

Luis Fonseca, 2019. Version control with git (for economists)
https://luispfonseca.com/files/slides_git.pdf

Matteo Sostero, 2018. Git Better: Collaborative project management using Git and GitHub. Presentation.
https://matteosostero.com/files/slides_git.pdf

Francis DiTraglia, 2015. git-for-economists. Git Repository.
https://github.com/fditraglia/git-for-economists


