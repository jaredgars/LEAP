# Index
- [Introduction](#LEAP project)
- [Folder structure](#folder-structure)
- [Data cleaning details](#data-cleaning)
- [Analysis steps](#analysis-steps)
- [Code requirements](#code-requirements)

# Project title

Collaborators: Giacomo Battiston, Jared Gars

LEAP example research repo with code and results (no data)

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
[`1_cleaning_raw_data.do`](analysis/scripts/0_setup.do)

**Part 1: Clean ancillary data**

| Input | Outputs |
| --- | --- |  
data/baseline.csv        | processed/baseline_clean.dta
data/midline.csv         | processed/midline_clean.dta

source files located in "~dropbox/LEAP/data/"
output files located in "~dropbox/LEAP/processed/"

[Back to index](#index)



* `config.do` defines all path names
* `0_setup.do` installs dependencies (e.g., user-written Stata programs)
    >  `0_setup.do` defines a macro called `adoUpdate`; set it to 0 if you do not want to update all ado files

## Folder structure

The general repo structure looks as follows:<br>

```stata
git/LEAPproject
├────README.md
│    
├────analysis
│    ├──masterDoFile.do
│    ├──config.do       /* scripts used across data types */
│    │  ├──scripts
│    │  │  ├──stata
│    │  │  └──python
└──config

Dropbox/LEAPproject
│    ├──data /* raw data */
│    ├──processed /* processed (intermediate) data */
│    ├──temp /* temporary data */
│    ├──documentation
│    │  └──questionnaire
│    │  └──grants
└──config

Overleaf/LEAPproject
│    ├──output
│    │  ├──tables
│    │  └──figures
│    │  └──statistics
└──config
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

Frank Pinter. Git: A Guide for Economists. Presentation.
https://www.frankpinter.com/notes/git-for-economists-presentation.pdf


