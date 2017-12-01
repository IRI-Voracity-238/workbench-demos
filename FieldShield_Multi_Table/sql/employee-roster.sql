-- Display the linked information about employees

SELECT EMPLOYEES.EMPLOYEE_SID, EMPLOYEES.LAST_NAME, DEPARTMENTS.DEPARTMENT_NAME,
  EMPLOYEES.MANAGER_SID, EMP_MGR.LAST_NAME AS MANAGER_NAME
  FROM
       EMPLOYEES JOIN EMPLOYEES EMP_MGR ON EMPLOYEES.MANAGER_SID = EMP_MGR.EMPLOYEE_SID JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
  ORDER BY EMPLOYEES.LAST_NAME ASC