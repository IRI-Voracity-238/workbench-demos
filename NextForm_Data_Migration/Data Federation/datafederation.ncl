# Generated with the IRI Workbench - New Reformat Job
# 
# Author: IRIDEMO
# Created: 2015-02-20 14:29:18
# 
# 


/INFILE="SCOTT.JOB_HISTORY;DSN=Oracle"
	/ALIAS=SCOTT_JOB_HISTORY
	/PROCESS=ODBC
	/FIELD=(EMPLOYEE_SID, TYPE=ASCII, POSITION=1, SEPARATOR="|", ODEF="EMPLOYEE_SID")
	/FIELD=(START_DATE, TYPE=ISO_TIMESTAMP, POSITION=2, SEPARATOR="|", ODEF="START_DATE")
	/FIELD=(END_DATE, TYPE=ISO_TIMESTAMP, POSITION=3, SEPARATOR="|", ODEF="END_DATE")
	/FIELD=(JOB_ID, TYPE=ASCII, POSITION=4, SEPARATOR="|", ODEF="JOB_ID")
	/FIELD=(DEPARTMENT_ID, TYPE=NUMERIC, POSITION=5, SEPARATOR="|", ODEF="DEPARTMENT_ID")

/INFILE=jobs.txt
	/PROCESS=RECORD
	/ALIAS=jobs
	/FIELD=(JOB_ID, TYPE=ASCII, POSITION=1, SEPARATOR=",", FRAME='\"')
	/FIELD=(JOB_TITLE, TYPE=ASCII, POSITION=2, SEPARATOR=",", FRAME='\"')
	/FIELD=(MIN_SALARY, TYPE=ASCII, POSITION=3, SEPARATOR=",", FRAME='\"')
	/FIELD=(MAX_SALARY, TYPE=ASCII, POSITION=4, SEPARATOR=",", FRAME='\"')

/INREC
	/FIELD=(JOB_ID, TYPE=ASCII, POSITION=1, SIZE=10)

/REPORT

/OUTFILE=stdout
	/PROCESS=RECORD
	/FIELD=(JOB_ID, TYPE=ASCII, POSITION=1, SIZE=10)
