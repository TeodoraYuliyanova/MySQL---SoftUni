DELIMITER $$
CREATE PROCEDURE usp_deposit_money(id INT,money_amount DECIMAL(19,4))
BEGIN
START TRANSACTION;
IF money_amount <= 0 THEN ROLLBACK;
ELSE UPDATE `accounts` a SET a.`balance` = a.`balance` + money_amount
WHERE a.`id` = id;
END IF;
END$$



