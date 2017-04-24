*******************************************************
* This SAS code is an example from the text			  *
* SAS ESSENTIALS 2nd Ed, Wiley                        *
* (C) 2016 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

* This example illustrates the use of  PROC PRINT;

* NOTE: You can also use DATA=MYSASLIB.SOMEDATA 
* if the MYSASLIB library has been previously defined;

PROC PRINT LABEL DATA=MYSASLIB.SOMEDATA 
	N = 'Number of Subjects is: '
	Obs = 'Subjects'
	SPLIT='*';
LABEL TIME1='Baseline*Value*_____'
	TIME2='Observation at*60 Seconds*_____'
	TIME3='Observation at*120 Seconds*_____'
    TIME4='Observation at*5 Minutes'*_____;
SUM TIME1 TIME2 TIME3 TIME4;
TITLE 'PROC PRINT Example';
RUN;


TITLE;FOOTNOTE;
