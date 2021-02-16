--Data Analysis for SQL Queries

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;


-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Extra code to confirm 1986 hires count is accurate - 36150 in .csv file
SELECT COUNT(hire_date) FROM employees WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN departments
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no;

-- Extra code to confirm only managers are listed, based on count results from above query
SELECT COUNT(employees.emp_title_id) FROM employees WHERE employees.emp_title_id = 'm0001';


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
JOIN employees
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = 'Hercules'
	AND employees.last_name LIKE 'B%';


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
	WHERE departments.dept_name = 'Sales';


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
	WHERE departments.dept_name = 'Sales'
	OR departments.dept_name = 'Development';


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- Count column renamed to "frequency"
SELECT employees.last_name, COUNT (employees.last_name) AS frequency
FROM employees
GROUP BY employees.last_name
ORDER BY COUNT (employees.last_name) DESC;

