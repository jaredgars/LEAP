

** Import raw automotive data
*-------------------------------------------------------------------------------
 use "$data/auto.dta", clear

 generate lprice = log(price)
 label var lprice "Log(Price)"

 save "$processed/auto_clean", replace
 
