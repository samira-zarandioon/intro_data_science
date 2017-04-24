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
data NewProducts;
input Model $ Price;
format Price dollar8.2;
datalines;
L939 10.99
M135 .75
run;

proc print data=Inventory;
proc print data=Newproducts;
proc sort data=Inventory out=InventorySorted;
   by Model;
proc print data=InventorySorted;
proc sort data=NewProducts out=NewProductsSorted;
   by Model;
proc print data=NewProductsSorted;
data updated2;set InventorySorted NewProductsSorted;
    by Model;
proc print data=updated2;

