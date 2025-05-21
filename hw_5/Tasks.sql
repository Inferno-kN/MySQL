USE `seschool_05`;

#1
SELECT * FROM `products`
	WHERE `products`.price > (SELECT AVG(`products`.price) FROM `products`);

#2
SELECT DISTINCT `category_name` FROM `categories`
INNER JOIN `products` ON `products`.`category_id` = `categories`.`category_id` 
WHERE `products`.price > 100;

#3
SELECT `products`.`product_name`, COUNT(*) FROM `products`
GROUP BY `products`.`category_id`;
   
#4
SELECT `products`.`product_name` FROM `products`
WHERE `products`.`price` > (
	SELECT AVG(`products`.`price`) FROM `categories`
	WHERE `category_id` = `products`.`category_id`);

#6
SELECT `categories`.`category_name`, `categories_price`.`max`   FROM `categories`
INNER JOIN `products`.`price` ON `categories`.`category_id` = `categories_price`.`category_id`
GROUP BY `category_id`;

#11
SELECT `products`.`product_name` FROM `products`
WHERE `products`.`price` < (SELECT MIN(`products`.`price`) FROM `products`);
    

   