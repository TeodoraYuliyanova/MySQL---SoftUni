DELIMITER $$
CREATE FUNCTION udf_actor_history_movies_count(full_name VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN

DECLARE movies_count INT;
SET movies_count := (
SELECT COUNT(g.`name`) AS `history_movies`
FROM `actors` a 
JOIN `movies_actors` ma 
ON a.`id` = ma.`actor_id`
JOIN `genres_movies` gm USING (`movie_id`)
JOIN `genres` g
ON gm.`genre_id` = g.`id`
WHERE g.`name` = "History" AND CONCAT_WS(" ",`first_name`,`last_name`) = full_name
GROUP BY g.`name`
);

RETURN movies_count;
END$$