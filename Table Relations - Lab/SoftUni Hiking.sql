SELECT r.`starting_point` AS `route_starting_point`, r.`end_point` AS `route_ending_point`, 
r.`leader_id`, CONCAT(`first_name`, " ", `last_name`) AS `leader_name`
 FROM `campers` c JOIN `routes` r
ON r.`leader_id` = c.`id`;

