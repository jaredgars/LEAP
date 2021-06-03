

** Import raw automotive data
*-------------------------------------------------------------------------------
 use "$data/auto.dta", clear

 replace  weight      = weight/10
 replace  length      = length/10
 generate lprice      = log(price)

 
 label var lprice 		 "Log(Price)"


 save "$processed/auto_clean", replace
 
