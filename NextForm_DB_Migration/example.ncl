# Generated with the IRI Workbench - New Single Source Migration Job
# 
# Author: IRIDEMO
# Created: 2016-02-01 17:50:41
# 
# Simple, one table migration.
# 


/INFILE="SCOTT.COMPANIES_TEST;DSN=Oracle;"
	/ALIAS=SCOTT_COMPANIES_TEST
	/PROCESS=ODBC
	/FIELD=(COMPANY_NUMBER, TYPE=NUMERIC, POSITION=1, SEPARATOR="\t", ODEF="COMPANY_NUMBER")
	/FIELD=(COMPANY_NAME, TYPE=ASCII, POSITION=2, SEPARATOR="\t", ODEF="COMPANY_NAME")

/REPORT

/OUTFILE="companies_test;DSN=MySQL;"
	/PROCESS=ODBC
	/FIELD=(COMPANY_NUMBER, TYPE=NUMERIC, POSITION=1, SEPARATOR="\t", ODEF="COMPANY_NUMBER")
	/FIELD=(COMPANY_NAME, TYPE=ASCII, POSITION=2, SEPARATOR="\t", ODEF="COMPANY_NAME")
