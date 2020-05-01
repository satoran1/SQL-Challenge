CREATE TABLE departments(
    dept_no             INT                 NOT NULL,
    dept_name           VARCHAR(40)         NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp(
    emp_no             INT(5)               NOT NULL,
    dept_no            VARCHAR(40)          NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager(
    dept_no            VARCHAR         NOT NULL,
    emp_no             VARCHAR         NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
    PRIMARY KEY (dept_no)
);

CREATE TABLE employees(
    emp_no               INT                 NOT NULL,
    emp_title_id         VARCHAR             NOT NULL,
    birth_date           DATE                NOT NULL,
    first_name           VARCHAR             NOT NULL,
    last_name            VARCHAR             NOT NULL,
    sex                  VARCHAR             NOT NULL,
    hire_date            DATE                NOT NULL,

   FOREIGN  KEY (emp_title_id) REFERENCES title_id,
    PRIMARY KEY (dept_no)
);

CREATE TABLE salaries(
    emp_no               INT                NOT NULL,
    salary               INT                NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (emp_no)
);

CREATE TABLE titles(
    title_id             VARCHAR             NOT NULL,
    title                VARCHAR             NOT NULL,
    PRIMARY KEY (title_id)
);


