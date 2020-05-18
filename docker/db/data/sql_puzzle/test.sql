use sql_puzzle;

CREATE TABLE emp(
emp_id INTEGER  NOT NULL,
PRIMARY KEY (emp_id)
);

CREATE TABLE excuse_list(
reason_code CHAR(40)  NOT NULL,
PRIMARY KEY (reason_code)
);

CREATE TABLE Absenteeism(
emp_id INTEGER  NOT NULL,
INDEX emp_id (emp_id),
    FOREIGN KEY (emp_id)
        REFERENCES emp(emp_id)
        ON DELETE CASCADE,
absent_date date NOT NULL,
reason_code CHAR(40) NOT NULL,
INDEX reason_code (reason_code),
    FOREIGN KEY (reason_code)
        REFERENCES excuse_list(reason_code)
        ON DELETE CASCADE,
security_points INTEGER NOT NULL
  CHECK (security_points BETWEEN 1 and 4),
PRIMARY KEY (emp_id,absent_date)
);