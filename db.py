import duckdb

# Create in-memory DB
con = duckdb.connect(database=":memory:")

# Create Department table
con.execute(
    """
CREATE TABLE department (
    dept_id     INTEGER PRIMARY KEY,
    dept_name   VARCHAR,
    location    VARCHAR,
    budget      BIGINT,
    manager     VARCHAR
);
"""
)

con.execute(
    """
INSERT INTO department VALUES
  (10,'Sales','New York', 5000000,'Michael Scott'),
  (20,'HR','Chicago', 1200000,'Holly Flax'),
  (30,'Engineering','San Francisco',8000000,'Dwight Schrute'),
  (40,'Marketing','Boston', 3000000,'Jim Halpert'),
  (50,'Finance','Dallas', 4500000,'Angela Martin'),
  (60,'Operations','Atlanta', 3500000,'Stanley Hudson');
"""
)

# Create Employee table
con.execute(
    """
CREATE TABLE employee (
    id        INTEGER PRIMARY KEY,
    name      VARCHAR,
    salary    INTEGER,
    yoe       INTEGER,
    dept_id   INTEGER,
    hire_date DATE
);
"""
)

con.execute(
    """
INSERT INTO employee VALUES
(1, 'Alice Johnson',   120000, 5, 10, DATE '2019-03-15'),
(2, 'Bob Smith',        95000, 3, 20, DATE '2020-06-01'),
(3, 'Charlie Davis',   150000, 8, 30, DATE '2017-09-23'),
(4, 'Diana Perez',     110000, 4, 40, DATE '2021-01-10'),
(5, 'Ethan Brown',     130000, 6, 50, DATE '2018-12-05'),
(6, 'Fiona Clark',      99000, 2, 60, DATE '2022-05-14'),
(7, 'George Wilson',   175000, 9, 10, DATE '2016-07-30'),
(8, 'Hannah Moore',    105000, 3, 20, DATE '2019-11-18'),
(9, 'Ian Thompson',    125000, 5, 30, DATE '2020-08-25'),
(10, 'Julia Roberts',  140000, 7, 40, DATE '2015-04-02'),
(11, 'Kevin Lee',       97000, 2, 50, DATE '2021-07-19'),
(12, 'Laura Scott',    102000, 3, 60, DATE '2022-09-09'),
(13, 'Mark Turner',    118000, 4, 10, DATE '2020-10-28'),
(14, 'Nina Adams',     128000, 6, 20, DATE '2019-02-11'),
(15, 'Oscar Miller',   150500, 8, 30, DATE '2017-06-16'),
(16, 'Paula Young',     89000, 1, 40, DATE '2023-01-05'),
(17, 'Quentin White',  135000, 5, 50, DATE '2018-08-21'),
(18, 'Rachel Green',   145000, 7, 60, DATE '2016-11-13'),
(19, 'Sam Carter',     98000,  2, 10, DATE '2021-03-07'),
(20, 'Tina Brooks',    119000, 4, 20, DATE '2019-05-29');
"""
)

# ==========================
# SQL PRACTICE SECTION
# ==========================
query = """
SELECT *
FROM employee e
LIMIT 5;
"""

# Run query
df = con.execute(query).fetchdf()
print(df)
