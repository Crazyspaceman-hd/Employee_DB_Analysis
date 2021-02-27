--List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date FROM employees 
WHERE hire_date LIKE '%1986';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN department_manager dm
ON e.emp_no = dm.emp_no
INNER JOIN departments d 
ON d.Dept_no = dm.dept_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN department_employee de 
ON e.emp_no = de.emp_no
INNER JOIN departments d 
ON d.Dept_no = de.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees 
WHERE last_name LIKE 'B%' AND first_name = 'Hercules'
;

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN department_employee de 
ON e.emp_no = de.emp_no
INNER JOIN departments d 
ON d.Dept_no = de.dept_no
WHERE d.dept_name='Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN department_employee de 
ON e.emp_no = de.emp_no
INNER JOIN departments d 
ON d.Dept_no = de.dept_no
WHERE d.dept_name='Sales' OR d.dept_name='Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) AS "Employees with Last Name"
FROM employees
GROUP BY last_name
ORDER BY "Employees with Last Name" DESC;