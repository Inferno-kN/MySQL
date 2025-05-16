USE `seschool_05`;


SELECT `CharacterName`, `Occupation` FROM `ZootopiaCharacters`;


SELECT `CharacterName` FROM `ZootopiaCharacters`
	WHERE `Species` = 'Лиса';
	

SELECT `CharacterName` FROM `ZootopiaCharacters`
	WHERE `Species` IN ('Кролик', 'Буйвол');
	

SELECT * FROM `ZootopiaCharacters`
	WHERE `Occupation` IS NOT NULL
	ORDER BY `CharacterName` ASC
	LIMIT 3;


SELECT * FROM `ZootopiaCharacters`
	GROUP BY `Occupation`
	ORDER BY `Role` DESC;


SELECT * FROM `ZootopiaCharacters`
	WHERE `CharacterName` LIKE '%a%'
	ORDER BY `CharacterName` DESC;


SELECT DISTINCT `Role` FROM `ZootopiaCharacters`
	ORDER BY `CharacterName` ASC;
	

SELECT * FROM `ZootopiaCharacters`
	WHERE `Catchphrase` IS NOT NULL
	ORDER BY `CharacterName` ASC
	LIMIT 5;


SELECT * FROM `ZootopiaCharacters`
	WHERE `Species` = 'Кролик'
	ORDER BY `CharacterName` ASC
	LIMIT 1
	OFFSET 2;


SELECT COUNT(*) AS `Количество персонажей` FROM `ZootopiaCharacters`;


SELECT `Role`, COUNT(*) AS `Количество персонажей` FROM `ZootopiaCharacters`
	GROUP BY `Role`;


SELECT `Occupation`, COUNT(*) AS `Количество персонажей` FROM `ZootopiaCharacters`
	GROUP BY `Occupation`;


SELECT `Occupation`, COUNT(*) AS `Количество персонажей` FROM `ZootopiaCharacters`
	GROUP BY `Occupation`
	ORDER BY `Количество персонажей` DESC;
	

SELECT `Species`, COUNT(*) AS `Количество персонажей` FROM `ZootopiaCharacters`
	WHERE `Role` = 'Главный герой'
	GROUP BY `Species`;


SELECT `CharacterName`, `Occupation` FROM `ZootopiaCharacters`
	GROUP BY `Occupation`
	HAVING COUNT(*) = 1;
	

SELECT * FROM `ZootopiaCharacters`
	WHERE `Occupation` IS NOT NULL
	ORDER BY `CharacterName` DESC
	LIMIT 5;


SELECT * FROM `ZootopiaCharacters`
	GROUP BY `Occupation`
	HAVING COUNT(*) > 1
	ORDER BY `Occupation` ASC;


SELECT * FROM `ZootopiaCharacters`
	GROUP BY `Species`
	HAVING `Occupation` IS NULL
	ORDER BY COUNT(*) DESC
	LIMIT 3;