SELECT `name` AS `game`,
 CASE 
WHEN HOUR(`start`) < 12 THEN 'Morning'
WHEN HOUR(`start`) < 18 THEN 'Afternoon'
WHEN HOUR(`start`) < 25 THEN 'Evening'
END
AS `Part of the Day`,
CASE 
WHEN `duration` <= 3 THEN 'Extra Short'
WHEN `duration` <= 6 THEN 'Short'
WHEN `duration` BETWEEN 6 AND 10 THEN 'Long'
ELSE 'Extra Long'
END
AS `Duration`
FROM `games`; 


