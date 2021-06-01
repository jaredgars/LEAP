

** Import raw automotive data
*-------------------------------------------------------------------------------
 use "$data/auto.dta", clear

 generate lprice = log(price)
 label var lprice "Log(Price)"

 replace weight = weight/10000
 replace length = length/10000

 save "$processed/auto_clean", replace
 
