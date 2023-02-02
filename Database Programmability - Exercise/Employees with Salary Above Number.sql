DELIMITER $$
CREATE PROCEDURE usp_get_employees_salary_above(salary_above DECIMAL(19,4))
BEGIN
SELECT `first_name`,`last_name` FROM `employees`
WHERE `salary` >= salary_above
ORDER BY `first_name`,`last_name`,`employee_id`;
END$$
