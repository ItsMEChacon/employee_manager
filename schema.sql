
DROP DATABASE IF EXISTS employeetracker_db;
CREATE DATABASE employeetracker_db;

USE employeetracker_db;

CREATE TABLE department(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30) NOT NULL
);

CREATE TABLE roles(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
title VARCHAR (30),
salary DECIMAL NOT NULL,
department_id INT NOT NULL,
CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employees(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
roles_id INT NOT NULL,
CONSTRAINT fk_roles FOREIGN KEY (roles_id) REFERENCES roles(id),
manager_id INT, 
CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES roles(id)
);

SELECT * FROM department;
SELECT * FROM roles;
SELECT * FROM employees;