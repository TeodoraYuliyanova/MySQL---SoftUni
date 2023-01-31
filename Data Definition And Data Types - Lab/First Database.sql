CREATE TABLE employees (
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL
);

CREATE TABLE categories (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL
);


USE gamebar;
DROP TABLE products;


CREATE TABLE products (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
category_id INT NOT NULL 
);


USE gamebar;
INSERT INTO employees(first_name , last_name)
VALUES ('Geogri' , 'Georgiev');
INSERT INTO employees(first_name , last_name)
VALUES ('Ivan' , 'Ivanov');
INSERT INTO employees(first_name , last_name)
VALUES ('Atanas' , 'Petkov');

ALTER TABLE employees
ADD column `middle_name` varchar(50);

ALTER TABLE `products`
ADD CONSTRAINT fk_products_categories
FOREIGN KEY `products`(`category_id`)
REFERENCES `categories`(`id`);


ALTER TABLE `employees`
MODIFY COLUMN middle_name VARCHAR(100);





