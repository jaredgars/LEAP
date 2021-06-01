* **********************************************************************
* Project: LEAP
* Stata v.16.1

* Note: location of project directory is set in config.do
* **********************************************************************
* does
    /*  Installs dependencies (user-written Stata programs) in a local directory
    */
*turn off variable abbreviation
   set varabbrev off

* dependencies
	* add required packages/commands
    local ssc_install   "savesome winsor2 blindschemes estout"
    local userpack      "StataConfig"

* TO DO:
    *

* **********************************************************************
* 0 - Run config file to establish path names
* **********************************************************************
if "`c(username)'" == "jaredgars" { 
        include "~/git/LEAP/analysis/config.do"
}

* **********************************************************************
* 1 - Decide if you want to update ado files (otherwise set adoUpdate to 0)
* **********************************************************************
* Set $adoUpdate to 0 to skip updating ado files
        global adoUpdate    1

* **********************************************************************
* 2 - Check if required packages are installed
* **********************************************************************
* Packages from SSC
    foreach package in `ssc_install' {
    	capture : which `package', all
    	if (_rc) {
            capture window stopbox rusure "You are missing some packages." "Do you want to install `package'?"
            if _rc == 0 {
                quietly capture ssc install `package', replace
                if (_rc) {
                    window stopbox rusure `"This package is not on SSC. Do you want to proceed without it?"'
                }
            }
            else {
                exit 199
            }
    	}
    }


* Update all ado files
    if $adoUpdate == 1 {
        ado update, update
    }

set scheme plotplain
* **********************************************************************
* 3 - Run programs for analysis
* **********************************************************************
   *quietly do "$programs/myprogram.do"
