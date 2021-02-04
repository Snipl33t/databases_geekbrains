-- Домашнее задание 5

SELECT * FROM users;

SELECT * FROM catalogs;

-- 1.1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем
UPDATE users SET updated_at = NOW();
UPDATE users SET created_at = NOW();

-- 1.2. Таблица users была неудачно спроектирована.
-- Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10.
-- Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
ALTER TABLE users MODIFY updated_at DATETIME;

-- 1.3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, 
-- если товар закончился и выше нуля, если на складе имеются запасы. 
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
-- Однако нулевые запасы должны выводиться в конце, после всех 
SELECT *, IF(value=0,1,0) AS IDX FROM storehouses_products ORDER BY IDX, value ASC;

-- 1.4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий (may, august)
-- Представлены три варианта:
SELECT * FROM users WHERE MONTH(birthday_at) = 5 OR MONTH(birthday_at) = 8;
SELECT * FROM users WHERE birthday_at LIKE '19%%-05-%%' OR birthday_at LIKE '19%%-08-%%';
SELECT * FROM users WHERE IF(monthname(birthday_at) IN ('may', 'august'), TRUE, FALSE) = TRUE;

-- 1.5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2);
-- Отсортируйте записи в порядке, заданном в списке IN.
SELECT * FROM catalogs WHERE id IN (5, 1, 2);

SELECT *,
CASE id WHEN 1 THEN 1
		WHEN 5 THEN 0 
		WHEN 2 THEN 2 
		ELSE 10 END AS IDX
FROM catalogs WHERE id IN (5, 1, 2) ORDER BY IDX;

-- 2.1. Подсчитайте средний возраст пользователей в таблице users
SELECT ROUND(AVG(YEAR(NOW()) - YEAR(birthday_at)), 0) AS AGE FROM users;

-- 2.2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.
SELECT 
ANY_VALUE(WEEKDAY(DATE_ADD(birthday_at, INTERVAL(YEAR(NOW()) - YEAR(birthday_at)) YEAR))) AS day_num,
CASE WEEKDAY(DATE_ADD(birthday_at, INTERVAL(YEAR(NOW()) - YEAR(birthday_at)) YEAR))
	WHEN 0 THEN 'Понедельник'
	WHEN 1 THEN 'Вторник'
	WHEN 2 THEN 'Среда'
	WHEN 3 THEN 'Четверг'
	WHEN 4 THEN 'Пятница'
	WHEN 5 THEN 'Суббота'
	ELSE 'Воскресенье' END AS day_name,
COUNT(WEEKDAY(DATE_ADD(birthday_at, INTERVAL(YEAR(NOW()) - YEAR(birthday_at)) YEAR))) AS birthday_amount
FROM users GROUP BY day_name ORDER BY day_num ASC;

-- 2.3. Подсчитайте произведение чисел в столбце таблицы.
DROP TABLE IF EXISTS value_table;
CREATE TABLE value_table (value INT) COMMENT 'Таблица со значениями';
INSERT INTO value_table (value) VALUES
(1),
(2),
(3),
(4),
(5);

SELECT * FROM value_table;

-- Вычисляем произведение членов как экспоненту в степени суммы их логарифмов
SELECT EXP(SUM(LN(value))) AS 'Произведение' from value_table;
