  
CREATE TABLE departments(
    dept_no             VARCHAR (30)        NOT NULL,
    dept_name           VARCHAR (30)        NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp(
    emp_no             INT                    NOT NULL,
    dept_no            VARCHAR (30)           NOT NULL,
    from_date          DATE                   NOT NULL,
    to_date            DATE                   NOT NULL
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager(
    dept_no            VARCHAR (30)    NOT NULL,
    emp_no             INT             NOT NULL,
    from_date          DATE            NOT NULL,
    to_date            DATE            NOT NULL.
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
    PRIMARY KEY (dept_no)
);

CREATE TABLE employees(
    emp_no               INT                 NOT NULL,
    emp_title_id         VARCHAR (5)         NOT NULL,
    birth_date           DATE                NOT NULL,
    first_name           VARCHAR (35)        NOT NULL,
    last_name            VARCHAR (35)        NOT NULL,
    sex                  VARCHAR (1)         NOT NULL,
    hire_date            DATE                NOT NULL,

    FOREIGN  KEY (emp_no) REFERENCES title_id,
    PRIMARY KEY (emp_no)
);

CREATE TABLE salaries(
    emp_no               INT                NOT NULL,
    salary               INT                NOT NULL,
    from_date            DATE    _           NOT NULL.
    to_date              DATE               NOT NULL
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (emp_no)
);

CREATE TABLE titles(
    emp_no               INT                 NOT NULL
    title                VARCHAR (35)        NOT NULL,
    from_date            DATE                NOT NULL.
    to_date              DATE                NOT NULL
    PRIMARY KEY emp_no FOREIGN KEY Titles(emp_no)
REFERENCES Employees (emp_no);

);