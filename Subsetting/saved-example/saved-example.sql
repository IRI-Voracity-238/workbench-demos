CREATE TABLE SCOTT.SUB_CATEGORY_DIM (
	CATEGORY_ID NUMBER(20,2) NOT NULL,
	CATEGORY_NAME VARCHAR2(70)
	);

ALTER TABLE SCOTT.SUB_CATEGORY_DIM ADD CONSTRAINT SUB_CATEGORY_DIM_PK PRIMARY KEY (CATEGORY_ID);

CREATE TABLE SCOTT.SUB_DEPT_DIM (
	DEPT_ID NUMBER(20,2) NOT NULL,
	DEPT_NAME VARCHAR2(30)
	);

ALTER TABLE SCOTT.SUB_DEPT_DIM ADD CONSTRAINT SUB_DEPT_DIM_PK PRIMARY KEY (DEPT_ID);

CREATE TABLE SCOTT.SUB_EMP_DIM (
	EMP_ID NUMBER(20,2) NOT NULL,
	EMP_NAME VARCHAR2(30)
	);

ALTER TABLE SCOTT.SUB_EMP_DIM ADD CONSTRAINT SUB_EMP_DIM_PK PRIMARY KEY (EMP_ID);

CREATE TABLE SCOTT.SUB_EMP_SALARY_RANGE_DIM (
	EMP_SALARY_RANGE_ID NUMBER(20,2) NOT NULL,
	RANGE_NAME VARCHAR2(30),
	RANGE_START NUMBER(20,2),
	RANGE_END NUMBER(20,2)
	);

ALTER TABLE SCOTT.SUB_EMP_SALARY_RANGE_DIM ADD CONSTRAINT SUB_EMP_SALARY_RANGE_DIM_PK PRIMARY KEY (EMP_SALARY_RANGE_ID);

CREATE TABLE SCOTT.SUB_ITEM_DIM (
	ITEM_ID NUMBER(20,2) NOT NULL,
	ITEM_NAME VARCHAR2(30)
	);

ALTER TABLE SCOTT.SUB_ITEM_DIM ADD CONSTRAINT SUB_ITEM_DIM_PK PRIMARY KEY (ITEM_ID);

CREATE TABLE SCOTT.SUB_ITEM_PRICE_RANGE_DIM (
	ITEM_PRICE_RANGE_ID NUMBER(20,2) NOT NULL,
	RANGE_NAME VARCHAR2(30),
	RANGE_START NUMBER(20,2),
	RANGE_END NUMBER(20,2)
	);

ALTER TABLE SCOTT.SUB_ITEM_PRICE_RANGE_DIM ADD CONSTRAINT SUB_ITEM_PRICE_RANGE_DIM_PK PRIMARY KEY (ITEM_PRICE_RANGE_ID);

CREATE TABLE SCOTT.SUB_PROJECT_DIM (
	PROJECT_ID NUMBER(20,2) NOT NULL,
	PROJECT_NAME VARCHAR2(30)
	);

ALTER TABLE SCOTT.SUB_PROJECT_DIM ADD CONSTRAINT SUB_PROJECT_DIM_PK PRIMARY KEY (PROJECT_ID);

CREATE TABLE SCOTT.SUB_SALE_DIM (
	SALE_ID NUMBER(20,2) NOT NULL,
	SALE_DATE DATE,
	QTY_SOLD NUMBER(20,2),
	DEPT_ID NUMBER(20,2),
	EMP_ID NUMBER(20,2),
	PROJECT_ID NUMBER(20,2),
	ITEM_ID NUMBER(20,2),
	CATEGORY_ID NUMBER(20,2),
	EMP_SALARY_RANGE_ID NUMBER(20,2),
	ITEM_PRICE_RANGE_ID NUMBER(20,2)
	);

ALTER TABLE SCOTT.SUB_SALE_DIM ADD CONSTRAINT SUB_SALE_DIM_PK PRIMARY KEY (SALE_ID);

ALTER TABLE SCOTT.SUB_SALE_DIM ADD CONSTRAINT SUB_SALE_DIM_FK1 FOREIGN KEY (CATEGORY_ID)
	REFERENCES SUB_CATEGORY_DIM (CATEGORY_ID);
ALTER TABLE SCOTT.SUB_SALE_DIM ADD CONSTRAINT SUB_SALE_DIM_FK2 FOREIGN KEY (DEPT_ID)
	REFERENCES SUB_DEPT_DIM (DEPT_ID);
ALTER TABLE SCOTT.SUB_SALE_DIM ADD CONSTRAINT SUB_SALE_DIM_FK3 FOREIGN KEY (EMP_ID)
	REFERENCES SUB_EMP_DIM (EMP_ID);
ALTER TABLE SCOTT.SUB_SALE_DIM ADD CONSTRAINT SUB_SALE_DIM_FK4 FOREIGN KEY (EMP_SALARY_RANGE_ID)
	REFERENCES SUB_EMP_SALARY_RANGE_DIM (EMP_SALARY_RANGE_ID);
ALTER TABLE SCOTT.SUB_SALE_DIM ADD CONSTRAINT SUB_SALE_DIM_FK5 FOREIGN KEY (ITEM_ID)
	REFERENCES SUB_ITEM_DIM (ITEM_ID);
ALTER TABLE SCOTT.SUB_SALE_DIM ADD CONSTRAINT SUB_SALE_DIM_FK6 FOREIGN KEY (ITEM_PRICE_RANGE_ID)
	REFERENCES SUB_ITEM_PRICE_RANGE_DIM (ITEM_PRICE_RANGE_ID);
ALTER TABLE SCOTT.SUB_SALE_DIM ADD CONSTRAINT SUB_SALE_DIM_FK7 FOREIGN KEY (PROJECT_ID)
	REFERENCES SUB_PROJECT_DIM (PROJECT_ID);
