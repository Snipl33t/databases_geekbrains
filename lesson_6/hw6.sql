-- 1. Создать и заполнить таблицу лайков и постов
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Заголовок поста',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Тело поста',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;     

CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(11) NOT NULL COMMENT 'Идентификатор пользователя',
  `post_id` int(10) unsigned NULL 'Идентификатор поста',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 2. Создать все необходимые внешние ключи и диаграмму отношений, сдать команды и картинку
ALTER TABLE profiles
	ADD CONSTRAINT profiles_user_id_fk -- Задаем foreign key
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE, -- Если строка с оригинальным ключом удаляется, то CASCADE удалит референсный ключ
	ADD CONSTRAINT profiles_photo_id_fk -- Задаем foreign key
		FOREIGN KEY (photo_id) REFERENCES media(id)
			ON DELETE SET NULL; -- Мы не хотим чтобы при удалении фото - удалялся профиль

ALTER TABLE messages 
	ADD CONSTRAINT messages_from_user_id_fk -- Задаем foreign key
		FOREIGN KEY (from_user_id) REFERENCES users(id)
			ON DELETE RESTRICT,
	ADD CONSTRAINT messages_to_user_id_fk -- Задаем foreign key
		FOREIGN KEY (to_user_id) REFERENCES users(id)
			ON DELETE RESTRICT;
			
ALTER TABLE communities_users
	ADD CONSTRAINT communities_users_user_id_fk -- Задаем foreign key
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT communities_users_community_id_fk -- Задаем foreign key
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE;
		
ALTER TABLE media
	ADD CONSTRAINT media_media_type_id_fk -- Задаем foreign key
		FOREIGN KEY (media_type_id) REFERENCES media_types(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT media_user_id_fk -- Задаем foreign key
		FOREIGN KEY (user_id) REFERENCES profiles(user_id)
			ON DELETE CASCADE;
		
ALTER TABLE posts
	ADD CONSTRAINT posts_user_id_fk -- Задаем foreign key
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
		
ALTER TABLE likes
	ADD CONSTRAINT likes_post_id_fk -- Задаем foreign key
		FOREIGN KEY (post_id) REFERENCES posts(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT likes_user_id_fk -- Задаем foreign key
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;

ALTER TABLE friendship
	ADD CONSTRAINT friendship_user_id_fk -- Задаем foreign key
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT friendship_friend_id_fk -- Задаем foreign key
		FOREIGN KEY (friend_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT friendship_status_id_fk -- Задаем foreign key
		FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
			ON DELETE CASCADE;

-- Если вдруг надо удалить
-- ALTER TABLE media 
-- 	DROP CONSTRAINT media_media_type_id_fk,
-- 	DROP CONSTRAINT media_user_id_fk;
-- 	
-- ALTER TABLE communities_users 
-- 	DROP CONSTRAINT communities_users_user_id_fk,
-- 	DROP CONSTRAINT communities_users_community_id_fk;

-- 3. Определить кто больше поставил лайков (всего) мужчины или женщины
-- Не знаю как оптимизировать чтобы не использовать одни и те же вычесления несколько раз, хотел бы совета
SELECT 
	(SELECT COUNT(id) FROM likes WHERE user_id IN(
		SELECT user_id FROM profiles WHERE gender = 'm')) 
	AS 'Лайки мужчин',
	(SELECT COUNT(id) FROM likes WHERE user_id IN(
		SELECT user_id FROM profiles WHERE gender = 'f')) 
	AS 'Лайки женщин',
	IF(
		(SELECT COUNT(id) FROM likes WHERE user_id IN(
			SELECT user_id FROM profiles WHERE gender = 'm'))
		>
		(SELECT COUNT(id) FROM likes WHERE user_id IN(
			SELECT user_id FROM profiles WHERE gender = 'f')),
		'Мужчины больше лайкали', 'Женщины больше лайкали') 
	AS 'Вывод';

-- 4. Подсчитать количество лайков которые получили 20 самых молодых пользователей
SELECT 
	user_id,
	(SELECT first_name 
		FROM users 
		WHERE id = user_id) AS first_name,
	(SELECT last_name 
		FROM users 
		WHERE id = user_id) AS last_name,
	COUNT(*) AS num_of_likes,
	birthday AS date_of_birth,
	(YEAR(NOW()) - YEAR(birthday)) AS age
FROM profiles 
WHERE user_id IN(
	SELECT DISTINCT user_id FROM likes) 
GROUP BY user_id 
ORDER BY age 
LIMIT 20;

-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании соц сети (критерии активности необходимо определить самостоятельно)

-- Количество лайков. По аналоги посчитаны посты и сообщения от пользователя
SELECT 
	user_id, 
	IF(
		user_id IN (SELECT user_id 
					FROM likes 
					WHERE user_id 
					IN(SELECT DISTINCT user_id FROM likes) 
						GROUP BY user_id),
		(SELECT COUNT(*) 
			FROM likes 
			WHERE user_id = profiles.user_id 
			GROUP BY user_id),
		0	
	) AS likes
FROM profiles 
ORDER BY user_id;


-- Подсчет лайков, постов и сообщений каждого пользователя
SELECT user_id,  
	(SELECT first_name FROM users WHERE id = user_id) AS first_name,
	(SELECT last_name FROM users WHERE id = user_id) AS last_name,
	IF(user_id IN (SELECT user_id FROM likes WHERE user_id IN(SELECT DISTINCT user_id FROM likes) GROUP BY user_id),
		(SELECT COUNT(*) FROM likes WHERE user_id = profiles.user_id GROUP BY user_id),
		0) AS likes,
	IF(user_id IN (SELECT user_id FROM posts WHERE user_id IN(SELECT DISTINCT user_id FROM posts) GROUP BY user_id),
		(SELECT COUNT(*) FROM posts WHERE user_id = profiles.user_id GROUP BY user_id),
		0) AS posts,
	IF(user_id IN (SELECT from_user_id FROM messages WHERE from_user_id IN(SELECT DISTINCT from_user_id FROM messages) GROUP BY from_user_id),
		(SELECT COUNT(*) FROM messages WHERE from_user_id = profiles.user_id GROUP BY from_user_id),
		0) AS messages
FROM profiles 
ORDER BY user_id;

-- Подсчет количества активности (сумма лайков, постов и сообщений пользователя)
-- Более чем уверен, что можно было проще сделать, хотя вышла неплохая разминка для мозга
-- И хотелось бы узнать как все таки можно суммировать столбцы между собой, а то пришлось через юнион изворачиваться (хотя не так уж и плохо)
SELECT user_id, 
	(SELECT first_name FROM users WHERE id = user_id) AS first_name,
	(SELECT last_name FROM users WHERE id = user_id) AS last_name,
	SUM(activity) AS total_activity 
	FROM(
		(
			(
				SELECT 
					user_id, 
					IF(
						user_id IN (SELECT user_id 
									FROM likes 
									WHERE user_id 
									IN(SELECT DISTINCT user_id FROM likes) 
										GROUP BY user_id
									),
						(SELECT COUNT(*) 
							FROM likes 
							WHERE user_id = profiles.user_id 
							GROUP BY user_id),
						0	
					) AS activity
				FROM profiles 
				ORDER BY user_id
			)
			UNION
			(
				SELECT 
					user_id,
					IF(
						user_id IN (SELECT user_id 
									FROM posts 
									WHERE user_id 
									IN(SELECT DISTINCT user_id FROM posts) 
										GROUP BY user_id
									),
						(SELECT COUNT(*) 
							FROM posts 
							WHERE user_id = profiles.user_id 
							GROUP BY user_id),
						0
					) AS activity
				FROM profiles 
				ORDER BY user_id
			)
		)
		UNION 
		(
			SELECT 
				user_id,
				IF(
					user_id IN (SELECT from_user_id 
								FROM messages 
								WHERE from_user_id 
								IN(SELECT DISTINCT from_user_id FROM messages) 
									GROUP BY from_user_id
								),
					(SELECT COUNT(*) 
						FROM messages 
						WHERE from_user_id = profiles.user_id 
						GROUP BY from_user_id),
					0
				) AS activity
			FROM profiles 
			ORDER BY user_id
		)
	ORDER BY user_id) 
AS table_name 
GROUP BY user_id
ORDER BY total_activity ASC
LIMIT 10;






SELECT user_id, (SELECT COUNT(*) FROM likes WHERE user_id IN(SELECT DISTINCT user_id FROM likes) 
			GROUP BY profiles.user_id) FROM profiles ORDER BY user_id;
		
SELECT COUNT(*) FROM likes WHERE user_id = 2 GROUP BY user_id;

SELECT * FROM messages ORDER BY from_user_id;






		

		