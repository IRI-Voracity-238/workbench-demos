LOAD DATA
INFILE 'stdout'
TRUNCATE
INTO TABLE orders_sorted
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
	"ORDER_ID"	CHAR(4000), 
	"CUSTOMER"	CHAR(4000), 
	"EMPLOYEE"	CHAR(4000), 
	"SHIP_DATE"	TIMESTAMP	"SYYYYMMDDHH24MISS.FF6", 
	"FREIGHT"	INTEGER EXTERNAL
)
