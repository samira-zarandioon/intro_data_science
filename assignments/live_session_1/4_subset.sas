LIBNAME MYSASLIB '/home/szarandioon0/';
DATA MYSASLIB.CARS;
INFILE '/home/szarandioon0/sas_book_data/CARSMPG.csv' DLM = ',' FIRSTOBS = 2;
INPUT  BRAND $ MODEL $ MINIVAN WAGON PICKUP AUTOMATIC ENGINESIZE CYLINDERS CITYMPG HWYMPG SUV AWD HYBRID;
RUN;
DATA SMALL;SET MYSASLIB.CARS;
IF ENGINESIZE LT 2.0;
RUN;
DATA HYBRID; SET MYSASLIB.CARS;
IF HYBRID = 1;
RUN;
PROC PRINT DATA=SMALL;
TITLE 'SMALL';
RUN;
PROC PRINT DATA=HYBRID;
TITLE 'HYBRID';
RUN;
