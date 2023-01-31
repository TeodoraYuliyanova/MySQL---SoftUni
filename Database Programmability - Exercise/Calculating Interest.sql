DELIMITER $$
CREATE PROCEDURE usp_calculate_future_value_for_account(id INT,rate DECIMAL(19,4))
BEGIN
SELECT a.`id` AS `account_id`,ah.`first_name`,ah.`last_name`,a.`balance` AS `current_balance`,
ufn_calculate_future_value(a.`balance`, rate, 5) AS `balance_in_5_years`
FROM `accounts` a JOIN `account_holders` ah 
ON a.`account_holder_id` = ah.`id`
WHERE a.`id` = id;
END$$

