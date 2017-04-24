DATA sale1;
INFILE '/home/szarandioon0/assignments/ls2/saledata1.txt';
INPUT ID Region $ Citysize $ Pop Product $;
PROC SORT DATA=sale1;
	BY ID;
DATA sale2;
INFILE '/home/szarandioon0/assignments/ls2/saledata2.txt';
INPUT ID Saletype $ Quantity Amount;
format Amount dollar10.2;
PROC SORT DATA=sale2;
	BY ID;
DATA saledata;
	MERGE sale1 sale2;
	BY ID;
	IF not missing(Region) and not missing(Citysize) and not missing(Pop) and not missing(Product) and not missing(Saletype) and not missing(Quantity) and not missing(Amount);
PROC MEANS mean min q1 median q3 max MAXDEC = 2; /* show stats only up to two decimal places */
	VAR Pop Quantity Amount;
	