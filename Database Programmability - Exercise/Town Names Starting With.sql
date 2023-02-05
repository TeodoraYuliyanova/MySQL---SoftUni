DELIMITER $$
CREATE PROCEDURE usp_get_towns_starting_with(starts_with VARCHAR(20))
BEGIN
SELECT `name` FROM `towns`
WHERE `name` LIKE CONCAT(starts_with,'%')
ORDER BY `name`;
END $$
