SELECT e.`employee_id`,CONCAT_WS(" ",e.`first_name`,e.`last_name`) AS `employee_name`,
CONCAT_WS(" ",m.`first_name`,m.`last_name`) AS `manager_name`,d.`name` AS `department_name`
FROM `employees` e JOIN `employees` m
ON m.`employee_id` = e.`manager_id`
JOIN `departments` d ON e.`department_id` = d.`department_id`
ORDER BY e.`employee_id`
LIMIT 5;