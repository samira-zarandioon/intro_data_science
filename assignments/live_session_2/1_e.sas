
data Inventory;
input Model $ Price;
format Price dollar8.2;
datalines;
M567 23.50
S888 12.99
L776 159.98
X999 29.95
M123 4.59
S776 1.99
run;

data NewPrice;
	set Inventory;
	if Model = 'M567' then Price=27.95;
	if Model = 'X999' then Price=38.99;
	
proc print data=NewPrice;


