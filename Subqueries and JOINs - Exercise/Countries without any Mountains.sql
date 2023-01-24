SELECT COUNT(c.`country_code`) AS `country_code`
FROM `countries` c
LEFT JOIN `mountains_countries` mc ON c.`country_code` = mc.`country_code`
LEFT JOIN `mountains` m ON mc.`mountain_id` = m.`id`
WHERE m.`mountain_range` IS NULL;
