--- List the details of all employees
SELECT * FROM "employees";

---2. List employees who were hired in 1986.

SELECT * FROM "employees_test"
WHERE EXTRACT(YEAR FROM hire_date) = 1986; 