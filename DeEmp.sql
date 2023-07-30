CREATE TABLE departments (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Department_Name VARCHAR(255)
);


CREATE TABLE employees (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES departments(ID)
);

INSERT INTO departments (ID, Name, Department_Name) VALUES
(1, 'HR', 'Human Resources'),
(2, 'IT', 'Information Technology'),
(3, 'SALES', 'Sales');


INSERT INTO employees (ID, Name, DepartmentID) VALUES
(1, 'Joe mama', 1),
(2, 'Bob bobb', 2),
(3, 'Lil Johnson', 3);


ALTER TABLE employees
ADD COLUMN salary INT NOT NULL;


mysql> SELECT * FROM departments;
+----+-------+------------------------+
| ID | Name  | Department_Name        |
+----+-------+------------------------+
|  1 | HR    | Human Resources        |
|  2 | IT    | Information Technology |
|  3 | SALES | Sales                  |
+----+-------+------------------------+
3 rows in set (0.01 sec)

mysql> SELECT * FROM employees;
+----+-------------+--------------+--------+
| ID | Name        | DepartmentID | salary |
+----+-------------+--------------+--------+
|  1 | Joe mama    |            1 |      0 |
|  2 | Bob bobb    |            2 |      0 |
|  3 | Lil Johnson |            3 |      0 |
+----+-------------+--------------+--------+
3 rows in set (0.00 sec)