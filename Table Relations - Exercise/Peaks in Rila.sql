SELECT m.`mountain_range`,p.`peak_name`,p.`elevation` AS `peak_elevation`
FROM `mountains` m,`peaks` p
WHERE m.`mountain_range` = "Rila"
AND p.`mountain_id` = '17'
ORDER BY `peak_elevation` DESC;
