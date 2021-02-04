-- ДЗ 6
-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT
	(SELECT gender FROM profiles WHERE user_id = likes.user_id) AS gender,
	COUNT(*) AS total
    FROM likes
    GROUP BY gender
    ORDER BY total DESC
    LIMIT 1;  

-- Переделка с джоин
SELECT
	p.gender,
	COUNT(*) AS total
	FROM likes l
		JOIN profiles AS p
			ON p.user_id = l.user_id
	GROUP BY p.gender
	ORDER BY total DESC
	LIMIT 1;

-- 4. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
SELECT SUM(likes_total) FROM  
  (SELECT 
    (SELECT COUNT(*) FROM likes WHERE target_id = profiles.user_id AND target_type_id = 2) AS likes_total  
    FROM profiles 
    ORDER BY birthday 
    DESC LIMIT 10) AS user_likes
;

-- Переделка с джоин, к сожалению только такой вариант получился рабочим
SELECT SUM(likes_total) FROM
	(SELECT COUNT(l.target_id) AS likes_total
		FROM likes l
		RIGHT JOIN profiles p
			ON l.target_id = p.user_id AND l.target_type_id = 2 
		GROUP BY p.user_id
		ORDER BY p.birthday DESC LIMIT 10) AS user_likes;
  
  -- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной 
-- сети.     
SELECT 
  CONCAT(first_name, ' ', last_name) AS user, 
	(SELECT COUNT(*) FROM likes WHERE likes.user_id = users.id) + 
	(SELECT COUNT(*) FROM media WHERE media.user_id = users.id) + 
	(SELECT COUNT(*) FROM messages WHERE messages.from_user_id = users.id) AS overall_activity 
	  FROM users
	  ORDER BY overall_activity
	  LIMIT 10;

-- Переделка с джоин
-- Это было долго и мучительно, своими усилиями с дистинктом пытался, но делал на user_id, а потом увидел в интернете, что лучше по другому полю делать
SELECT 
	CONCAT(first_name, ' ', last_name) AS user,
	(COUNT(DISTINCT likes.id) + COUNT(DISTINCT media.id) + COUNT(DISTINCT messages.id))  AS overall_activity
	FROM users 
		LEFT JOIN likes ON likes.user_id = users.id
		LEFT JOIN media ON media.user_id = users.id
		LEFT JOIN messages ON messages.from_user_id = users.id
GROUP BY users.id
ORDER BY overall_activity
LIMIT 10;
