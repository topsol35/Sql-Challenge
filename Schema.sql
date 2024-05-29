DROP TABLE IF EXISTS TITLES;
CREATE TABLE TITLES(
TITLE_ID VARCHAR,
TITLE VARCHAR,
PRIMARY KEY(TITLE_ID)
);

CREATE TABLE employees (
emp_no INT NOT NULL,
emp_title_id VARCHAR NOT NULL,
birth_date VARCHAR,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date VARCHAR,
FOREIGN KEY (emp_title_id) REFERENCES Titles (TITLE_ID),
PRIMARY KEY (emp_no)
);

CREATE TABLE departments (
dept_no VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL,
PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries (
emp_no INT NOT NULL,
salary INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
PRIMARY KEY (emp_no)
);

