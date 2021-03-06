# SQL_challenge
* This is my first SQL project using pgAdmin4 and PostgreSQL 13.

## ReadMe File
* Updated: February 17, 2021 | Created: February 11, 2021
* Copyright: open source

### License ===========================
* None. See Installation instructions below for a list of applications.


### Configuration Instructions ========
* Configure PGAdmin with database admin userID and password. This will apply to local databases.
* This may impact the abilty to run SQL queries in this project.


### Installation Instructions ==========
* Applications used for the SQL_challenge:
- pgAdmin4
- PostgreSQL 13
- Jupyter Notebook to read Pandas Dataframes import
- GitBash terminal
- Visual Studio Code for the Readme.md
- Git Hub (to save versions and share code while in development)
- Quick Database Diagrams (URL below)
- Image viewer such as Microsoft Photos or Microsoft Paint

* Similar applications may also work.

* May need to install dependencies for pgAdmin and Postgres to work with Jupyter Notebook. From a command line, run: pip install psycopg2 -or- pip install psycopg2 sqlalchemy


### List of Files ====================
* \SQL_challenge
*    \EmployeeSQL
-        emp_analysis.sql
-        emp_schema.sql
-        ERD_schema.png
-        config.py
-        emp_analysis_pandas.ipynb
-        .gitignore
-        \Images
            Salary_By_Title.png
            Salary_Ranges_Employees.png
         \.ipynb_checkpoints
            emp_analysis_pandas-checkpoint.ipynb   
        \__pycache__
*    \Data
-        departments.csv
-        dept_emp.csv
-        dept_manager.csv
-        employees.csv
-        salaries.csv
-        titles.csv
*    README.md
*    README_SQL_Instructions


### Operating Instructions =============
* Open ERD_schema.png file to view entity relationship diagram.
* Open emp_schema.sql file to view database schema setup.
* Open emp_analysis.sql file and run numbered sections of SQL to view data query output.
* Note: You may need a password to access the Postgres database.
* Bonus: Open emp_analysis_pandas.ipynb in Jupyter Notebook to read Pandas Dataframes import and analysis.

### Data Set(s) =======================
* See "List of Files" section above for list of .csv files associated with this project.


### Additional Resources =======================
* I used the quick Database Diagrams free app on Windows to create entity relationship diagram (ERD)
https://app.quickdatabasediagrams.com/.


###  Data Alterations =======================
* None.
* Analysis Impact: None.


###  Known Bugs =====================
* pgAdmin was somewhat flaky when creating the schemas, importing data, and testing SQL queries. It required a browser reboot several times throughout this project and would run fine after the reboot.


### Troubleshooting ===============
* "--" comments are used liberally throughout the code to run individual lines of code for additional testing/troubleshooting, and general "--" comments are used for code notes/additional information.

* Resources used to build and troubleshoot this code are listed below, in addition to help and code peer review from students, instructor, and TA's.


* Web URLs:
- https://cloud.google.com/spanner/docs/foreign-keys/how-to
- https://en.wikipedia.org/wiki/Composite_key
- https://app.quickdatabasediagrams.com/
- https://www.c-sharpcorner.com/blogs/sql-query-to-find-out-the-frequency-of-each-element-in-a-column1
- https://towardsdatascience.com/python-and-postgresql-how-to-access-a-postgresql-database-like-a-data-scientist-b5a9c5a0ea43
- https://htmlcolorcodes.com/

* URLs last used: February 17, 2021


###  Contact Information ===============
Colorado   United States


### Random Notes ===============
This is my first SQL project using pgAdmin4 and PostgreSQL 13.
Time to complete: approximately 18 hours
