CREATE DATABASE HRAnalytics;
USE HRAnalytics;
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(50),
    job_role VARCHAR(50),
    salary DECIMAL(10, 2),
    tenure DECIMAL(4, 2),
    performance_score DECIMAL(3, 2),
    exit_status TINYINT(1),  -- 0 for active, 1 for left
    exit_reason VARCHAR(255) -- Null if exit_status is 0
);
INSERT INTO employees (name, age, gender, department, job_role, salary, tenure, performance_score, exit_status, exit_reason)
VALUES 
('John Doe', 35, 'Male', 'IT', 'Software Engineer', 75000, 5.5, 4.3, 0, NULL),
('Jane Smith', 29, 'Female', 'HR', 'HR Specialist', 60000, 3.2, 3.8, 1, 'Better opportunity'),
('Alice Johnson', 45, 'Female', 'Finance', 'Finance Manager', 90000, 10.0, 4.9, 0, NULL);

INSERT INTO employees (name, age, gender, department, job_role, salary, tenure, performance_score, exit_status, exit_reason)
VALUES 
('Kevin Mitchell', 34, 'Male', 'IT', 'Network Administrator', 67000, 6.1, 3.9, 0, NULL),
('Natalie Wilson', 41, 'Female', 'HR', 'HR Manager', 78000, 9.5, 4.6, 0, NULL),
('Lucas Adams', 25, 'Male', 'Sales', 'Sales Representative', 46000, 1.8, 3.2, 1, 'Work-life balance'),
('Olivia Baker', 37, 'Female', 'Operations', 'Supply Chain Analyst', 72000, 7.2, 4.2, 0, NULL),
('Jacob Taylor', 50, 'Male', 'IT', 'Senior Developer', 98000, 11.0, 4.7, 0, NULL),
('Sophia King', 31, 'Female', 'Marketing', 'Marketing Specialist', 55000, 3.9, 3.6, 1, 'Better opportunity'),
('Liam Carter', 29, 'Male', 'Finance', 'Financial Analyst', 68000, 3.5, 4.1, 0, NULL),
('Emma Roberts', 43, 'Female', 'HR', 'Recruitment Officer', 61000, 9.3, 3.7, 0, NULL),
('Noah Scott', 39, 'Male', 'IT', 'DevOps Engineer', 84000, 6.8, 4.4, 1, 'Low compensation'),
('Isabella Green', 26, 'Female', 'Sales', 'Account Manager', 52000, 2.4, 3.5, 1, 'Career growth'),
('Mason Evans', 47, 'Male', 'Finance', 'Chief Financial Officer', 150000, 15.5, 4.9, 0, NULL),
('Ava Turner', 30, 'Female', 'Marketing', 'Content Strategist', 62000, 4.0, 4.1, 0, NULL),
('William Hernandez', 28, 'Male', 'Operations', 'Operations Coordinator', 58000, 2.7, 3.8, 1, 'Relocation'),
('Mia Perry', 32, 'Female', 'Sales', 'Sales Executive', 56000, 4.5, 4.0, 0, NULL),
('James Price', 38, 'Male', 'IT', 'Systems Engineer', 90000, 8.1, 4.3, 1, 'Lack of advancement'),
('Ella Bailey', 36, 'Female', 'Finance', 'Financial Manager', 89000, 8.7, 4.5, 0, NULL),
('Ethan Morgan', 33, 'Male', 'HR', 'HR Specialist', 64000, 4.8, 3.9, 1, 'Family reasons'),
('Harper Hughes', 42, 'Female', 'Operations', 'Logistics Manager', 85000, 10.3, 4.4, 0, NULL),
('Alexander Cox', 31, 'Male', 'Marketing', 'SEO Specialist', 61000, 4.2, 3.6, 0, NULL),
('Charlotte Ramirez', 29, 'Female', 'Finance', 'Auditor', 71000, 3.1, 4.0, 1, 'Work-life balance'),
('Michael Foster', 45, 'Male', 'Sales', 'Sales Director', 105000, 12.8, 4.8, 0, NULL),
('Amelia Rivera', 27, 'Female', 'HR', 'Training Coordinator', 55000, 3.0, 4.0, 1, 'Relocation'),
('Benjamin Ortiz', 40, 'Male', 'IT', 'Database Administrator', 89000, 8.9, 4.5, 0, NULL),
('Evelyn Jenkins', 35, 'Female', 'Operations', 'Operations Supervisor', 72000, 7.1, 4.2, 0, NULL),
('Daniel Murphy', 44, 'Male', 'Finance', 'Budget Analyst', 85000, 11.2, 4.3, 1, 'Low compensation'),
('Abigail Simmons', 26, 'Female', 'Sales', 'Sales Consultant', 47000, 2.3, 3.4, 1, 'Career growth'),
('Matthew Griffin', 51, 'Male', 'IT', 'Security Analyst', 93000, 13.5, 4.6, 0, NULL),
('Avery Long', 30, 'Female', 'HR', 'Employee Relations Manager', 70000, 5.0, 4.0, 0, NULL),
('Henry Bennett', 28, 'Male', 'Marketing', 'Social Media Manager', 62000, 2.9, 3.7, 1, 'Lack of advancement'),
('Emily Sanders', 39, 'Female', 'Operations', 'Warehouse Manager', 80000, 8.3, 4.1, 0, NULL),
('David Ross', 36, 'Male', 'Finance', 'Treasury Analyst', 76000, 6.7, 4.3, 1, 'Better opportunity'),
('Sofia Scott', 33, 'Female', 'IT', 'Software Tester', 78000, 5.8, 4.0, 0, NULL),
('Jack Torres', 43, 'Male', 'Sales', 'Regional Sales Manager', 94000, 10.1, 4.7, 0, NULL),
('Grace Coleman', 24, 'Female', 'HR', 'Talent Acquisition Specialist', 49000, 1.6, 3.3, 1, 'Further education'),
('Logan Parker', 29, 'Male', 'Marketing', 'Marketing Manager', 66000, 3.7, 3.9, 1, 'Family reasons'),
('Chloe Cooper', 46, 'Female', 'Finance', 'Financial Planner', 93000, 13.4, 4.6, 0, NULL),
('Sebastian Brooks', 34, 'Male', 'IT', 'Technical Support', 67000, 6.0, 3.9, 0, NULL),
('Zoe Foster', 31, 'Female', 'Operations', 'Operations Analyst', 63000, 4.4, 4.1, 1, 'Relocation'),
('Jackson Perez', 37, 'Male', 'Sales', 'Sales Manager', 80000, 7.9, 4.3, 0, NULL),
('Victoria Turner', 27, 'Female', 'Marketing', 'Brand Manager', 59000, 3.5, 3.8, 1, 'Lack of growth opportunities'),
('Dylan Howard', 49, 'Male', 'HR', 'Compensation Manager', 102000, 14.6, 4.7, 0, NULL),
('Hannah Ward', 30, 'Female', 'Finance', 'Risk Manager', 88000, 5.2, 4.4, 0, NULL),
('Isaac Phillips', 32, 'Male', 'Sales', 'Sales Associate', 53000, 4.0, 3.5, 1, 'Low compensation'),
('Madison Rivera', 44, 'Female', 'Operations', 'Project Manager', 94000, 11.6, 4.6, 0, NULL),
('Gabriel Murphy', 39, 'Male', 'IT', 'Software Developer', 92000, 9.1, 4.2, 0, NULL),
('Aria Clark', 28, 'Female', 'Marketing', 'Digital Marketing Analyst', 57000, 3.1, 3.9, 1, 'Relocation'),
('Christopher Bell', 53, 'Male', 'Finance', 'Financial Controller', 110000, 16.7, 4.9, 0, NULL),
('Scarlett Reed', 33, 'Female', 'HR', 'HR Coordinator', 61000, 5.1, 4.0, 0, NULL),
('Andrew Stewart', 40, 'Male', 'Operations', 'Inventory Manager', 83000, 9.8, 4.3, 1, 'Career change'),
('Addison Russell', 27, 'Female', 'Sales', 'Business Development Associate', 54000, 2.9, 3.7, 1, 'Further education'),
('Joseph Hughes', 36, 'Male', 'IT', 'Network Engineer', 86000, 6.3, 4.4, 0, NULL),
('Lily Powell', 34, 'Female', 'Marketing', 'Public Relations Specialist', 70000, 7.5, 4.1, 0, NULL);

select * from employees;