
CREATE TABLE CUSTOMERS_FLOW (
		ID NUMBER(10 , 0) NOT NULL,
		NAME VARCHAR2(20),
		STATE VARCHAR2(25),
		PHONE VARCHAR2(10)
	);

CREATE TABLE ORDERS_FLOW (
		ORDER_ID VARCHAR2(5) NOT NULL,
		CUSTOMER_ID NUMBER(10 , 0) NOT NULL,
		FREIGHT NUMBER(10 , 0),
		TOTAL NUMBER(10 , 2)
	);

CREATE UNIQUE INDEX CUSTOMERS_PK ON CUSTOMERS_FLOW (ID ASC);

CREATE UNIQUE INDEX ORDERS_PK ON ORDERS_FLOW (ORDER_ID ASC);

ALTER TABLE ORDERS_FLOW ADD CONSTRAINT ORDERS_PK PRIMARY KEY (ORDER_ID);

ALTER TABLE CUSTOMERS_FLOW ADD CONSTRAINT CUSTOMERS_PK PRIMARY KEY (ID);

ALTER TABLE ORDERS_FLOW ADD CONSTRAINT CUSTOMERS_FK FOREIGN KEY (CUSTOMER_ID)
	REFERENCES CUSTOMERS_FLOW (ID);
