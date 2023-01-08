SELECT v.`driver_id`,v.`vehicle_type`,CONCAT(`first_name` , " ", `last_name`) AS `driver_name` 
FROM  `vehicles` v JOIN `campers` c
ON c.`id` = v.`driver_id`;