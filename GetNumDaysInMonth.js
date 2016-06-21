/**
function to get the number of days in a month, where January is month = 1 and 
December is month = 12

month	    1	2	3	4	5	6	7	8	9	10	11	12
f(month)	31	28	31	30	31	30	31	31	30	31	30	31

Reference: https://cmcenroe.me/2014/12/05/days-in-month-formula.html
 **/


function getNumDaysInMonth(month) { 
	return 28 + (month + Math.floor(month/8)) % 2 + 2 % month + 2 * Math.floor(1/month); 
}