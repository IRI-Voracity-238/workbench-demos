ALTER TABLE SCOTT.SUB_SALE_DIM DISABLE CONSTRAINT SUB_SALE_DIM_FK1;
ALTER TABLE SCOTT.SUB_SALE_DIM DISABLE CONSTRAINT SUB_SALE_DIM_FK2;
ALTER TABLE SCOTT.SUB_SALE_DIM DISABLE CONSTRAINT SUB_SALE_DIM_FK3;
ALTER TABLE SCOTT.SUB_SALE_DIM DISABLE CONSTRAINT SUB_SALE_DIM_FK4;
ALTER TABLE SCOTT.SUB_SALE_DIM DISABLE CONSTRAINT SUB_SALE_DIM_FK5;
ALTER TABLE SCOTT.SUB_SALE_DIM DISABLE CONSTRAINT SUB_SALE_DIM_FK6;
ALTER TABLE SCOTT.SUB_SALE_DIM DISABLE CONSTRAINT SUB_SALE_DIM_FK7;

TRUNCATE TABLE SCOTT.SUB_CATEGORY_DIM;
TRUNCATE TABLE SCOTT.SUB_DEPT_DIM;
TRUNCATE TABLE SCOTT.SUB_EMP_DIM;
TRUNCATE TABLE SCOTT.SUB_EMP_SALARY_RANGE_DIM;
TRUNCATE TABLE SCOTT.SUB_ITEM_DIM;
TRUNCATE TABLE SCOTT.SUB_ITEM_PRICE_RANGE_DIM;
TRUNCATE TABLE SCOTT.SUB_PROJECT_DIM;
TRUNCATE TABLE SCOTT.SUB_SALE_DIM;

ALTER TABLE SCOTT.SUB_SALE_DIM ENABLE CONSTRAINT SUB_SALE_DIM_FK1;
ALTER TABLE SCOTT.SUB_SALE_DIM ENABLE CONSTRAINT SUB_SALE_DIM_FK2;
ALTER TABLE SCOTT.SUB_SALE_DIM ENABLE CONSTRAINT SUB_SALE_DIM_FK3;
ALTER TABLE SCOTT.SUB_SALE_DIM ENABLE CONSTRAINT SUB_SALE_DIM_FK4;
ALTER TABLE SCOTT.SUB_SALE_DIM ENABLE CONSTRAINT SUB_SALE_DIM_FK5;
ALTER TABLE SCOTT.SUB_SALE_DIM ENABLE CONSTRAINT SUB_SALE_DIM_FK6;
ALTER TABLE SCOTT.SUB_SALE_DIM ENABLE CONSTRAINT SUB_SALE_DIM_FK7;
