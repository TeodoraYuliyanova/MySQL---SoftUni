SELECT c.`name`,COUNT(m.`title`) AS `movie_count`
FROM `movies` m JOIN `countries` c ON c.`id` = m.`country_id` 
GROUP BY c.`name`
HAVING `movie_count` >= 7
ORDER BY c.`name` DESC;

