DROP DATABASE IF EXISTS Employee_Tracker;

CREATE DATABASE Employee_Tracker;

USE Employee_Tracker;

CREATE TABLE department(
id INT AUTO_INCREMENT NOT NULL,
name VARCHAR(30) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE role(
id INT AUTO_INCREMENT NOT NULL,
title VARCHAR(30) NOT NULL,
salary DECIMAL NOT NULL,
department_id INTEGER NOT NULL,
CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES department(id),
PRIMARY KEY(id)
);


CREATE TABLE employee(
id integer auto_increment not null,
first_name varchar(30) not null,
last_name varchar(30) not null,
role_id integer not null,
constraint fk_role_id FOREIGN KEY (role_id) REFERENCES role(id),
manager_id integer ,
constraint fk_manager_id FOREIGN KEY (manager_id) REFERENCES employee(id),
Primary key(id)
);

select * from employee;
select * from role;


INSERT into department (name)
VALUES ("Sales"), ("Engineering"), ("Finance"), ("Legal"), ("Manager");


SELECT * FROM department;

