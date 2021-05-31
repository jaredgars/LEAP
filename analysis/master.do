* **********************************************************************
* Project: LEAP
* Created: MAY 2021
* Stata v.16.1

* Note: Users can edit file path to the project in config.do
* All subsequent files are referred to using dynamic, absolute filepaths
* This file assumes that you have run analysis/scripts/0_setup.do *
* does
    /* This code runs all do-files needed for data work.
    
* TO DO:
    * 

* **********************************************************************
* 0 - General setup
* **********************************************************************
    include analysis/config.do

* Specify Stata version in use
    global stataVersion 16.1    // set Stata version
    version `$stataVersion'

* Set graph and Stata preferences
    set scheme plotplain

* Run 0_setup.do if needed (ensures dependencies installed)


**********************************************************************
* 1 - Run code
* **********************************************************************

