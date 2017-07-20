ALTER TABLE "COUNTRIES" MODIFY CONSTRAINT "COUNTRY_REG_FK" ENABLE;
ALTER TABLE "LOCATIONS" MODIFY CONSTRAINT "LOC_C_ID_FK" ENABLE;
ALTER TABLE "EMPLOYEES" MODIFY CONSTRAINT "EMP_JOB_FK" ENABLE;
ALTER TABLE "EMPLOYEES" MODIFY CONSTRAINT "EMP_DEPT_FK" ENABLE;
ALTER TABLE "JOB_HISTORY" MODIFY CONSTRAINT "JHIST_DEPT_FK" ENABLE;
ALTER TABLE "DEPARTMENTS" MODIFY CONSTRAINT "DEPT_LOC_FK" ENABLE;
ALTER TABLE "DEPARTMENTS" MODIFY CONSTRAINT "DEPT_MGR_FK" ENABLE;
ALTER TABLE "EMPLOYEES" MODIFY CONSTRAINT "EMP_MGNR_FK" ENABLE;
ALTER TABLE "JOB_HISTORY" MODIFY CONSTRAINT "JHIST_EMP_FK" ENABLE;
ALTER TABLE "JOB_HISTORY" MODIFY CONSTRAINT "JHIS_JOB_FK" ENABLE;
exit
