use tech_jobs;

SELECT * FROM salary_database;

-- Avarage salary 
SELECT AVG(Salary) AS average_salary 
FROM salary_database;

-- Highest Salary 
SELECT * FROM salary_database 
ORDER BY Salary 
DESC LIMIT 1;

-- Count the number of employees in each job title
SELECT `Job Title`, COUNT(*) AS num_employees 
FROM salary_database 
GROUP BY `Job Title`;

-- top 5 best pay jobs
SELECT `Job Title`, AVG(Salary) AS avg_salary
FROM salary_database
GROUP BY `Job Title`
ORDER BY avg_salary DESC
LIMIT 5;

-- Avarage salary as a Data analyst
SELECT AVG(Salary) AS average_salary
FROM salary_database
WHERE `Job Title` = 'Data Analyst';

-- The average salary for a junior data analyst  
SELECT AVG(Salary) AS Junior_salary
FROM salary_database
WHERE `Job Title` = 'Data Analyst'
AND `Years of Experience` <= 3;

-- The avarage salary for a senior data analyst
SELECT AVG(Salary) AS Senior_salary
FROM salary_database
WHERE `Job Title` = 'Data Analyst'
AND `Years of Experience` > 3;

-- Avarage Data analyst salary by country
SELECT Country, AVG(Salary) AS average_salary
FROM salary_database
WHERE `Job Title` = 'Data Analyst'
GROUP BY Country;

-- Data Scient Scientist salary

SELECT AVG(Salary) AS salaryDataScientist
FROM salary_database
WHERE `Job Title` = 'Data Scientist';

 -- The average salary for a junior Data Scientist
SELECT AVG(salary) AS Junior_Scientist
FROM salary_database
WHERE `Job Title` = 'Data scientist'
AND `years of experience`<= 3;

 -- The average salary for a Senior Data Scientist
 SELECT AVG (salary) AS Senior_scientist 
 FROM salary_database
 WHERE `Job Title` = 'Data scientist'
 AND `Years of Experience` > 3;
 
 -- Avarage Data scientist salary by country
SELECT Country, AVG(Salary) AS average_salary
FROM salary_database
WHERE `Job Title` = 'Data scientist'
GROUP BY Country;

SELECT Race, Avg(salary) AS Race_salary
FROM salary_database
WHERE `Job Title` = 'Data analyst'
GROUP BY Race;

 
 



