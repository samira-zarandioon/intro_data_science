data Purchase;
input CustNumber Model $ Quantity;
datalines;
101 L776 1
102 M123 10
103 X999 2
103 M567 1
run;
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

proc sort data=Purchase; 
  	 by Model;
proc sort data=Inventory;
	 by Model;
data NotPurchased;
   merge Purchase Inventory; 
   by Model;
   if missing(CustNumber) and missing(Quantity); /*do not select empty rows */
   keep Model Price; /* keep only only model and price column*/
proc print data=NotPurchased;


	




