

** Import raw automotive data
*-------------------------------------------------------------------------------
 use "$data/auto.dta", clear

 replace  weight      = weight/10
 replace  length      = length/10
 generate lprice      = log(price)
 generate weight2     = weight^2

 
 label var lprice 		 "Log(Price)"
 label var weight2 		 "Weight sq."

 save "$processed/auto_clean", replace
 
