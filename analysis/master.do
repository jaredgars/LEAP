* **********************************************************************
* Project: LEAP
* Created: MAY 2021
* Stata v.16.1

* Note: Users can edit file path to the project in config.do
* All subsequent files are referred to using dynamic, absolute filepaths
* This file assumes that you have changed the globals to your root folders
* in scripts/0_setup.do
* **********************************************************************
* 0 - General setup
* **********************************************************************

* Specify Stata version in use
    global stataVersion 16.1    // set Stata version
    version `$stataVersion'

* Set graph and Stata preferences
    *set scheme plotplain

* Run 0_setup.do - set where your setup file is. Must change root globals in scripts/0_setup.do before running. 
if "`c(username)'" == "jaredgars" { 
	include "~/git/LEAP/analysis/scripts/0_setup.do"
}

**********************************************************************
* 1 - Run code
* **********************************************************************

*Cleaning
 include ${scripts}/1_cleaning.do

 *Regressions
 include ${scripts}/2_regressions.do