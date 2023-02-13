SELECT mi.`id`,m.`title`,mi.`runtime`,mi.`budget`,mi.`release_date` 
FROM `movies_additional_info` mi 
JOIN `movies` m ON mi.`id` = m.`movie_info_id`
WHERE YEAR(mi.`release_date`) BETWEEN 1996 AND 1999
ORDER BY mi.`runtime`,mi.`id`
LIMIT 20;