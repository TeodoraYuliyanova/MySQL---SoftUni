DELIMITER $$
CREATE PROCEDURE udp_reduce_price(category_name VARCHAR(50))
BEGIN

UPDATE `products` p 
JOIN `reviews` r ON p.`review_id` = r.`id`
JOIN `categories` c ON p.`category_id` = c.`id`
SET `price` = `price` * 0.70
WHERE r.`rating` < 4 AND c.`name` = category_name;

END$$