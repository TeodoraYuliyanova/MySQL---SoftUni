SELECT t.`town_id` , t.`name` AS `town_name`, a.`address_text`
FROM `towns` t JOIN `addresses` a
ON t.`town_id` = a.`town_id`
WHERE t.`town_id` IN (9,32,15)
ORDER BY t.`town_id`,a.`address_id`;