-- Drop tables if necessary
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;

-- Create table
CREATE TABLE employees (
emp_no int,
emp_title_id varchar (10),
birth_date date,
first_name varchar(30),
last_name varchar(30),
sex varchar (3),
hire_date date
);

--imported data from .csv
select * from employees;


-- Create table
CREATE TABLE dept_emp (
emp_no int,
dept_no varchar (5)
);
--imported data from .csv
select * from dept_emp;


-- Create table
CREATE TABLE salaries (
emp_no int,
salary int
);
--imported data from .csv
select * from salaries;


-- Create table
CREATE TABLE dept_manager (
dept_no varchar(5),
emp_no int
);
--imported data from .csv
select * from dept_manager;


-- Create table
CREATE TABLE departments (
dept_no varchar(5),
dept_name varchar (30)
);
--imported data from .csv
select * from departments;


-- Create table
CREATE TABLE titles (
title_id varchar(10),
title varchar (20)
);
--imported data from .csv
select * from titles;


