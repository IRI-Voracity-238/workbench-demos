LOAD DATA
INFILE 'SCOTT_DM_JOB_TYPES.out'
APPEND INTO TABLE SCOTT.DM_JOB_TYPES
REENABLE
TRAILING NULLCOLS
(
COMPANY_NUMBER POSITION(0:3) ,
JOB_CODE POSITION(0:4) ,
DESCRIPTION POSITION(0:3999) ,
JOB_CLASS_CODE POSITION(0:2) ,
BIGGER_JOB_COMPANY POSITION(0:3) ,
BIGGER_JOB_CODE POSITION(0:4) ,
SUPER_JOB_COMPANY POSITION(0:3) ,
SUPER_JOB_CODE POSITION(0:4) ,
CREATED_BY POSITION(0:39) ,
CREATION_DATE POSITION(0:9) ,
UPDATED_BY POSITION(0:39) ,
LAST_UPDATE_DATE POSITION(0:9) 
)