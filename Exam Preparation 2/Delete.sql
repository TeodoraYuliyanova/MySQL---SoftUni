DELETE c FROM `customers` c WHERE c.`id` NOT IN (SELECT `customer_id` FROM `orders`);