# Employee Database: A Mystery in Two Parts

## Database Structure
The database consists of 6 tables imported from CSV files. The four tables `Employees`, `Salaries`, `Titles`, and `Departments` all have unique primary keys. The `Employees` table has a foreign key `emp_title_id ` from the `Titles` table column `title_id`. There are 2 junction tables `Department_Manager` and `Department_Employee`.


![ERD](SQL_ERD.png)



## Data Analysis
___
### List the following details of each employee: employee number, last name, first name, sex, and salary.
This query selects out the requested columns from `Employees` and `Salaries` and then joins the 2 tables on `emp_no`.
___
### List first name, last name, and hire date for employees who were hired in 1986.
This query selects out the requested columns from `Employees` and uses the `%1986` wildcard to only output employees where the `hire_date` column ends in 1986.
___
### List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
This query makes us of the junction table `Department_Manager`. The requested columns are selected from `Employees` and `Departments`, `Employees` is then joined with `Department_Manager` on `emp_no` and `Departments` is then joined with `Department_Manger` on `dept_no`.
___
### List the department of each employee with the following information: employee number, last name, first name, and department name.
Similar to the previous query this makes use of a junction table, this time `Department_Employee`. The requested columns are selected from `Employees` and `Departments`, `Employees` is then joined with `Department_Employee` on `emp_no` and `Departments` is then joined with `Department_Employee` on `dept_no`.
___
### List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
This query selects out the requested columns from `Employees` and uses the `B%` wildcard and `first_name = 'Hercules'`  to only output employees where the first name is Hercules and the last name is B followed by anything else.
___
### List all employees in the Sales department, including their employee number, last name, first name, and department name.

This query revists the junction table `Department_Employee`. The requested tables are selected from `Employees` and `Departments`, `Employees` is then joined with `Department_Employee` on `emp_no` and `Departments` is then joined with `Department_Employee` on `dept_no`. Then a `WHERE` statement is used to restrict the output to only rows where the department name is 'Sales'
___
### List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

This query is almost identical to the last, onlyu replacing the line `WHERE d.dept_name='Sales'` with `WHERE d.dept_name='Sales' OR d.dept_name='Development'` to include the deparment name 'Developement' as well as 'Sales'
___
### In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
This query selects `last_name` from `Employees` and also selects `COUNT(last_name)` as a seperate column 'Employees with Last Name'.  The data is then grouped by `last_name` and ordered by column 'Employees with Last Name' in descending value.


## My Employee Number
___
Running my own employee number through the system using:

`SELECT * FROM employees WHERE emp_no = 499942;`

Produces the following output:

![emp_no](emp_no.png)
## ***Very amusing.***