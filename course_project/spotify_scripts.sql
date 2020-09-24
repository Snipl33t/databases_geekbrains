USE spotify;

-- Процедура поиска песни или артиста (классический поисковик)
CALL search_songs('Husky');

-- Вывод 10 самых популярных плейлистов
SELECT * FROM popular_playlists;

-- Вывод 10 самых популярных песен всех времен
SELECT * FROM top_popular_songs;

-- Вывод топ 10 популярных песен недели
SELECT * FROM weekly_popular_songs;

-- Вывод песен определенного жанра сортировкой по рейтингу (количеству лайков на треке)
SELECT 
	CONCAT(ar.name, ' - ', t.name) AS songs,
	t.rating AS likes
	FROM artists ar
		LEFT JOIN tracks t 
			ON t.artist_id = ar.id
	WHERE ar.genre_id = 2
	ORDER BY t.rating DESC;

-- Вывод песен определенного исполнителя по их популярности
SELECT 
	t.name AS artist_songs
	FROM tracks t
	WHERE t.artist_id = 1
	ORDER BY t.rating DESC;

-- Вывод альбомов определенного исполнителя по их популярности
SELECT 
	a.name AS artist_albums
	FROM albums a
	WHERE a.artist_id = 1
	ORDER BY a.rating DESC;

-- Вывод топ 3 самых популярных плейлиста определенного пользователя
SELECT 
	p.name AS user_playlists,
	p.rating AS likes
	FROM playlists p
		JOIN users u
			ON u.id = p.created_by
	WHERE u.id = 7
	ORDER BY p.rating DESC
	LIMIT 3;

-- Вывод лайкнутых песен пользователя сортировкой по последним добавленным
SELECT
	CONCAT(ar.name, ' - ', t.name) AS liked_songs
	FROM liked_tracks lt
		LEFT JOIN tracks t
			ON t.id = lt.track_id
		LEFT JOIN artists ar
			ON t.artist_id = ar.id
	WHERE lt.user_id = 1
	ORDER BY lt.created_at DESC;

-- Вывод лайкнутых песен сортировкой по названию песни
SELECT
	CONCAT(ar.name, ' - ', t.name) AS liked_songs
	FROM liked_tracks lt
		LEFT JOIN tracks t
			ON t.id = lt.track_id
		LEFT JOIN artists ar
			ON t.artist_id = ar.id
	WHERE lt.user_id = 1
	ORDER BY t.name;

-- Вывод лайкнутых песен сортировкой по артистам
SELECT
	CONCAT(ar.name, ' - ', t.name) AS liked_songs
	FROM liked_tracks lt
		LEFT JOIN tracks t
			ON t.id = lt.track_id
		LEFT JOIN artists ar
			ON t.artist_id = ar.id
	WHERE lt.user_id = 1
	ORDER BY ar.name;

-- Вывод лайкнутых песен сортировкой по альбомам
SELECT
	CONCAT(ar.name, ' - ', t.name) AS liked_songs
	FROM liked_tracks lt
		LEFT JOIN tracks t
			ON t.id = lt.track_id
		LEFT JOIN artists ar
			ON t.artist_id = ar.id
		LEFT JOIN albums al
			ON t.album_id = al.id
	WHERE lt.user_id = 1
	ORDER BY al.id;