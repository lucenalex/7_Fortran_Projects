{\rtf1\ansi\ansicpg1252\deff0\nouicompat\deflang1033{\fonttbl{\f0\fnil\fcharset0 Calibri;}}
{\colortbl ;\red0\green77\blue187;\red255\green0\blue0;\red165\green165\blue165;\red0\green176\blue80;\red192\green80\blue77;\red102\green102\blue102;}
{\*\generator Riched20 10.0.25188}\viewkind4\uc1 
\pard 
{\pntext\f0 1.\tab}{\*\pn\pnlvlbody\pnf0\pnindent0\pnstart1\pndec{\pntxta.}}
\sl276\slmult1\tx568\tx1136\tx1704\tx2272\tx2840\cf1\f0\fs28\lang22\tab PROGRAM \cf2 temp_conversion\cf0\par
{\pntext\f0 2.\tab}\cf3\tab !\tab Purpose:\cf0\par
{\pntext\f0 3.\tab}\cf3\tab !\tab\tab To convert an input temperature from degrees Fahrenheit\cf0\par
{\pntext\f0 4.\tab}\cf3\tab !\tab\tab an outpu temperature in Kelvins.\cf0\par
{\pntext\f0 5.\tab}\cf3\tab\cf0\par
{\pntext\f0 6.\tab}\cf3\tab !\tab Record of revisions:\cf0\par
{\pntext\f0 7.\tab}\cf3\tab !\tab\tab Date \tab\tab\tab Programmer \tab Description\cf0\par
{\pntext\f0 8.\tab}\cf3\tab !\tab\tab ========\tab\tab\tab ===========\tab ==========\cf0\par
{\pntext\f0 9.\tab}\cf3\tab !\tab\tab 11/03/15 \tab s. J. Chapman\tab Original Code\cf0\par
{\pntext\f0 10.\tab}\par
{\pntext\f0 11.\tab}\tab\tab\cf1 IMPLICIT NONE\tab\cf3 ! Force explicit declaration of variables\cf0\par
{\pntext\f0 12.\tab}\par
{\pntext\f0 13.\tab}\tab\cf3 ! \tab Data Dictionary:  declare variables types, types, definitions, and\cf0\par
{\pntext\f0 14.\tab}\cf3\tab !\tab  units\cf0\par
{\pntext\f0 15.\tab}\cf3\tab\tab\cf1 REAL \cf4 ::\cf1  \cf2 temp_f\tab\tab\tab\cf3 ! Temperature in degrees Fahrenheit\cf0\par
{\pntext\f0 16.\tab}\cf3\tab\tab\cf1 REAL \cf4 ::\cf1  \cf2 temp_k\tab\tab\cf3 ! Temperature in Kelvins.\cf0\par
{\pntext\f0 17.\tab}\par
{\pntext\f0 18.\tab}\tab\cf3 !\tab Prompt the user for the input temperature.\cf0\par
{\pntext\f0 19.\tab}\cf3\tab\tab\cf1 WRITE (*,*),\cf3  \cf5 'Enter the temperature in degrees Fahrenheit.'\cf0\par
{\pntext\f0 20.\tab}\cf1\tab\tab READ   (*,*),\cf3  \cf2 temp_f\cf0\par
{\pntext\f0 21.\tab}\par
{\pntext\f0 22.\tab}\tab\cf6 !\tab Convert to Kelvins.\par
{\pntext\f0 23.\tab}\cf0\tab\tab\cf2 temp_k = (5./9.)*(temp_f -32.) + 273.15\cf0\par
{\pntext\f0 24.\tab}\par
{\pntext\f0 25.\tab}\tab\cf3 !\tab Write out the result\cf0\par
{\pntext\f0 26.\tab}\tab\tab\cf1 WRITE (*,*),\cf3  \cf2 temp_f\cf1 ,\cf3  \cf5 'degres Fahrenheit = '\cf1 ,\cf5  \cf2 temp_k\cf1 ,\cf3  \cf5 'Kelvins'\cf0\par
{\pntext\f0 27.\tab}\par
{\pntext\f0 28.\tab}\tab\cf3 !\tab Finish up\cf0\par
{\pntext\f0 29.\tab}\cf1\tab END PROGRAM \cf2 temp_conversion\cf0\par
}
 