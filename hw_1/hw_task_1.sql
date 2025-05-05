USE `seschool_05`;

CREATE TABLE `Books_table`(
	`Name` VARCHAR(64) NOT NULL PRIMARY KEY,
	`Author` VARCHAR(64),
	`Year` INT UNSIGNED,
	`Reader` VARCHAR(64) DEFAULT 'Шиш а не книга'
	);
	
	
INSERT INTO `Books_table` (`Name`, `Author`, `Year`, `Reader`)
	VALUES
	('Война и мир', 'Толстой Л.Н.', 1990, 'Сидоров И.Д.'),
	('Капитанская дочка', 'Пушкин А.С.', 2004, 'Дмитриев С.Л.'),
	('Горе от ума', 'Грибоедов А.С.', 2012, DEFAULT);
	
SELECT * FROM `Books_table`;