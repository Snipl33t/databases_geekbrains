-- 1. Проанализировать какие запросы могут выполняться наиболее
-- часто в процессе работы приложения и добавить необходимые индексы.

SELECT * FROM messages;

CREATE INDEX profiles_birthday_idx ON profiles(birthday);
CREATE INDEX profiles_city_idx ON profiles(city);
CREATE INDEX profiles_country_idx ON profiles(country);
CREATE INDEX profiles_gender_idx ON profiles(gender);

CREATE INDEX media_filename_idx ON media(filename);

CREATE INDEX media_types_name_idx ON media_types(name);

CREATE INDEX posts_title_name_idx ON posts(title);

CREATE INDEX messages_body_idx ON messages(body);
CREATE INDEX messages_from_user_id_idx ON messages(from_user_id);
CREATE INDEX messages_to_user_id_idx ON messages(to_user_id);

-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах (во всех)
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100

SELECT DISTINCT
	c.name,
	AVG(count_table.cuser_amount) OVER () AS cuser_avg,
	COALESCE(MAX(p.birthday) OVER (PARTITION BY cu.community_id), 0) AS youngest_user, -- Тут выводятся дни рождения, ниже пытался через строки с именами
	COALESCE(MIN(p.birthday) OVER (PARTITION BY cu.community_id), 0) AS oldest_user,
	COALESCE(count_table.cuser_amount, 0) AS user_amount,
	SUM(count_table.cuser_amount) OVER () AS total_amount
	FROM (communities AS c
		LEFT JOIN communities_users cu
			ON cu.community_id = c.id
		LEFT JOIN (SELECT cu2.community_id, COUNT(*) AS cuser_amount FROM communities_users cu2 GROUP BY cu2.community_id) AS count_table
			ON count_table.community_id = c.id
		LEFT JOIN profiles p
			ON p.user_id = cu.user_id
		LEFT JOIN users u
			ON u.id = p.user_id);

-- Как я себе видел с днями рождения, но не получилось	
SELECT DISTINCT
	c.name,
	AVG(count_table.cuser_amount) OVER () AS cuser_avg,
	COALESCE(CONCAT(u.first_name, " ", u.last_name, " born on ", (MAX(p.birthday) OVER (PARTITION BY cu.community_id))), 0) AS youngest_user_str, -- Не работают как надо, тк надо по найденому дню рождения найти юзера, по хорошему, но я не знаю какю
	COALESCE(CONCAT(u.first_name, " ", u.last_name, " born on ", (MIN(p.birthday) OVER (PARTITION BY cu.community_id))), 0) AS oldest_user_str, -- либо переделывать всю таблицу и делать через юзерс, но тогда тоже получается не совсем то, что хотелось бы
	COALESCE(count_table.cuser_amount, 0) AS user_amount,
	SUM(count_table.cuser_amount) OVER () AS total_amount
	FROM (communities AS c
		LEFT JOIN communities_users cu
			ON cu.community_id = c.id
		LEFT JOIN (SELECT cu2.community_id, COUNT(*) AS cuser_amount FROM communities_users cu2 GROUP BY cu2.community_id) AS count_table
			ON count_table.community_id = c.id
		LEFT JOIN profiles p
			ON p.user_id = cu.user_id
		LEFT JOIN users u
			ON u.id = p.user_id);
