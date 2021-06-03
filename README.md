# Index
- [Introduction](#media-and-motivation)
- [Folder structure](#folder-structure)
- [Data cleaning](#data-cleaning)
- [Analysis steps](#analysis-steps)


# Project title

Collaborators: Giacomo Battiston, Jared Gars

LEAP example research repo with code and results

# Data cleaning

Scripts go through each step, from cleaning raw data to analysis. The master .do files should completely replicate the analysis.

## Pre-requisites

* **Update:** `config.do` <br>
This script defines path names; update location of working directory if needed
* **Run:** `0_setup.do` <br>
This script installs dependencies (e.g., user-written Stata programs)<br>
It only needs to be run once and is *not* included in the master .do file
    > **Note:** `0_setup.do` defines a macro called `adoUpdate`; set it to 0 if you do not want to update all ado files

</details>
Raw source files: "Dropbox/LEAP/data/" <br>
Cleaned files:    "Dropbox/LEAP/processed/" <br>


## Step 1: Clean raw data
The following stata script cleans auto.dta and other description:
[`1_cleaning.do`](analysis/scripts/1_cleaning.do)

| Input | Outputs |
| --- | --- |  
data/auto.dta        | processed/auto_clean.dta


# Analysis steps


## Step 1: Run regressions
The following stata script runs regressions and outputs tables:

[`2_regressions.do`](analysis/scripts/2_regressions.do)

| Input | Outputs |
| --- | --- |  
processed/auto_clean.dta        | draft/tables/reg_price.tex

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

[Back to index](#index)




