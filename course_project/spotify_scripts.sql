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
	output_track(t.id) AS songs,
	output_track_genres(t.id) AS genre,
	COALESCE(t.rating, 0) AS likes
	FROM tracks t
		JOIN tracks_genres tg
			ON tg.track_id = t.id
	WHERE tg.genre_id = 1
	ORDER BY t.rating DESC;

-- Вывод песен определенного исполнителя по их популярности
SELECT 
	output_track(t.id) AS songs,
	COALESCE(t.rating, 0) AS likes
	FROM tracks t
	WHERE t.artist_id = 1
	ORDER BY t.rating DESC;

-- Вывод альбомов определенного исполнителя по их популярности
SELECT 
	a.name AS artist_albums,
	COALESCE(a.rating, 0) AS likes
	FROM albums a
	WHERE a.artist_id = 1
	ORDER BY a.rating DESC;

-- Вывод топ 3 самых популярных плейлиста определенного пользователя
SELECT 
	p.name AS user_playlists,
	COALESCE(p.rating, 0) AS likes
	FROM playlists p
		JOIN users u
			ON u.id = p.created_by
	WHERE u.id = 7
	ORDER BY p.rating DESC
	LIMIT 3;

-- Вывод лайкнутых песен пользователя сортировкой по последним добавленным
SELECT
	output_track(t.id) AS liked_songs
	FROM liked_tracks lt
		JOIN tracks t
			ON t.id = lt.track_id
		JOIN artists ar
			ON t.artist_id = ar.id
	WHERE lt.user_id = 1
	ORDER BY lt.created_at DESC;

-- Вывод лайкнутых песен сортировкой по названию песни
SELECT
	output_track(t.id) AS liked_songs
	FROM liked_tracks lt
		JOIN tracks t
			ON t.id = lt.track_id
		JOIN artists ar
			ON t.artist_id = ar.id
	WHERE lt.user_id = 1
	ORDER BY t.name;

-- Вывод лайкнутых песен сортировкой по артистам
SELECT
	output_track(t.id) AS liked_songs
	FROM liked_tracks lt
		JOIN tracks t
			ON t.id = lt.track_id
		JOIN artists ar
			ON t.artist_id = ar.id
	WHERE lt.user_id = 1
	ORDER BY ar.name;

-- Вывод лайкнутых песен сортировкой по альбомам
SELECT
	output_track(t.id) AS liked_songs
	FROM liked_tracks lt
		JOIN tracks t
			ON t.id = lt.track_id
		JOIN artists ar
			ON t.artist_id = ar.id
		JOIN albums al
			ON t.album_id = al.id
	WHERE lt.user_id = 1
	ORDER BY al.id;