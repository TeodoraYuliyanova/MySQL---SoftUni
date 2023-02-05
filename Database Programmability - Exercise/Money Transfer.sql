DELIMITER $$
CREATE PROCEDURE usp_transfer_money(from_account_id INT, to_account_id INT, amount DECIMAL(19,4))
BEGIN
START TRANSACTION;
IF amount <= 0 OR 
from_account_id = to_account_id OR
(SELECT `balance` FROM `accounts` a WHERE a.`id` = from_account_id) < amount OR
(SELECT COUNT(`id`) FROM `accounts` a WHERE a.`id` = from_account_id) <> 1 OR 
(SELECT COUNT(`id`) FROM `accounts` a WHERE a.`id` = to_account_id) <> 1
THEN ROLLBACK;
ELSE 
UPDATE `accounts` a SET a.`balance` = a.`balance` - amount WHERE a.`id` =  from_account_id;
UPDATE `accounts` a SET a.`balance` = a.`balance` + amount WHERE a.`id` =   to_account_id;
COMMIT;
END IF;
END$$