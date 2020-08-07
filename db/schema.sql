DROP DATABASE IF EXISTS employee_tracker;

CREATE DATABASE employee_tracker;

USE employee_tracker;


CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(35) UNIQUE NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT UNIQUE NOT NULL AUTO_INCREMENT,
  title VARCHAR(35) NULL,
  salary DECIMAL(10,2) NULL,
  department_id INT NOT NULL,
  FOREIGN KEY (department_id) REFERENCES department(id),
  PRIMARY KEY (id)
);

 CREATE TABLE employee (
  id INT UNIQUE NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(35) NULL,
  last_name VARCHAR(35) NULL,
  role_id INT NOT NULL,
  manager_id INT NULL,
  FOREIGN KEY(role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id),
  PRIMARY KEY (id)
);
 
SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;
