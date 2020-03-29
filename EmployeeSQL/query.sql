--- List the details of all employees
SELECT * FROM "employees";


---2. List employees who were hired in 1986.
SELECT * FROM "employees_test"
WHERE EXTRACT(YEAR FROM hire_date) = 1986; 


---3. List the manager of each department with the following information: department number, department name, 
---the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, man.emp_no, e.first_name, e.last_name, man.from_date, man.to_date, e.hire_date
FROM "departments" AS d
JOIN "dept_manager" AS man
ON d.dept_no = man.dept_no
	JOIN "employees" AS e
	ON man.emp_no = e.emp_no
;


---4. List the department of each employee with the following information: employee number, 
---last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "employees" AS e
JOIN "dept_emp"
ON e.emp_no = dept_emp.emp_no
	JOIN "departments" AS d
	ON dept_emp.dept_no = d.dept_no
ORDER BY emp_no
;