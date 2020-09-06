DESC users;
SELECT * FROM users;
DESC products;
SELECT * FROM products;
DESC orders;
SELECT * FROM orders;
DESC orders_products;
SELECT * FROM orders_products;

-- 1. ��������� ������ ������������� users, ������� ����������� ���� �� ���� ����� orders � �������� ��������.

-- ��������� ������� �������
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

-- ��������� ������� ���������� �������
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

-- ������� ������
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

-- 2. �������� ������ ������� products � �������� catalogs, ������� ������������� ������.
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

-- 3*. ����� ������� ������� ������ flights (id, from, to) � ������� ������� cities (label, name). 
-- 	   ���� from, to � label �������� ���������� �������� �������, ���� name � �������. �������� ������ ������ flights � �������� ���������� �������.

-- ������� �������
DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  from_city VARCHAR(255) COMMENT '����� ��������',
  to_city VARCHAR(255) COMMENT '����� ������'
) COMMENT = '������';

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
  label VARCHAR(255) PRIMARY KEY COMMENT '����� ��-���������',
  name VARCHAR(255) COMMENT '����� ��-������'
) COMMENT = '������';

INSERT INTO cities
	(label, name)
VALUES
	('Moscow', '������'),
	('Irkutsk', '�������'),
	('Novgorod', '��������'),
	('Kazan', '������'),
	('Omsk', '����');

SELECT * FROM flights;
SELECT * FROM cities;

-- ������� ������. ����������� ������� ������� ��� ������
SELECT 
	f.id,
	(SELECT c.name FROM cities AS c WHERE c.label = f.from_city) AS '����� ��������',
	(SELECT c.name FROM cities AS c WHERE c.label = f.to_city) AS '����� ����������'
FROM 
	flights AS f;

-- ������ � �������
SELECT 
	f.id, 
	c1.name AS '����� ��������', 
	c2.name AS '����� ����������'
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
