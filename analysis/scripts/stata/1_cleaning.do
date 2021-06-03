

** Import raw automotive data
*-------------------------------------------------------------------------------
 use "$data/auto.dta", clear

 replace  weight = weight/1000
 replace  length = length/1000
 generate lprice = log(price)
 generate mpg2   = mpg^2
 
 label var lprice "Log(Price)"
 label var mpg2   "Mileage sq."

 save "$processed/auto_clean", replace
 
