CREATE TABLE Departments (
  dept_no CHAR(4) PRIMARY KEY,
  dept_name VARCHAR(40) NOT NULL
);

INSERT INTO departments (dept_no, dept_name)
VALUES
  ('d001', 'Marketing'),
  ('d002', 'Finance'),
  ('d003', 'Human Resources'),
  ('d004', 'Production'),
  ('d005', 'Development'),
  ('d006', 'Quality Management'),
  ('d007', 'Sales'),
  ('d008', 'Research'),
  ('d009', 'Customer Service');

CREATE TABLE dept_Emp (
  emp_no INT NOT NULL,
  dept_no CHAR(4) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES Departments (dept_no)
);

CREATE TABLE dept_manager (
  dept_no CHAR(4) NOT NULL,
  emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES Departments (dept_no)
);

INSERT INTO dept_manager (dept_no, emp_no)
VALUES 
    ('d001', 110022),
    ('d001', 110039),
    ('d002', 110085),
    ('d002', 110114),
    ('d003', 110183),
    ('d003', 110228),
    ('d004', 110303),
    ('d004', 110344),
    ('d004', 110386),
    ('d004', 110420),
    ('d005', 110511),
    ('d005', 110567),
    ('d006', 110725),
    ('d006', 110765),
    ('d006', 110800),
    ('d006', 110854),
    ('d007', 111035),
    ('d007', 111133),
    ('d008', 111400),
    ('d008', 111534),
    ('d009', 111692),
    ('d009', 111784),
    ('d009', 111877),
    ('d009', 111939);


CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR(10) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(14) NOT NULL,
  last_name VARCHAR(16) NOT NULL,
  sex CHAR(1) NOT NULL,
  hire_date DATE NOT NULL
);

CREATE TABLE Salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

CREATE TABLE titles (
  title_id VARCHAR(10) PRIMARY KEY,
  title VARCHAR(50) NOT NULL
);
INSERT INTO title (title_id, title)
VALUES 
    ('s0001', 'Staff'),
    ('s0002', 'Senior Staff'),
    ('e0001', 'Assistant Engineer'),
    ('e0002', 'Engineer'),
    ('e0003', 'Senior Engineer'),
    ('e0004', 'Technique Leader'),
    ('m0001', 'Manager');
