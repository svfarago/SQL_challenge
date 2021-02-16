-- Exported from QuickDBD: Link to schema: https://app.quickdatabasediagrams.com/#/d/F8pxym

-- Drop tables if necessary
-- WARNING - you will have to reimport data
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;


-- Create all tables using export from Quick DBD

CREATE TABLE "employees" (
    "emp_no" int NOT NULL,
    "emp_title_id" varchar NOT NULL,
    "birth_date" date NOT NULL,
    "first_name" varchar NOT NULL,
    "last_name" varchar NOT NULL,
    "sex" varchar NOT NULL,
    "hire_date" date NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

-- Data would not import when specifying a PK, so removed from code.
CREATE TABLE "dept_emp" (
    "emp_no" INT NOT NULL,
    "dept_no" VARCHAR NOT NULL
);


CREATE TABLE "salaries" (
    "emp_no" int NOT NULL,
    "salary" int NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

-- Data would not import when specifying a PK, so removed from code.
CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR NOT NULL,
    "emp_no" INT NOT NULL
);


CREATE TABLE "departments" (
    "dept_no" varchar NOT NULL,
    "dept_name" varchar NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "titles" (
    "title_id" varchar NOT NULL,
    "title" varchar NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);


ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");


-- View data in tables  to ensure import worked properly
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM salaries;
SELECT * FROM dept_manager;
SELECT * FROM departments;
SELECT * FROM titles;








