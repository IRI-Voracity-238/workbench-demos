LOAD DATA
INFILE 'C:/IRI/CoSort95/workbench/workspace/RowGen_Test_DB_Data/DFdemo/DM_COMPANIES.out'
APPEND INTO TABLE DM_COMPANIES
REENABLE
FIELDS TERMINATED BY "	"
TRAILING NULLCOLS
(
COMPANY_NUMBER NULLIF(COMPANY_NUMBER="{NULL}") ,
COMPANY_NAME NULLIF(COMPANY_NAME="{NULL}") 
)