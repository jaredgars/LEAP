

** Import raw automotive data
*-------------------------------------------------------------------------------
 use "$data/auto.dta", clear

 replace  weight      = weight/10
 replace  length      = length/10
 generate lprice      = log(price)
 generate weight2     = weight^2 // new variable 2
 generate turn2       = turn^2 // new var 3

 
 label var lprice 		 "Log(Price)"
 label var weight2 		 "Weight sq." //new label 2
 label var turn2 		 "Turn sq." // new lab 3

 save "$processed/auto_clean", replace
 
