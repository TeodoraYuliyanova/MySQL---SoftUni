DELIMITER $$
CREATE PROCEDURE usp_withdraw_money(account_id INT, money_amount DECIMAL(19,4))
BEGIN
START TRANSACTION;
IF (money_amount <= 0 OR (money_amount > (SELECT `balance` FROM `accounts` a WHERE a.`id` = account_id)))
 THEN ROLLBACK;
ELSE UPDATE `accounts` a SET a.`balance` = a.`balance` - money_amount
WHERE a.`id` = account_id;
END IF;
END$$


