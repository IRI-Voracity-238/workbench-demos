LOAD DATA
INFILE 'SCOTT_DM_COMPANIES.out'
APPEND INTO TABLE SCOTT.DM_COMPANIES
REENABLE
FIELDS TERMINATED BY "	"
TRAILING NULLCOLS
(
COMPANY_NUMBER NULLIF(COMPANY_NUMBER="{NULL}") ,
COMPANY_NAME NULLIF(COMPANY_NAME="{NULL}") 
)