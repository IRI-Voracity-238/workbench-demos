rem @echo off
C:
rem cd "C:\IRI\CoSort95\workbench\workspace\NextForm_Multi_Table_Migration\Setup"
sqlplus scott/tiger@localhost < Reset_demo.sql
sortcl /SPECIFICATION=Load_Customers_NF.scl
sortcl /SPECIFICATION=Load_Orders_HF.scl
