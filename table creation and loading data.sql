create table employees (
	emp_no INT PRIMARY KEY NOT NULL,
        emp_title VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(35) NOT NULL,
	last_name VARCHAR(35) NOT NULL,
	sex VARCHAR(1)NOT NULL,
	hire_date DATE NOT NULL,
        no_of_projects INT NOT NULL,
        Last_performance_rating VARCHAR(2) NOT NULL,
        left_PPL INT NOT NULL,
        last_date DATE NOT NULL
);


LOAD DATA LOCAL INFILE '/home/anabig114210/employees.csv' INTO TABLE employees FIELDS TERMINATED BY ',' optionally ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1
 LINES;

-------- table departments;

create table departments (dept_no varchar(20) NOT NULL PRIMARY KEY, dept_name varchar(225));
LOAD DATA LOCAL INFILE '/home/anabig114210/departments.csv' INTO TABLE departments FIELDS TERMINATED BY ',' optionally ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1
 LINES;


---- department employee;

create table dept_emp (emp_no varcher(20) NOT NULL PRIMARY KEY, dept_no varchar(20), FOREIGN KEY (detp_no) REFERENCES departments(dept_no), FOREIGN KEY (emp_no) REFERENCES departments(emp_no);

 LOAD DATA LOCAL INFILE '/home/anabig114210/dept_emp.csv' INTO TABLE dept_emp FIELDS TERMINATED BY ',' optionally ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1
 LINES;

---- titles;

create table for titles
CREATE TABLE titles (
    emp_no      INT             NOT NULL,
    title       VARCHAR(50)     NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no,title)
);

 LOAD DATA LOCAL INFILE '/home/anabig114210/titles.csv' INTO TABLE titles FIELDS TERMINATED BY ',' optionally ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1
 LINES;
