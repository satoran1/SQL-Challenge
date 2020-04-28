CREATE TABLE departments(
    dept_no             VARCHAR(4)          NOT NULL,
    dept_name           VARCHAR(40)         NOT NULL,
    UNIQUE (dept_name),
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp(
    emp_no             VARCHAR(5)          NOT NULL,
    dept_no            VARCHAR(40)         NOT NULL,
    UNIQUE (emp_no),
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager(
    dept_no            VARCHAR(4)          NOT NULL,
    emp_no             VARCHAR(40)         NOT NULL,
    UNIQUE (emp_no),
    PRIMARY KEY (dept_no)
);

CREATE TABLE employees(
    emp_no               VARCHAR(6)          NOT NULL,
    emp_title_id         VARCHAR(5)          NOT NULL,
    birth_date           VARCHAR(8)          NOT NULL,
    first_name           VARCHAR(40)         NOT NULL,
    last_name            VARCHAR(40)         NOT NULL,
    sex                  VARCHAR(1)          NOT NULL,
    hire_date            VARCHAR(8)          NOT NULL,

    UNIQUE (dept_name),
    PRIMARY KEY (dept_no)
);

CREATE TABLE salaries(
    emp_no               VARCHAR(5)          NOT NULL,
    salary               VARCHAR(10)         NOT NULL,
    UNIQUE (salary),
    PRIMARY KEY (emp_no)
);

CREATE TABLE titles(
    title_id             VARCHAR(5)          NOT NULL,
    title                VARCHAR(40)         NOT NULL,
    UNIQUE (title),
    PRIMARY KEY (title_id)
);


