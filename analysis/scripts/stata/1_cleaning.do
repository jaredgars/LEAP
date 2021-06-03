

** Import raw automotive data
*-------------------------------------------------------------------------------
 use "$data/auto.dta", clear

 replace  weight      = weight/10
 replace  length      = length/10
 generate lprice      = log(price)
 generate mpg2   	  = mpg^2
 generate gear_ratio2 = gear_ratio^2
 
 label var lprice 		 "Log(Price)"
 label var mpg2   		 "Mileage sq."
 label var gear_ratio2   "Gear ratio sq."

 save "$processed/auto_clean", replace
 
