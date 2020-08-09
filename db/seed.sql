
INSERT INTO department (name)
VALUES ('Sales'), ('Engineering'),('HR');

INSERT INTO roles (title, salary, department_id)
VALUES 
('Sales Lead', 210000, 1), 
('Sales Person', 75000, 1), 
('Senior Engineer', 275000, 2), 
('Software Engineer', 150000,2), 
('Senior HR', 95000, 3), 
('HR Correspondent', 70000, 3 );

INSERT INTO employee (first_name, last_name, roles_id, manager_id)
VALUES ('Roger', 'Federer', 1, null), 
('Maria','Sharapova', 2, null), 
('Novak', 'Djokovic', 1, 1), 
('Rafael', 'Nadal', 2, 1), 
('Naomi','Osaka', 2, null), 
('Marat', 'Safani', 3,3);

SELECT * FROM department;
SELECT * FROM roles;
SELECT * FROM employee INNER JOIN roles ON roles.id = employee.roles_id;




