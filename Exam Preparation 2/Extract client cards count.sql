DELIMITER $$
CREATE FUNCTION udf_customer_products_count(name VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN

DECLARE total_products INT;

SET total_products := (SELECT COUNT(op.`order_id`) AS `total_products` FROM `orders_products` op 
JOIN `orders` o ON op.`order_id` = o.`id`
JOIN `customers` c ON o.`customer_id` = c.`id`
WHERE c.`first_name` = name
GROUP BY c.`id`
);

RETURN total_products;
END$$