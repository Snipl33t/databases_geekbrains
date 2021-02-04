-- 1. ������� � ��������� ������� ������ � ������
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� ������',
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '��������� �����',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT '���� �����',
  `created_at` datetime DEFAULT current_timestamp() COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;     

CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� ������',
  `user_id` int(11) NOT NULL COMMENT '������������� ������������',
  `post_id` int(10) unsigned NULL '������������� �����',
  `created_at` datetime DEFAULT current_timestamp() COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 2. ������� ��� ����������� ������� ����� � ��������� ���������, ����� ������� � ��������
ALTER TABLE profiles
	ADD CONSTRAINT profiles_user_id_fk -- ������ foreign key
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE, -- ���� ������ � ������������ ������ ���������, �� CASCADE ������ ����������� ����
	ADD CONSTRAINT profiles_photo_id_fk -- ������ foreign key
		FOREIGN KEY (photo_id) REFERENCES media(id)
			ON DELETE SET NULL; -- �� �� ����� ����� ��� �������� ���� - �������� �������

ALTER TABLE messages 
	ADD CONSTRAINT messages_from_user_id_fk -- ������ foreign key
		FOREIGN KEY (from_user_id) REFERENCES users(id)
			ON DELETE RESTRICT,
	ADD CONSTRAINT messages_to_user_id_fk -- ������ foreign key
		FOREIGN KEY (to_user_id) REFERENCES users(id)
			ON DELETE RESTRICT;
			
ALTER TABLE communities_users
	ADD CONSTRAINT communities_users_user_id_fk -- ������ foreign key
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT communities_users_community_id_fk -- ������ foreign key
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE;
		
ALTER TABLE media
	ADD CONSTRAINT media_media_type_id_fk -- ������ foreign key
		FOREIGN KEY (media_type_id) REFERENCES media_types(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT media_user_id_fk -- ������ foreign key
		FOREIGN KEY (user_id) REFERENCES profiles(user_id)
			ON DELETE CASCADE;
		
ALTER TABLE posts
	ADD CONSTRAINT posts_user_id_fk -- ������ foreign key
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
		
ALTER TABLE likes
	ADD CONSTRAINT likes_post_id_fk -- ������ foreign key
		FOREIGN KEY (post_id) REFERENCES posts(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT likes_user_id_fk -- ������ foreign key
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;

ALTER TABLE friendship
	ADD CONSTRAINT friendship_user_id_fk -- ������ foreign key
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT friendship_friend_id_fk -- ������ foreign key
		FOREIGN KEY (friend_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT friendship_status_id_fk -- ������ foreign key
		FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
			ON DELETE CASCADE;

-- ���� ����� ���� �������
-- ALTER TABLE media 
-- 	DROP CONSTRAINT media_media_type_id_fk,
-- 	DROP CONSTRAINT media_user_id_fk;
-- 	
-- ALTER TABLE communities_users 
-- 	DROP CONSTRAINT communities_users_user_id_fk,
-- 	DROP CONSTRAINT communities_users_community_id_fk;

-- 3. ���������� ��� ������ �������� ������ (�����) ������� ��� �������
-- �� ���� ��� �������������� ����� �� ������������ ���� � �� �� ���������� ��������� ���, ����� �� ������
SELECT 
	(SELECT COUNT(id) FROM likes WHERE user_id IN(
		SELECT user_id FROM profiles WHERE gender = 'm')) 
	AS '����� ������',
	(SELECT COUNT(id) FROM likes WHERE user_id IN(
		SELECT user_id FROM profiles WHERE gender = 'f')) 
	AS '����� ������',
	IF(
		(SELECT COUNT(id) FROM likes WHERE user_id IN(
			SELECT user_id FROM profiles WHERE gender = 'm'))
		>
		(SELECT COUNT(id) FROM likes WHERE user_id IN(
			SELECT user_id FROM profiles WHERE gender = 'f')),
		'������� ������ �������', '������� ������ �������') 
	AS '�����';

-- 4. ���������� ���������� ������ ������� �������� 20 ����� ������� �������������
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

-- 5. ����� 10 �������������, ������� ��������� ���������� ���������� � ������������� ��� ���� (�������� ���������� ���������� ���������� ��������������)

-- ���������� ������. �� ������� ��������� ����� � ��������� �� ������������
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


-- ������� ������, ������ � ��������� ������� ������������
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

-- ������� ���������� ���������� (����� ������, ������ � ��������� ������������)
-- ����� ��� ������, ��� ����� ���� ����� �������, ���� ����� �������� �������� ��� �����
-- � �������� �� ������ ��� ��� ���� ����� ����������� ������� ����� �����, � �� �������� ����� ����� �������������� (���� �� ��� �� � �����)
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






		

		