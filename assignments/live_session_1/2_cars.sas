LIBNAME MYSASLIB '/home/szarandioon0/';
DATA MYSASLIB.CARS;
INFILE '/home/szarandioon0/sas_book_data/CARSMPG.csv' DLM = ',' FIRSTOBS = 2;
INPUT  BRAND $ MODEL $ MINIVAN WAGON PICKUP AUTOMATIC ENGINESIZE CYLINDERS CITYMPG HWYMPG SUV AWD HYBRID;
PROC PRINT DATA=MYSASLIB.CARS;
     ID MODEL;
run;
