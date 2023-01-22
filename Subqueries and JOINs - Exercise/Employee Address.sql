SELECT e.`employee_id`,e.`job_title`,e.`address_id`,a.`address_text`
FROM `employees` e JOIN `addresses` a
ON e.`address_id` = a.`address_id`
ORDER BY e.`address_id`
LIMIT 5;