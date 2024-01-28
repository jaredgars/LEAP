
** Run regressions
*-------------------------------------------------------------------------------
 use "$processed/auto_clean.dta", clear


	eststo clear
	eststo m1: reg lprice mpg weight length , r
	estadd ysumm
	eststo m2: reg price mpg weight length , r
	estadd ysumm
	eststo m3: reg price mpg weight weight2 length , r //new reg 2
	estadd ysumm
	eststo m4: reg price mpg weight weight2 turn turn2 length , r // new reg 3
	estadd ysumm
	eststo m5: reg price mpg weight weight2 turn turn2 length i.foreign, r
	estadd ysumm
	esttab  using "$tables/reg_price.tex", scalars("ymean Mean dep. var." ) label replace b(a2) ar2  star( * .1 ** .05 *** .01) ///
	 nonotes nobaselevels noomitted

