DATA sale2;
INFILE '/home/szarandioon0/assignments/ls2/saledata2.txt';
INPUT ID Saletype $ Quantity Amount;
format Amount dollar10.2;
PROC PRINT DATA=sale2;