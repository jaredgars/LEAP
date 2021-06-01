* **********************************************************************
* Project:  LEAP example
* Stata v.16.1
* **********************************************************************
* does
    /*  Defines path names and sets some key preferences
    */

* **********************************************************************
* 0 - Define root folder globals
* **********************************************************************
    *to see your username type this into stata: disp "`c(username)'"
    
    if "`c(username)'" == "jaredgars" { 
        global user         "jaredgars"
        global git          "/Users/${user}/git"
        global dropbox      "/Users/${user}/Dropbox"
        *global text         "/Users/jaredgars/Dropbox/Apps/Overleaf"
        global text         "/Users/${user}/Dropbox/Apps/Overleaf"
    }

* **********************************************************************
* 1 - Sub-directory globals
* **********************************************************************

*Project name
    global project                "LEAP"
    
* Create some sub-folder globals
    global analysis               "${git}/${project}/analysis"
    
    *Scripts folders
    global scripts                "${analysis}/scripts"
    global programs               "${scripts}/programs"
    global logs                   "${scripts}/logs"
    
    *Data folders
    global datahub                "${dropbox}/${project}"
    global data                   "${datahub}/data"
    global processed              "${datahub}/processed"
    global temp                   "${processed}/temp"
    
    *Draft folders
    global draft                  "${dropbox}/${project}/draft"
    global figures                "${draft}/figures"
    global tables                 "${draft}/tables"
    global stats                  "${draft}/stats"

*Make directories if they do not already exist
foreach dir in  processed temp draft figures tables stats {
     capture mkdir "$`dir'"
}

* **********************************************************************
* 2 - Change ado directory so packages get installed in
*     a project-specific directory
* **********************************************************************
* Create ado folder if it doesn't exist
    qui: capture mkdir      "${scripts}/ado"

* Storing packages here ensures that the project is replicable
* without requiring an internet connection
    sysdir set PERSONAL     "${scripts}/ado/personal"
    sysdir set PLUS         "${scripts}/ado/plus"

* **********************************************************************
* 3 - Set important preferences
* **********************************************************************
* Set varabbrev off
    set varabbrev       off
    set more            off
    set logtype         text    // so logs can be opened without Stata

* **********************************************************************
* 3 - Set python executable
* **********************************************************************
   *set python_exec ${python_exec}

* **********************************************************************
* 4 - Start log file
* **********************************************************************
* String with current date
    local c_date    = c(current_date)
    local cdate     = subinstr("`c_date'", " ", "_", .)

* Start log file
    * generate log folder if it doesn't exist
    qui: capture mkdir  "${logs}"
    cap log             close
    log using           "${logs}/logfile`cdate'.log", replace text


* Note which flavor of Stata
    local variant = cond(c(MP),"MP",cond(c(SE),"SE",c(flavor)) )

* Include in log file info on how and when program was run
    di "=== SYSTEM DIAGNOSTICS ==="
    di "Stata version: `c(stata_version)'"
    di "Updated as of: `c(born_date)'"
    di "Variant:       `variant'"
    di "Processors:    `c(processors)'"
    di "OS:            `c(os)' `c(osdtl)'"
    di "Machine type:  `c(machine_type)'"
    di "=========================="
