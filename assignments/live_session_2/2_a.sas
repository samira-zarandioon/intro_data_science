DATA sale1;
INFILE '/home/szarandioon0/assignments/ls2/saledata1.txt';
INPUT ID Region $ Citysize $ Pop Product $;
PROC PRINT DATA=sale1;