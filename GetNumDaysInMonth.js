/**
function to get the number of days in a month, where January is month = 1 and 
December is month = 12

month	    1	2	3	4	5	6	7	8	9	10	11	12
f(month)	31	28*	31	30	31	30	31	31	30	31	30	31

Reference: https://cmcenroe.me/2014/12/05/days-in-month-formula.html
* 28 days for most years, 29 days during leap years (2000,2004,2008,2012, etc.)
 **/

function getNumDaysInMonth(month, year) { 
	return 28 + (month + Math.floor(month/8)) % 2 + 2 % month + 2 * Math.floor(1/month) + isLeapYear(year); 
}

// returns true (1) or false (0) if the year is a leap year.
function isLeapYear(year) {
	if (year % 4 == 0) {
		if (year % 100 == 0) {
			if (year % 400 == 0) {
				return true;
			} else {
				return false;
			}
		} else {
			return true;
		}
	} else {
		return false;
	}
}