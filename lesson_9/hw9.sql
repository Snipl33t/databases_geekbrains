-- 1.1. В базе данных shop и sample присутвуют одни и те же таблицы учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;
USE sample;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

SELECT * FROM shop.users;
SELECT * FROM sample.users;

START TRANSACTION;
  INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
  DELETE FROM shop.users WHERE id = 1;
COMMIT;

-- 1.2. Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.
USE lesson_9;

SELECT * FROM products;

SELECT p.name, c.name FROM products p, catalogs c WHERE p.catalog_id = c.id;

CREATE OR REPLACE VIEW prd(product_name, catalog_name) AS 
	SELECT p.name, c.name 
	FROM products p, catalogs c 
	WHERE p.catalog_id = c.id;

-- Джоин метод
CREATE OR REPLACE VIEW prd(product_name, catalog_name) AS 
	SELECT p.name, c.name
	FROM products p
		LEFT JOIN catalogs c 
		ON p.catalog_id = c.id;

SELECT * FROM prd;


-- 2.1 Создайте двух пользователей которые имеют доступ к базе данных shop. 
-- Первому пользователю shop_read должны быть доступны только запросы на чтение данных, второму пользователю shop — любые операции в пределах базы данных shop.
CREATE USER shop_all;
CREATE USER shop_read;
GRANT USAGE ON shop.* TO shop_all;
GRANT SELECT ON  shop.* TO shop_read;
SHOW grants;


-- 3.1 Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello ()
RETURNS TINYTEXT
BEGIN
	DECLARE hour_now INT DEFAULT 0;
	SET hour_now = HOUR(NOW());
	CASE 
		WHEN hour_now BETWEEN 0 AND 5 THEN RETURN 'Доброй ночи';
		WHEN hour_now BETWEEN 5 AND 11 THEN RETURN 'Доброе утро';
		WHEN hour_now BETWEEN 11 AND 17 THEN RETURN 'Добрый день';
		ELSE RETURN 'Добрый вечер';
	END CASE;
END//
DELIMITER ;

SELECT hello();


-- 3.2 В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL
-- неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER //
CREATE TRIGGER CHECK_name_description BEFORE UPDATE ON products 
FOR EACH ROW 
BEGIN 
	IF NEW.name AND NEW.description IS NULL THEN
		SIGNAL SQLSTATE '45000'
    	SET MESSAGE_TEXT = 'Both name and description are NULL';
    END IF;
END//
DELIMITER ;