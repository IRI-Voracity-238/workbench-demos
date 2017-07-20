LOAD DATA
INFILE 'SCOTT_DM_DCTA_EVALUATIONS.out'
APPEND INTO TABLE SCOTT.DM_DCTA_EVALUATIONS
REENABLE
TRAILING NULLCOLS
(
DPSID POSITION(0:8) ,
EE_SEQ POSITION(0:3) ,
DCTAE_TYPE POSITION(0:9) ,
PLAN_CODE POSITION(0:5) ,
SEMESTER_DUE POSITION(0:9) ,
YEAR_DUE POSITION(0:3) ,
JOB_FTE_CODE POSITION(0:9) ,
SRC_USER_ID POSITION(0:9) ,
SRC_UPDATE_DATE POSITION(0:9) 
)