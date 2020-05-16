use sql_puzzle;

CREATE TABLE fiscal_year_table(
  fiscal_year integer NOT NULL PRIMARY KEY,
  start_date date NOT NULL,
   CHECK ((EXTRACT(year from start_date) = fiscal_year - 1)
          AND (EXTRACT(MONTH from start_date) = 10)
          AND (EXTRACT(DAY from start_date) = 1)),
  end_date DATE NOT NULL ,
   CHECK ((EXTRACT(YEAR from end_date) = fiscal_year)
          AND (EXTRACT(MONTH from end_date) = 9)
          AND (EXTRACT(DAY from end_date) = 30))
);