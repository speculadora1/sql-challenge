CREATE TABLE Departments (
    dept_no VARCHAR(30) NOT NULL,
    dept_name VARCHAR(30),
    PRIMARY KEY(dept_no)
);

CREATE TABLE Employees (
    emp_no INT NOT NULL,
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    gender VARCHAR(10),
    hire_date DATE,
    PRIMARY KEY(emp_no)
);

CREATE TABLE Dept_Manager (
    dept_no VARCHAR(30) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Dept_Emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(30) NOT NULL,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Titles (
    emp_no INT NOT NULL,
    title VARCHAR(30) NOT NULL,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);