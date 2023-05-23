-- create a table
CREATE TABLE titles (
title_id VARCHAR(30) primary key,
title VARCHAR(30)
);

-- create a table 
CREATE TABLE employees ( 
emp_no INT NOT NULL primary key,
emp_title_id VARCHAR(20),
birth_date VARCHAR(20),
first_name VARCHAR(20),
last_name VARCHAR(20),
sex VARCHAR(20),
hire_date VARCHAR(20),
foreign key (emp_title_id) references titles(title_id)
);

-- create a table 
CREATE TABLE salary (
emp_no INT NOT NULL primary key,
salary INT,
foreign key (emp_no) references employees(emp_no)
);

-- create a table 
CREATE TABLE departments (
"dept_no" VARCHAR(20) primary key,
dept_name VARCHAR(20)
);

-- create a table
CREATE TABLE dept_employees (
emp_no INT NOT NULL, 
dept_no VARCHAR(20),
foreign key (emp_no) references employees(emp_no)
);

-- create a table
CREATE TABLE dept_manager (
dept_no VARCHAR(20),
emp_no INT NOT NULL,
foreign key (emp_no) references employees(emp_no),
foreign key (dept_no) references departments("dept_no")
);