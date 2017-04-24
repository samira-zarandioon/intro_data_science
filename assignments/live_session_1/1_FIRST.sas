*******************************************************
* This SAS code is an example from the text			  *
* SAS ESSENTIALS 2nd Ed, Wiley                        *
* (C) 2016 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

DATA EMPLOYEES;
INPUT GENDER $ AGE;
DATALINES;
MALE 34
MALE 37
MALE 19
MALE 18
MALE 46
MALE 64
MALE 54
MALE 44
MALE 33
FEMALE 36
FEMALE 32
FEMALE 43
FEMALE 24
FEMALE 29
FEMALE 52
FEMALE 72
FEMALE 38
FEMALE 42
;
PROC MEANS;
   TITLE 'Means Based On Gender';
   TITLE2 'Assignment 1';
   TITLE3 'Live Session 1';
   TITLE4 'MSDS 6306';    
   TITLE5 'By Samira Zarandioon';
   FOOTNOTE 'Introduction to Data Science';
   FOOTNOTE2 '(401)';
   CLASS GENDER;
RUN;
