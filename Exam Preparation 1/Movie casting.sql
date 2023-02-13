SELECT CONCAT_WS(" ",`first_name`,`last_name`) AS `full_name`,CONCAT((REVERSE(`last_name`)),(CHAR_LENGTH(`last_name`)),"@cast.com") AS `email`,
CONCAT('2022' - YEAR(`birthdate`)) AS `age`, `height` 
FROM `actors` a
WHERE a.`id` NOT IN (SELECT `actor_id` FROM `movies_actors`)
ORDER BY `height`;