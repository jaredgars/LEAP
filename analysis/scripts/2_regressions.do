
** Run regressions
*-------------------------------------------------------------------------------
 use "$processed/auto_clean.dta", clear


	eststo clear
	eststo m1: reg lprice mpg weight length , r
	estadd ysumm
	eststo m2: reg price mpg weight length , r
	estadd ysumm
	esttab  using "$tables/reg_price.tex", scalars("ymean Mean dep. var." ) label replace b(a2) ar2   star( * .1 ** .05 *** .01) ///
	mtitles("Log(Price)" "Price") nonotes nobaselevels noomitted

