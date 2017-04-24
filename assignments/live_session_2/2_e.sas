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
PROC FORMAT;
	VALUE $fm_saletype
		"R"="Retail"
		"W"="Online";

PROC MEANS mean std min q1 median q3 max MAXDEC = 1;
	VAR Pop Quantity Amount;
	CLASS Product Saletype;
	FORMAT Saletype $fm_saletype.;
	TITLE "Summary Statistics of the Sales Data";
	LABEL Pop="Population Size";
	LABEL Quantity="No of items";
	LABEL Amount="Invoice Amount";

	