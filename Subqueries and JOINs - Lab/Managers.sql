SELECT e.`employee_id` ,  CONCAT_WS(" ", e.`first_name`,e.`last_name`) AS `full_name`, d.`department_id`, d.`name` AS `department_name`
FROM `employees` e JOIN `departments` d
ON d.`manager_id` = e.`employee_id`
ORDER BY `employee_id`
LIMIT 5;