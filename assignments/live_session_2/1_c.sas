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
data PurPrice;
   merge Purchase Inventory;
   by Model;
   TotalCost=Price*Quantity;
   format TotalCost dollar8.2;
   if CustNumber and Quantity;
proc print data=PurPrice;


	




