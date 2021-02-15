--Data Analysis

-- done 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;


-- done 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Confirms count is accurate - 36150 in .csv file
SELECT COUNT(hire_date) FROM employees WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


-- done 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager
join departments
on dept_manager.dept_no = departments.dept_no
join employees
on employees.emp_no = dept_manager.emp_no;
-- POTATO - uppercase sql vs lowercase sql (pgAdmin vs ???)

-- Extra code to confirm only managers are listed, based on count results from above query
SELECT COUNT(employees.emp_title_id) FROM employees WHERE employees.emp_title_id = 'm0001';


-- done 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
JOIN employees
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;
--POTATO - If time - couldn't get select emp_no to pull from employees table, why pull from dept table?


-- done 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = 'Hercules'
	AND employees.last_name LIKE 'B%';


-- done 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
	WHERE departments.dept_name = 'Sales';


-- done 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
JOIN employees
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
	WHERE departments.dept_name = 'Sales'
	OR departments.dept_name = 'Development';


-- done 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select employees.last_name, count (employees.last_name) as frequency
from employees
group by employees.last_name
order by
count (employees.last_name) desc;
-- POTATO - need to confirm these numbers
