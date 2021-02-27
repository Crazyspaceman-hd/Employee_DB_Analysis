-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS Employees
(
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date VARCHAR(10) NOT NULL,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex VARCHAR(15),
    hire_date VARCHAR(10) NOT NULL,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS salaries
(
    emp_no INTEGER NOT NULL,
    salary INTEGER,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS Department_Employee
(
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(4) NOT NULL    
);

CREATE TABLE IF NOT EXISTS Department_Manager
(
    dept_no VARCHAR(4) NOT NULL,
    emp_no INTEGER NOT NULL    
);

CREATE TABLE IF NOT EXISTS Departments
(
    Dept_No VARCHAR(4) NOT NULL,
    dept_name VARCHAR(255) NOT NULL,
    PRIMARY KEY(Dept_No)
);

CREATE TABLE IF NOT EXISTS titles
(
    title_id VARCHAR(5) NOT NULL,
    title VARCHAR(255) NOT NULL,
    PRIMARY KEY(title_id)
);


-- Create FKs
ALTER TABLE salaries
    ADD    FOREIGN KEY (emp_no)
    REFERENCES Employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE Department_Employee
    ADD    FOREIGN KEY (emp_no)
    REFERENCES Employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE Department_Employee
    ADD    FOREIGN KEY (dept_no)
    REFERENCES Departments(Dept_No)
    MATCH SIMPLE
;
    
ALTER TABLE Department_Manager
    ADD    FOREIGN KEY (emp_no)
    REFERENCES Employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE Department_Manager
    ADD    FOREIGN KEY (dept_no)
    REFERENCES Departments(Dept_No)
    MATCH SIMPLE
;
    
ALTER TABLE Employees
    ADD    FOREIGN KEY (emp_title_id)
    REFERENCES titles(title_id)
    MATCH SIMPLE
;
    

-- Create Indexes

