DESC users;
SELECT * FROM users;
DESC products;
SELECT * FROM products;
DESC orders;
SELECT * FROM orders;
DESC orders_products;
SELECT * FROM orders_products;

-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

-- Заполняем таблицу заказов
INSERT INTO orders
	(user_id)
VALUES
	(4),
	(3),
	(2),
	(6),
	(4);

ALTER TABLE orders
DROP FOREIGN KEY orders_user_id_fk;

ALTER TABLE orders
ADD CONSTRAINT orders_user_id_fk
FOREIGN KEY (user_id) 
REFERENCES users(id)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- Заполняем таблицу заказанных товаров
INSERT INTO orders_products
	(order_id, product_id)
VALUES
	(1, 1),
	(1, 5),
	(2, 3),
	(3, 7),
	(4, 2),
	(4, 6),
	(5, 3);

ALTER TABLE orders_products
ADD CONSTRAINT orders_products_order_id_fk
FOREIGN KEY (order_id) 
REFERENCES orders(id)
ON DELETE CASCADE
ON UPDATE CASCADE,
ADD CONSTRAINT orders_products_product_id_fk
FOREIGN KEY (product_id) 
REFERENCES products(id)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- Создаем запрос
SELECT 
	u.id,
	u.name,
	COUNT(o.user_id) AS 'num_of_orders'
FROM
	orders AS o
JOIN
	users AS u
ON
	o.user_id = u.id
GROUP BY u.id;

-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.
SELECT
	p.name AS product_name,
	p.price,
	c.name AS catalog_name
FROM
	catalogs AS c
JOIN
	products AS p
ON 
	c.id = p.catalog_id;

-- 3*. Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- 	   Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.

-- Создаем таблицы
DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  from_city VARCHAR(255) COMMENT 'Город прибытия',
  to_city VARCHAR(255) COMMENT 'Город вылета'
) COMMENT = 'Полеты';

INSERT INTO flights
	(from_city, to_city)
VALUES
	('Moscow', 'Omsk'),
	('Novgorod', 'Kazan'),
	('Irkutsk', 'Moscow'),
	('Omsk', 'Irkutsk'),
	('Moscow', 'Kazan');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(255) PRIMARY KEY COMMENT 'Город по-английски',
  name VARCHAR(255) COMMENT 'Город по-русски'
) COMMENT = 'Города';

INSERT INTO cities
	(label, name)
VALUES
	('Moscow', 'Москва'),
	('Irkutsk', 'Иркутск'),
	('Novgorod', 'Новгород'),
	('Kazan', 'Казань'),
	('Omsk', 'Омск');

SELECT * FROM flights;
SELECT * FROM cities;

-- Создаем запрос. Максимально простой вариант без джоина
SELECT 
	f.id,
	(SELECT c.name FROM cities AS c WHERE c.label = f.from_city) AS 'Город отправки',
	(SELECT c.name FROM cities AS c WHERE c.label = f.to_city) AS 'Город назначения'
FROM 
	flights AS f;

-- Запрос с джоином
SELECT 
	f.id, 
	c1.name AS 'Город отправки', 
	c2.name AS 'Город назначения'
FROM
	flights AS f
JOIN
	cities AS c1
ON
	c1.label = f.from_city
JOIN
	cities AS c2
ON
	c2.label = f.to_city;
