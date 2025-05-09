USE `seschool_05`;

SELECT * FROM `Students_table`
	WHERE `Пол` = 'ж';
	
SELECT `Курс` FROM `Students_table`
	WHERE `Курс` = 3;
	
SELECT * FROM `Students_table`
	WHERE `Дата рождения` > '1994-02-03';
	
SELECT * FROM `Students_table`
	WHERE `Средний балл` >= 70 AND `Средний балл` <= 85; 
	
SELECT * FROM `Students_table`
	WHERE `Средний балл` BETWEEN 70 AND 85; 
	
	
SELECT * FROM `Students_table`
	WHERE `Курс` = 2  OR `Курс` = 3; 

SELECT * FROM `Students_table`
	WHERE `Курс` IN (2,3); 
	
	
SELECT * FROM `Students_table`
	WHERE `Фамилия` LIKE 'С%' or `Фамилия` LIKE 'К%'; 
	

SELECT * FROM `Students_table`
	WHERE `Группа` LIKE 'АУС-%'; 
	
	
SELECT * FROM `Students_table`
	WHERE `Хобби` IS NULL; 
	
	
SELECT DISTINCT `Курс` FROM `Students_table`;


SELECT `Фамилия` FROM `Students_table`
ORDER BY `Средний балл` DESC
LIMIT 5;


SELECT  `Фамилия` FROM `Students_table`
ORDER BY
	`Средний балл` ASC,
	`Фамилия` ASC
LIMIT 10;


SELECT COUNT(*),
		 (COUNT(*) - COUNT(`Хобби`)),
		 MAX(`Средний балл`),
		 MIN(`Средний балл`),
		 AVG(`Средний балл`)
FROM `Students_table`;


SELECT `Курс`, COUNT(*) FROM `Students_table`
	GROUP BY `Курс`;


SELECT `Пол`, AVG(`Средний балл`) FROM `Students_table`
	GROUP BY `пол`;


SELECT MAX(`Средний балл`)` FROM `Students_table`
	WHERE `Курс`= 3 AND `Дата рождения` >= '1993-01-01';

SELECT `Фамилия`, `Средний балл`,
	CASE
		WHEN `Средний балл` BETWEEN 91 AND 100 THEN 'Отлично'
		WHEN `Средний балл` BETWEEN 62 AND 90 THEN 'Хорошо'
		WHEN `Средний балл` BETWEEN 38 AND 61 THEN 'Удовлетворительно'
		ELSE 'Неудовлетворительно'
	END
FROM `Students_table`;

	
	