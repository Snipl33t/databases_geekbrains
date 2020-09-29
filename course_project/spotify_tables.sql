USE spotify;

DROP TABLE IF EXISTS liked_genres;
DROP TABLE IF EXISTS liked_tracks;
DROP TABLE IF EXISTS liked_artists;
DROP TABLE IF EXISTS liked_albums;
DROP TABLE IF EXISTS liked_playlists;

DROP TABLE IF EXISTS featuring_tracks;
DROP TABLE IF EXISTS tracks_genres;
DROP TABLE IF EXISTS albums_genres;
DROP TABLE IF EXISTS artists_genres;

DROP TABLE IF EXISTS playlists_content;
DROP TABLE IF EXISTS playlists;

DROP TABLE IF EXISTS tracks;

DROP TABLE IF EXISTS albums;

DROP TABLE IF EXISTS artists;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY COMMENT 'Идентификатор пользователя',
    firstname VARCHAR(50) COMMENT 'Имя пользователя',
    lastname VARCHAR(50) COMMENT 'Фамилия пользователя',
    email VARCHAR(120) UNIQUE COMMENT 'Электронная почта пользователя',
	birthday_at DATE COMMENT 'Дата рождения пользоваетля',
    INDEX users_firstname_lastname_idx(firstname, lastname),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Пользователи';

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('1', 'Abbie', 'Russel', 'nklocko@example.org', '2001-10-02', '2018-02-12 17:03:36', '2012-08-18 22:00:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('2', 'Gregoria', 'Lueilwitz', 'wcole@example.net', '2014-06-20', '2015-11-09 21:44:59', '2014-03-15 19:48:31');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('3', 'Simeon', 'Heidenreich', 'della42@example.org', '2006-10-12', '2018-07-27 04:10:23', '2017-12-28 12:09:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('4', 'Janis', 'Shanahan', 'stanton.marvin@example.org', '2006-03-14', '2017-08-02 14:48:38', '2011-06-27 12:36:30');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('5', 'Luella', 'Fadel', 'chanel.renner@example.net', '2000-06-25', '2013-07-31 23:51:11', '2017-12-02 04:58:53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('6', 'Autumn', 'Haley', 'xkuhic@example.net', '2018-07-23', '2017-03-08 05:43:18', '2016-02-12 17:45:54');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('7', 'Johnny', 'Heathcote', 'dare.nathan@example.com', '2016-12-15', '2016-08-23 02:11:14', '2013-09-01 03:25:13');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('8', 'Lysanne', 'Huel', 'kylee.carroll@example.net', '1998-10-01', '2012-04-20 07:04:25', '2017-05-24 15:57:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('9', 'Alvina', 'DuBuque', 'freddy.gulgowski@example.org', '2009-09-11', '2013-11-21 00:05:42', '2017-10-01 02:08:02');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('10', 'Carlotta', 'Denesik', 'catalina28@example.net', '2004-08-15', '2012-07-18 08:07:21', '2017-10-22 21:33:09');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('11', 'Brock', 'Jacobson', 'tyler.wisoky@example.com', '2017-03-10', '2015-04-25 23:11:13', '2017-08-28 20:27:50');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('12', 'Kody', 'Grant', 'elissa22@example.com', '2001-08-20', '2016-03-28 06:32:15', '2011-03-05 08:31:51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('13', 'Giuseppe', 'Orn', 'lyla13@example.net', '2002-03-02', '2015-07-08 07:56:31', '2011-05-21 22:15:22');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('14', 'Kacie', 'Bins', 'emard.earl@example.org', '2015-03-29', '2011-03-12 00:40:38', '2020-02-03 09:46:10');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('15', 'Anne', 'O\'Keefe', 'angie03@example.org', '2007-05-20', '2017-01-26 09:23:58', '2011-11-09 22:28:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('16', 'Justice', 'Schmeler', 'collins.otha@example.org', '1990-10-20', '2018-05-24 19:54:27', '2019-05-16 23:46:40');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('17', 'Berenice', 'Okuneva', 'schultz.aniya@example.net', '1991-03-21', '2019-01-21 16:15:58', '2016-01-31 12:26:43');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('18', 'Coy', 'Herzog', 'thiel.columbus@example.com', '1995-08-18', '2012-03-01 00:12:22', '2018-06-15 17:50:22');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('19', 'Geraldine', 'Powlowski', 'lonzo.upton@example.com', '1996-09-29', '2019-04-09 04:30:25', '2019-06-06 21:14:45');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('20', 'Eliseo', 'Kerluke', 'arvid.kreiger@example.net', '2017-12-09', '2019-02-28 07:30:00', '2016-01-21 10:35:40');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('21', 'Lonnie', 'Marquardt', 'zbergstrom@example.net', '2016-01-16', '2011-12-29 08:19:15', '2012-12-22 21:30:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('22', 'Gunner', 'Kub', 'anais63@example.org', '2010-12-18', '2020-04-14 12:33:35', '2011-09-26 02:24:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('23', 'Margaret', 'Kuphal', 'rborer@example.com', '1997-06-07', '2011-02-06 06:02:36', '2017-04-12 20:40:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('24', 'Carolyn', 'Mertz', 'carlie.kihn@example.org', '2008-10-21', '2017-11-07 16:57:06', '2020-04-05 22:51:45');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('25', 'Macie', 'Schinner', 'arnulfo.leuschke@example.net', '1992-08-07', '2016-01-18 18:13:05', '2015-07-16 20:21:32');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('26', 'Hope', 'Wolff', 'lionel.flatley@example.com', '1998-03-25', '2016-03-22 02:55:33', '2017-05-28 11:09:30');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('27', 'Henderson', 'Wolff', 'ariel.goldner@example.net', '1998-08-08', '2015-10-30 10:02:50', '2016-11-02 00:06:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('28', 'Lucinda', 'Quitzon', 'herzog.ron@example.org', '2017-05-09', '2019-09-13 14:39:55', '2010-10-20 21:42:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('29', 'Vincenza', 'Stanton', 'quigley.erna@example.net', '2002-08-14', '2016-08-25 08:43:38', '2020-08-03 04:58:35');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('30', 'Trent', 'Kris', 'rowan.monahan@example.net', '2010-06-13', '2015-06-03 15:43:31', '2015-07-30 02:59:21');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('31', 'Ulises', 'Kling', 'ispencer@example.org', '2008-09-17', '2012-01-27 07:10:26', '2012-07-12 10:32:51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('32', 'Beverly', 'Doyle', 'ireichert@example.net', '2012-06-24', '2017-02-11 22:52:23', '2018-10-07 08:50:33');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('33', 'Alfonso', 'O\'Connell', 'miller.tristian@example.net', '2017-10-06', '2018-06-23 09:12:27', '2011-08-07 06:22:19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('34', 'Laura', 'Eichmann', 'dianna.johns@example.net', '2005-09-29', '2020-02-21 05:58:53', '2017-08-01 08:48:03');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('35', 'Verlie', 'Deckow', 'armand77@example.org', '1992-10-28', '2012-01-25 09:46:31', '2020-09-03 09:47:25');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('36', 'Leonora', 'Farrell', 'verna.leffler@example.net', '2008-11-30', '2016-07-21 15:22:14', '2019-04-11 01:12:12');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('37', 'Chyna', 'Collins', 'fankunding@example.net', '2009-06-25', '2019-02-23 12:11:55', '2016-06-23 16:34:21');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('38', 'Kitty', 'Emard', 'mariah61@example.org', '2001-08-04', '2011-08-30 15:57:47', '2014-05-06 01:33:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('39', 'Piper', 'Lesch', 'rex00@example.com', '1996-03-05', '2014-06-18 07:34:37', '2019-06-23 19:14:21');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('40', 'Izabella', 'Zulauf', 'qbode@example.com', '1992-07-29', '2012-10-25 11:19:29', '2018-03-01 16:56:50');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('41', 'Eddie', 'Bosco', 'strosin.ervin@example.com', '1999-08-15', '2018-01-24 07:23:35', '2015-11-24 08:44:20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('42', 'Kattie', 'Schroeder', 'flossie.kuhic@example.com', '2000-06-10', '2020-06-08 02:09:57', '2018-04-17 17:29:02');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('43', 'Elenora', 'Wyman', 'hrosenbaum@example.net', '2008-07-19', '2015-06-06 16:55:26', '2015-12-26 00:33:13');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('44', 'Meta', 'Feeney', 'jose.keebler@example.com', '2001-04-18', '2018-05-07 20:32:05', '2017-06-16 14:21:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('45', 'Elyse', 'Jenkins', 'eino.baumbach@example.org', '2016-09-05', '2020-09-17 18:43:17', '2020-03-30 02:21:50');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('46', 'Nigel', 'Steuber', 'katlynn40@example.net', '1991-03-05', '2016-01-12 21:44:55', '2011-02-05 12:17:32');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('47', 'Arvid', 'Daugherty', 'windler.bella@example.net', '2014-12-21', '2011-12-13 01:30:39', '2015-09-29 18:09:51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('48', 'Filomena', 'Weissnat', 'alysha44@example.com', '2017-01-12', '2014-09-28 11:43:08', '2015-10-13 11:02:48');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('49', 'Skye', 'Purdy', 'greenholt.jaida@example.net', '1998-10-12', '2017-02-24 00:00:35', '2019-08-27 15:10:24');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('50', 'Ardith', 'Wolff', 'zkunze@example.com', '2015-12-29', '2014-05-18 14:35:41', '2018-07-28 18:46:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('51', 'Jermaine', 'Lemke', 'burdette.parisian@example.org', '2005-10-29', '2013-10-20 03:11:41', '2017-02-20 09:26:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('52', 'Courtney', 'Mann', 'mhills@example.net', '2004-07-30', '2013-10-09 06:31:21', '2016-07-20 15:06:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('53', 'Sadye', 'Labadie', 'santos70@example.org', '1999-12-12', '2013-06-09 13:33:14', '2018-11-10 14:37:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('54', 'Colten', 'Denesik', 'alexane.medhurst@example.com', '2007-01-09', '2012-10-28 18:51:45', '2018-11-19 19:30:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('55', 'Rosetta', 'Heaney', 'justen.denesik@example.net', '2011-06-07', '2015-06-08 16:15:50', '2012-04-24 02:34:23');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('56', 'Judy', 'Tromp', 'anna.pfeffer@example.org', '2017-09-19', '2019-10-24 05:30:56', '2018-02-11 19:17:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('57', 'Evert', 'Orn', 'wiza.rossie@example.com', '1992-11-27', '2011-04-25 20:35:08', '2013-05-05 22:35:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('58', 'Greg', 'Schuppe', 'efriesen@example.net', '2002-08-09', '2013-01-29 09:36:40', '2016-10-20 05:46:29');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('59', 'Bernice', 'Conroy', 'rreichel@example.org', '2011-11-28', '2014-04-24 14:06:38', '2018-02-03 17:36:26');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('60', 'Toby', 'Kub', 'iharvey@example.com', '2020-04-17', '2013-02-11 01:34:09', '2018-11-23 18:55:44');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('61', 'Audreanne', 'Wilkinson', 'fcarroll@example.org', '1996-01-12', '2016-02-24 00:07:45', '2012-02-18 16:13:52');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('62', 'D\'angelo', 'Kunde', 'purdy.lexie@example.com', '2013-12-17', '2015-11-16 09:44:11', '2017-12-12 09:44:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('63', 'Jayson', 'Feil', 'goyette.darrick@example.com', '2002-12-18', '2016-11-05 07:21:27', '2019-01-28 17:21:33');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('64', 'Sister', 'Hyatt', 'florence20@example.com', '2000-12-06', '2016-06-16 22:55:51', '2013-04-30 19:42:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('65', 'Yadira', 'Wuckert', 'kwiza@example.com', '2013-05-04', '2019-02-06 22:23:36', '2010-10-29 21:27:44');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('66', 'Vita', 'Smith', 'savanah34@example.org', '2001-09-24', '2012-03-18 15:30:36', '2011-05-06 12:58:51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('67', 'Isac', 'Durgan', 'angus24@example.net', '2002-11-29', '2017-10-17 06:38:49', '2017-01-03 02:44:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('68', 'Elyse', 'Simonis', 'ikuvalis@example.com', '2002-06-01', '2015-10-19 14:17:36', '2016-10-26 20:11:01');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('69', 'Brenden', 'Langworth', 'veum.pete@example.com', '2013-11-10', '2016-11-02 11:30:21', '2017-04-22 00:12:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('70', 'Lysanne', 'Stark', 'leda83@example.org', '1997-06-17', '2011-12-01 12:45:01', '2013-10-07 16:53:20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('71', 'Oswaldo', 'Gutmann', 'leuschke.tess@example.org', '2011-04-06', '2017-11-24 11:52:51', '2013-10-13 15:35:22');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('72', 'Logan', 'Johnston', 'okuneva.jaylin@example.net', '1994-03-05', '2017-09-07 00:59:01', '2013-07-28 07:33:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('73', 'Kian', 'Armstrong', 'polly.mertz@example.org', '1990-12-21', '2014-03-13 13:45:47', '2011-09-27 08:20:33');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('74', 'Charlotte', 'Padberg', 'aufderhar.nelle@example.org', '2015-12-15', '2011-02-18 03:49:49', '2020-03-29 12:23:51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('75', 'Lucinda', 'Rodriguez', 'felicita80@example.com', '1993-09-29', '2011-09-19 01:54:10', '2014-05-22 00:41:23');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('76', 'Gerald', 'Cormier', 'azulauf@example.com', '2011-12-03', '2020-05-06 22:58:08', '2018-01-29 01:28:05');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('77', 'Reuben', 'Quitzon', 'bbrakus@example.org', '2018-09-24', '2015-01-12 11:38:08', '2015-07-03 10:42:48');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('78', 'Kip', 'Klein', 'huel.kailyn@example.com', '1996-06-04', '2016-02-26 19:47:47', '2013-06-27 13:22:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('79', 'Isai', 'Von', 'tate.sawayn@example.net', '1992-10-14', '2014-11-01 08:16:58', '2012-11-19 05:01:57');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('80', 'Florian', 'Bosco', 'brakus.ludwig@example.org', '2004-05-27', '2010-11-04 09:16:26', '2015-03-22 11:33:51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('81', 'Adriel', 'Lindgren', 'katelin.treutel@example.com', '1995-06-06', '2014-06-28 00:39:52', '2015-04-08 02:09:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('82', 'Lillian', 'Leannon', 'eratke@example.org', '1995-01-01', '2011-11-29 07:01:33', '2018-10-22 21:00:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('83', 'Fletcher', 'Zboncak', 'giovanna.bergnaum@example.org', '2008-10-18', '2018-01-01 21:09:54', '2018-02-22 22:14:05');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('84', 'Ramiro', 'Stehr', 'gusikowski.aidan@example.org', '2008-05-25', '2020-09-01 15:13:22', '2016-12-21 10:11:13');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('85', 'Hosea', 'Konopelski', 'zpfannerstill@example.com', '1996-07-21', '2016-12-01 07:31:58', '2014-09-13 12:19:35');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('86', 'Marshall', 'Kunde', 'prippin@example.net', '1994-01-26', '2014-02-28 06:05:48', '2017-05-31 20:51:57');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('87', 'Kirk', 'Nikolaus', 'madison.romaguera@example.com', '2017-05-29', '2019-10-22 14:29:34', '2015-03-28 01:38:26');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('88', 'Deven', 'Sanford', 'mohr.trace@example.com', '2019-02-13', '2011-08-12 14:28:31', '2014-12-07 07:32:16');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('89', 'Ari', 'Monahan', 'mark24@example.org', '2009-06-23', '2011-10-04 09:15:01', '2011-03-07 07:07:05');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('90', 'Antwan', 'Spencer', 'reyna72@example.net', '2015-06-14', '2011-08-14 10:55:29', '2014-08-09 05:18:48');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('91', 'Jonathon', 'Lubowitz', 'gilda.orn@example.com', '2010-06-01', '2018-08-06 10:24:42', '2011-04-21 14:04:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('92', 'Jazmin', 'Schaden', 'corkery.celine@example.net', '2009-10-29', '2018-07-23 06:49:27', '2015-08-02 06:28:23');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('93', 'Garrick', 'Pollich', 'gulgowski.josie@example.org', '1991-06-09', '2012-02-18 11:47:49', '2016-06-11 00:40:29');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('94', 'Zoie', 'Lakin', 'hailee60@example.com', '2018-05-15', '2015-12-10 01:00:47', '2019-08-26 05:59:38');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('95', 'Dylan', 'Heaney', 'graciela78@example.org', '1997-12-16', '2016-08-05 13:36:23', '2016-10-28 02:02:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('96', 'Sierra', 'Haag', 'devyn.crooks@example.net', '2015-04-24', '2012-09-28 01:45:49', '2016-05-02 01:55:57');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('97', 'Yessenia', 'Barton', 'chadd56@example.net', '1991-12-23', '2016-08-25 23:06:29', '2010-10-31 21:44:19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('98', 'Alice', 'Hansen', 'ottilie76@example.net', '2002-05-02', '2014-09-14 13:24:56', '2020-07-11 14:04:58');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('99', 'Ursula', 'Lebsack', 'fhills@example.org', '2007-12-01', '2014-02-09 23:55:44', '2015-08-05 15:12:09');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday_at`, `created_at`, `updated_at`) VALUES ('100', 'Selina', 'Ebert', 'wolff.will@example.com', '2010-03-16', '2020-08-21 03:48:44', '2020-06-23 05:06:50');

DROP TABLE IF EXISTS genres;
CREATE TABLE genres (
	id SERIAL PRIMARY KEY COMMENT 'Идентификатор жанра',
	name VARCHAR(50) UNIQUE COMMENT 'Название жанра',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Жанры';

INSERT INTO genres(name) VALUES 
	('Dance/Electronic'),
	('Hip Hop'),
	('Metal'),
	('Pop'),
	('Punk'),
	('Rock');

DROP TABLE IF EXISTS artists;
CREATE TABLE artists (
	id SERIAL PRIMARY KEY COMMENT 'Идентификатор исполнителя',
	name VARCHAR(50) UNIQUE COMMENT 'Имя исполнителя',
	rating INT UNSIGNED COMMENT 'Рейтинг исполнителя',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Исполнители';

INSERT INTO artists(name) VALUES 
	('Big Baby Tape'),
	('Husky'),
	('Гражданская оборона'),
	('Mnogoznaal'),
	('Макс Корж'),
	('ATL'),
	('Hatebreed'),
	('LSP'),
	('Linkin Park');

DROP TABLE IF EXISTS artists_genres;
CREATE TABLE artists_genres (
	artist_id BIGINT UNSIGNED NOT NULL COMMENT 'Идентификатор исполнителя',
	genre_id BIGINT UNSIGNED NOT NULL COMMENT 'Идентификатор жанра',
	CONSTRAINT artists_genres_artist_id_fk FOREIGN KEY (artist_id) REFERENCES artists(id) ON DELETE CASCADE
) COMMENT = 'Жанры исполнителей';

INSERT INTO artists_genres(artist_id, genre_id) VALUES
	(1, 1),
	(1, 2),
	(2, 1),
	(2, 2),
	(2, 5),
	(3, 5),
	(3, 6),
	(4, 1),
	(4, 2),
	(5, 1),
	(5, 2),
	(6, 1),
	(6, 5),
	(7, 3),
	(8, 3),
	(8, 4),
	(8, 2),
	(8, 6);

-- Жанры явно задаются, тк альбомы от исполнителя порой выходят в другом жанре
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
	id SERIAL PRIMARY KEY COMMENT 'Идентификатор альбома',
	name VARCHAR(50) COMMENT 'Название альбома',
	rating INT UNSIGNED COMMENT 'Рейтинг альбома',
-- 	genre_id BIGINT UNSIGNED COMMENT 'Идентификатор жанра',
	artist_id BIGINT UNSIGNED COMMENT 'Идентификатор исполнителя',
	CONSTRAINT albums_artist_id_fk FOREIGN KEY (artist_id) REFERENCES artists(id) ON DELETE CASCADE,
	created_at DATETIME DEFAULT (NOW() - INTERVAL (RAND()*90) DAY),
	updated_at DATETIME DEFAULT (NOW() - INTERVAL (RAND()*90) DAY) ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Альбомы';

INSERT INTO albums(name, artist_id) VALUES 
	('Dragonborn', 1),
	('ARGUMENTS & FACTS', 1),
	('Любимые пени воображаемых людей', 2),
	('Автопортреты', 2),
	('The Best Pt. 3', 3),
	('Гостиница Космос', 4),
	('Малый повзрослел, Ч.1', 5),
	('Забил', 6),
	('Weight of the False Self', 7),
	('One More City', 8),
	('One More Light', 9);

DROP TABLE IF EXISTS albums_genres;
CREATE TABLE albums_genres (
	album_id BIGINT UNSIGNED NOT NULL COMMENT 'Идентификатор исполнителя',
	genre_id BIGINT UNSIGNED NOT NULL COMMENT 'Идентификатор жанра',
	CONSTRAINT albums_genres_albums_id_fk FOREIGN KEY (album_id) REFERENCES albums(id) ON DELETE CASCADE
) COMMENT = 'Жанры исполнителей';

INSERT INTO albums_genres(album_id, genre_id) VALUES
	(1, 1),
	(2, 2),
	(3, 1),
	(3, 2),
	(4, 5),
	(5, 5),
	(5, 6),
	(6, 1),
	(6, 2),
	(7, 1),
	(7, 2),
	(8, 1),
	(8, 5),
	(9, 3),
	(9, 3),
	(10, 4),
	(10, 2),
	(10, 6),
	(11, 6);

-- Жанры явно задаются, тк песни от исполнителя порой выходят в другом жанре
DROP TABLE IF EXISTS tracks;
CREATE TABLE tracks (
	id SERIAL PRIMARY KEY COMMENT 'Идентификатор трека',
	name VARCHAR(50) COMMENT 'Название трека',
	rating INT UNSIGNED COMMENT 'Рейтинг трека',
-- 	genre_id BIGINT UNSIGNED COMMENT 'Идентификатор жанра',
	artist_id BIGINT UNSIGNED COMMENT 'Идентификатор исполнителя',
	album_id BIGINT UNSIGNED COMMENT 'Идентификатор альбома',
	CONSTRAINT tracks_artist_id_fk FOREIGN KEY (artist_id) REFERENCES artists(id) ON DELETE CASCADE,
	CONSTRAINT tracks_album_id_fk FOREIGN KEY (album_id) REFERENCES albums(id) ON DELETE CASCADE,
	created_at DATETIME DEFAULT (NOW() - INTERVAL (RAND()*90) DAY),
	updated_at DATETIME DEFAULT (NOW() - INTERVAL (RAND()*90) DAY) ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Треки';

CREATE INDEX tracks_id_idx ON tracks(id);
CREATE INDEX tracks_name_idx ON tracks(name);
CREATE INDEX tracks_rating_idx ON tracks(rating);

INSERT INTO tracks(name, artist_id, album_id) VALUES 
	('DB Intro', 1, 1), 
	('Dragonborn', 1, 1), 
	('ACAB', 1, 1), 
	('Benzo Gang Money', 1, 1), 
	('Wasabi', 1, 1), 
	('Project X', 1, 1), 
	('Vampire Type Bitch', 1, 1), 
	('Blast!', 1, 1),
	('Boyz From The Hood', 1, 1),
	('Hokage', 1, 1),
	('1000 Shells', 1, 1),
	('Cream Soda', 1, 1),
	('98 Flow', 1, 1),
	('Hot Wigga', 1, 1),
	('Flip Phone Twerk', 1, 1),
	('MILF', 1, 1),
	('Konichiwa', 1, 1),
	('Gucci Kandelaki 2016', 1, 1),
	('Hadouken!', 1, 1),
	('Gimme The Loot', 1, 1),
	('Coldfront', 1, 1),
	('Hard 2 Kill', 1, 1),
	('DB Outro', 1, 1),
	('FAX', 1, 2),
	('Surname', 1, 2),
	('Brigada', 1, 2),
	('Weight', 1, 2),
	('Balaclava', 1, 2),
	('Ай', 2, 3),
	('Бит шатает голову', 2, 3),
	('Панелька', 2, 3),
	('Заново', 2, 3),
	('Пуля дура', 2, 3),
	('Пироман 17', 2, 3),
	('Аллилуйя', 2, 3),
	('Мармелад', 2, 3),
	('Фюрер', 2, 3),
	('Черным-черно', 2, 3),
	('Хозяйка', 2, 3),
	('Детка-голливуд', 2, 3),
	('Мультики', 2, 3),
	('Дурачок', 2, 4),
	('Тараканий бог', 2, 4),
	('Господин собака', 2, 4),
	('Крот', 2, 4),
	('Отопление', 2, 4),
	('Бэнг бэнг', 2, 4),
	('Никто не хотел умирать', 3, 5),
	('Он увидел солнце', 3, 5),
	('Среди зараженного логикой мира', 3, 5),
	('Наваждение', 3, 5),
	('Сквозь дыру в моей голове', 3, 5),
	('Кого-то еще', 3, 5),
	('Непонятная песенка', 3, 5),
	('Скоро настанет совсем', 3, 5),
	('Харакири', 3, 5),
	('Хороший автобус', 3, 5),
	('Вершки и корешки', 3, 5),
	('Мимикрия', 3, 5),
	('Вечная весна', 3, 5),
	('Отряд не заметил потери бойца', 3, 5),
	('Про червячков', 3, 5),
	('Родина', 3, 5),
	('Беспонтовый пирожок', 3, 5),
	('Собаки', 3, 5),
	('Снаружи всех измерений', 3, 5),
	('Гостиница Космос', 4, 6),
	('Девятины', 4, 6),
	('Крики в никуда', 4, 6),
	('JUD', 4, 6),
	('Шахбокс', 4, 6),
	('Z-PAM', 4, 6),
	('Минус 40', 4, 6),
	('Среди них', 4, 6),
	('Речная часть', 4, 6),
	('Свое заберу', 5, 7),
	('Малый повзрослел', 5, 7),
	('Маклауд', 5, 7),
	('Стилево', 5, 7),
	('Без косяка', 5, 7),
	('Крутой чел', 5, 7),
	('Настоящий', 5, 7),
	('Эмилия', 5, 7),
	('Мой друг', 5, 7),
	('Забил', 6, 8),
	('Weight of the False Self', 7, 9),
	('Золотой мальчик', 8, 10),
	('Поп-звезда', 8, 10),
	('Мамонтенок', 8, 10),
	('Девочка-пришелец', 8, 10),
	('Парный дурак', 8, 10),
	('Золушка', 8, 10),
	('Ууу', 8, 10),
	('Бинокль', 8, 10),
	('Именно такой', 8, 10),
	('Амнезия', 8, 10),
	('Цветная бумага', 8, 10),
	('Один', 8, 10),
	('Дюны', 8, 10),
	('10 негритят', 8, 10),
	('Вспоминай', 8, 10),
	('Nobody Can Save Me', 9, 11),
	('Good Goodbye', 9, 11),
	('Talking to Myself', 9, 11),
	('Battle Symphony', 9, 11),
	('Invisible', 9, 11),
	('Heavy', 9, 11),
	('Sorry for Now', 9, 11),
	('Halfway Right', 9, 11),
	('One More Light', 9, 11),
	('Sharp Edges', 9, 11);

DROP TABLE IF EXISTS tracks_genres;
CREATE TABLE tracks_genres (
	track_id BIGINT UNSIGNED NOT NULL COMMENT 'Идентификатор трека',
	genre_id BIGINT UNSIGNED NOT NULL COMMENT 'Идентификатор жанра',
	CONSTRAINT tracks_genres_track_id_fk FOREIGN KEY (track_id) REFERENCES tracks(id) ON DELETE CASCADE,
	CONSTRAINT tracks_genres_genre_id_fk FOREIGN KEY (genre_id) REFERENCES genres(id) ON DELETE CASCADE
) COMMENT = 'Жанры треков';

INSERT INTO `tracks_genres` VALUES ('9','5'),
('104','2'),
('29','6'),
('24','6'),
('14','6'),
('7','6'),
('27','4'),
('66','3'),
('70','1'),
('96','6'),
('68','1'),
('103','6'),
('100','4'),
('73','5'),
('96','4'),
('75','6'),
('53','4'),
('22','5'),
('55','3'),
('77','4'),
('29','5'),
('57','3'),
('45','1'),
('103','1'),
('23','5'),
('3','5'),
('106','6'),
('84','6'),
('57','3'),
('74','3'),
('8','3'),
('33','4'),
('106','3'),
('30','3'),
('99','6'),
('6','1'),
('79','4'),
('71','1'),
('74','4'),
('16','6'),
('39','1'),
('75','2'),
('12','3'),
('15','4'),
('94','5'),
('108','6'),
('16','2'),
('50','1'),
('84','5'),
('59','4'),
('75','4'),
('87','3'),
('16','3'),
('55','5'),
('109','4'),
('75','2'),
('88','3'),
('68','6'),
('87','5'),
('56','4'),
('61','3'),
('59','5'),
('82','6'),
('85','3'),
('77','2'),
('14','3'),
('97','6'),
('82','1'),
('36','2'),
('91','2'),
('96','3'),
('69','4'),
('92','2'),
('60','4'),
('108','1'),
('25','4'),
('57','5'),
('22','2'),
('81','6'),
('81','3'),
('28','6'),
('85','1'),
('84','4'),
('15','1'),
('81','6'),
('42','4'),
('47','6'),
('26','2'),
('25','5'),
('95','2'),
('90','1'),
('79','2'),
('92','6'),
('63','4'),
('96','2'),
('106','1'),
('16','5'),
('25','6'),
('25','3'),
('108','6'),
('32','3'),
('59','5'),
('38','5'),
('107','4'),
('59','5'),
('83','2'),
('99','3'),
('72','5'),
('40','2'),
('30','2'),
('55','2'),
('35','4'),
('104','4'),
('58','1'),
('98','3'),
('11','2'),
('92','4'),
('98','1'),
('43','6'),
('80','6'),
('73','3'),
('28','4'),
('102','6'),
('29','2'),
('11','4'),
('54','4'),
('82','5'),
('25','5'),
('37','5'),
('92','2'),
('26','6'),
('43','1'),
('61','2'),
('24','6'),
('11','6'),
('94','5'),
('44','1'),
('33','2'),
('109','4'),
('65','1'),
('9','1'),
('75','5'),
('95','6'),
('54','2'),
('71','2'),
('43','6'),
('26','5'),
('103','5'),
('3','1'),
('79','1'),
('8','4'),
('97','3'),
('72','1'),
('86','4'),
('80','3'),
('79','5'),
('46','3'),
('68','2'),
('30','1'),
('49','6'),
('45','5'),
('86','4'),
('66','5'),
('45','4'),
('93','1'),
('82','6'),
('74','4'),
('41','2'),
('85','1'),
('104','3'),
('56','4'),
('30','6'),
('1','6'),
('20','2'),
('107','4'),
('21','3'),
('49','6'),
('109','1'),
('73','3'),
('71','3'),
('55','3'),
('44','1'),
('108','5'),
('51','5'),
('100','3'),
('23','3'),
('3','3'),
('34','1'),
('37','3'),
('34','2'),
('10','3'),
('72','4'),
('50','4'),
('61','1'),
('1','2'),
('65','3'),
('62','6'),
('72','4'),
('81','1'),
('29','4'),
('55','3'),
('3','4'),
('103','2'),
('60','2'),
('89','6'),
('61','6'),
('36','2'),
('45','5'),
('90','6'),
('97','5'),
('16','3'),
('34','5'),
('48','6'),
('25','1'),
('5','3'),
('87','4'),
('104','5'),
('4','6'),
('14','4'),
('12','6'),
('45','4'),
('88','5'),
('93','2'),
('55','4'),
('16','3'),
('50','2'),
('90','5'),
('108','2'),
('77','2'),
('43','5'),
('75','1'),
('30','4'),
('108','2'),
('50','1'),
('97','4'),
('111','2'),
('21','5'),
('111','1'),
('109','3'),
('73','1'),
('95','1'),
('45','4'),
('95','3'),
('99','4'),
('63','2'),
('32','2'),
('50','4'),
('92','3'),
('94','2'),
('55','5'),
('91','3'),
('110','6'),
('32','6'),
('2','2'),
('52','4'),
('43','2'),
('85','5'),
('108','4'),
('18','6'),
('18','5'),
('16','3'),
('107','4'),
('110','5'),
('110','5'),
('7','3'),
('61','6'),
('109','4'),
('97','2'),
('57','6'),
('58','6'),
('61','6'),
('32','2'),
('77','2'),
('104','6'),
('14','1'),
('65','2'),
('59','4'),
('93','4'),
('37','5'),
('39','3'),
('35','6'),
('30','2'),
('47','1'),
('60','6'),
('2','1'),
('100','4'),
('108','2'),
('98','4'),
('49','5'),
('57','4'),
('100','1'),
('90','3'),
('71','4'),
('106','6'),
('53','2'),
('39','5'),
('21','4'),
('7','4'),
('83','4'),
('59','5'),
('74','3'),
('36','4'),
('67','2'),
('32','1'),
('2','5'),
('66','6'),
('99','3'),
('38','4'),
('6','2'),
('54','4'),
('65','6'),
('33','5'),
('50','3'),
('41','2'),
('106','6'),
('106','4'),
('34','2'),
('27','6'),
('53','4'),
('104','3'),
('36','4'),
('44','2'),
('103','5'),
('82','6'),
('2','2'),
('55','4'),
('7','5'),
('40','4'),
('16','5'),
('78','1'),
('67','4'),
('79','6'),
('103','6'),
('90','3'),
('52','5'),
('99','5'),
('29','2'),
('111','2'),
('1','5'),
('18','1'),
('106','4'),
('69','1'),
('48','6'),
('57','4'),
('77','2'),
('73','2'),
('95','3'),
('22','5'),
('34','6'),
('19','5'),
('81','1'),
('62','6'),
('37','4'),
('20','3'),
('32','2'),
('40','2'),
('109','6'),
('28','3'),
('106','5'),
('107','4'),
('107','4'),
('103','5'),
('108','1'),
('65','2'),
('13','5'),
('4','6'),
('89','4'),
('93','1'),
('15','1'),
('52','3'),
('38','5'),
('73','2'),
('89','6'),
('80','5'),
('73','5'),
('43','4'),
('33','2'),
('48','2'),
('48','1'),
('58','4'),
('84','4'),
('42','4'),
('16','2'),
('76','2'),
('24','1'),
('77','4'),
('107','3'),
('97','5'),
('28','4'),
('56','6'),
('30','6'),
('58','4'),
('22','6'),
('90','4'),
('106','2'),
('18','5'),
('98','4'),
('29','1'),
('83','6'),
('33','6'),
('8','6'),
('57','1'),
('37','3'),
('88','4'),
('107','2'),
('54','2'),
('20','6'),
('87','3'),
('106','4'),
('111','6'),
('102','1'),
('68','5'),
('76','6'),
('91','3'),
('90','1'),
('43','6'),
('10','6'),
('101','3'),
('30','5'),
('109','2'),
('110','3'),
('51','1'),
('51','2'),
('59','3'),
('91','4'),
('35','5'),
('75','6'),
('59','3'),
('88','3'),
('87','4'),
('49','1'),
('53','4'),
('6','3'),
('104','2'),
('8','6'),
('60','1'),
('41','6'),
('24','5'),
('25','5'),
('26','1'),
('30','4'),
('86','6'),
('51','2'),
('33','2'),
('71','1'),
('94','1'),
('27','2'),
('66','2'),
('77','4'),
('67','5'),
('48','1'),
('90','5'),
('15','1'),
('69','3'),
('84','6'),
('44','1'),
('43','1'),
('107','6'),
('51','2'),
('11','1'),
('37','6'),
('18','4'),
('28','5'),
('94','6'),
('31','3'),
('77','5'),
('65','3'),
('56','5'),
('57','1'),
('7','2'),
('108','3'),
('32','3'),
('69','2'),
('22','1'),
('54','2'),
('18','5'),
('25','2'),
('42','3'),
('8','2'),
('45','3'),
('73','1'),
('6','2'),
('64','4'),
('105','1'),
('74','1'),
('39','4'),
('51','4'),
('110','1'),
('97','2'),
('16','3'),
('53','2'),
('18','5'),
('69','4'),
('18','5'),
('83','4'),
('3','3'),
('72','1'),
('71','2'),
('69','4'),
('34','2'); 

DROP TABLE IF EXISTS featuring_tracks;
CREATE TABLE featuring_tracks (
	track_id BIGINT UNSIGNED COMMENT 'Идентификатор трека',
	feat_id BIGINT UNSIGNED COMMENT 'Идентификатор соисполнителя',
	CONSTRAINT featuring_tracks_feat_id_fk FOREIGN KEY (feat_id) REFERENCES artists(id) ON DELETE CASCADE
) COMMENT = 'Фиты';

INSERT INTO `featuring_tracks` VALUES 
('62','6'),
('85','5'),
('85','3'),
('82','9'),
('82','6'),
('82','8'),
('54','3'),
('6','7'),
('62','6'),
('62','8'),
('62','7'),
('62','2'),
('16','3'),
('16','9'),
('16','4'),
('16','2'),
('30','5'),
('19','7'),
('19','5'),
('19','8'),
('35','5'),
('35','1'),
('24','9'),
('24','5'),
('41','5'),
('41','1'),
('41','7'),
('41','6'),
('8','3'),
('8','8'),
('8','9'),
('74','8'),
('74','2'),
('74','6'),
('74','9'),
('91','5'),
('3','2'),
('3','5'),
('3','7'),
('13','2'); 

DROP TABLE IF EXISTS playlists;
CREATE TABLE playlists (
	id SERIAL PRIMARY KEY COMMENT 'Идентификатор плейлиста',
	name VARCHAR(50) COMMENT 'Название плейлиста',
	rating INT UNSIGNED COMMENT 'Рейтинг плейлиста',
	created_by BIGINT UNSIGNED COMMENT 'Идентификатор пользователя',
	CONSTRAINT playlists_user_id_fk FOREIGN KEY (created_by) REFERENCES users(id) ON DELETE CASCADE,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Плейлисты';

INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('1', 'Dolores voluptatem error voluptatem.', 0, '8', '2013-01-21 11:20:25', '2013-10-15 10:01:12');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('2', 'Ut et temporibus consequuntur sit.', 0, '9', '2014-12-14 04:30:35', '2016-09-05 11:41:16');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('3', 'Iusto cum sit.', 0, '62', '2012-04-13 12:00:19', '2016-08-19 13:56:50');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('4', 'Iure aut ut voluptatum officia.', 0, '66', '2013-04-13 15:57:02', '2019-12-28 11:30:57');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('5', 'Sequi nobis consequatur odit optio.', 0, '73', '2014-09-06 12:10:17', '2012-05-14 04:50:21');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('6', 'Sapiente neque ut delectus accusantium accusantium', 0, '57', '2014-02-27 15:56:30', '2013-08-09 04:11:38');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('7', 'Eum quae ipsa consequatur incidunt.', 0, '60', '2013-10-05 18:06:32', '2010-11-29 04:34:23');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('8', 'Ut tenetur explicabo iure aut velit.', 0, '7', '2011-07-16 09:56:02', '2013-08-03 21:50:22');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('9', 'Aliquid vitae a quae maxime.', 0, '56', '2016-12-18 17:54:19', '2014-05-13 01:40:40');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('10', 'Dolor dolorum aut ut.', 0, '90', '2011-02-14 12:01:42', '2020-04-23 11:13:32');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('11', 'Rerum non quod laboriosam est illum.', 0, '8', '2011-11-26 05:13:05', '2017-05-06 03:26:28');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('12', 'Deleniti autem quos dolore.', 0, '36', '2014-08-10 18:54:59', '2019-09-30 03:01:59');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('13', 'Eaque asperiores dolorem corrupti.', 0, '32', '2011-11-17 10:57:50', '2015-03-16 22:35:57');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('14', 'Libero et debitis.', 0, '60', '2013-08-14 20:10:25', '2015-11-27 00:24:38');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('15', 'Illum eligendi nobis.', 0, '25', '2018-07-05 07:02:12', '2010-12-27 13:54:11');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('16', 'Quos voluptates neque qui.', 0, '51', '2015-07-28 08:27:31', '2012-03-10 02:15:40');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('17', 'Voluptatibus aut quia quia amet.', 0, '5', '2015-08-01 19:57:59', '2011-12-31 13:51:41');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('18', 'Occaecati qui labore aut.', 0, '67', '2015-01-14 16:42:35', '2011-04-11 12:35:16');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('19', 'Pariatur sint dolorum voluptate.', 0, '13', '2015-08-29 12:59:16', '2013-12-28 10:33:58');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('20', 'Fugiat est voluptatem hic vitae.', 0, '28', '2014-05-21 01:30:33', '2012-06-10 16:48:39');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('21', 'Perferendis enim sit est veniam.', 0, '51', '2018-03-25 17:07:54', '2016-06-13 03:13:44');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('22', 'Cum ut sit aut ullam.', 0, '14', '2012-11-24 19:25:33', '2014-10-20 15:11:50');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('23', 'Quas ea rerum qui est.', 0, '19', '2011-09-30 09:35:52', '2019-05-25 18:55:28');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('24', 'Et non deleniti recusandae.', 0, '70', '2012-12-30 11:19:19', '2015-10-06 00:55:56');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('25', 'Maxime unde et sit.', 0, '29', '2016-05-30 15:26:47', '2012-04-11 07:22:13');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('26', 'Quas pariatur quia voluptatem.', 0, '76', '2012-07-05 06:10:46', '2017-10-25 05:11:41');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('27', 'Amet aut maiores ex.', 0, '82', '2012-11-22 03:57:28', '2017-01-17 20:52:04');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('28', 'Fuga voluptatibus cum vitae voluptatem.', 0, '71', '2017-06-10 07:18:15', '2012-08-22 22:57:55');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('29', 'Repellendus nam hic perferendis.', 0, '6', '2012-10-25 23:39:04', '2011-09-23 08:52:06');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('30', 'Maiores quia laboriosam.', 0, '32', '2015-01-22 04:49:52', '2020-01-28 17:49:11');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('31', 'Laboriosam est qui ut quis.', 0, '8', '2014-07-25 14:43:06', '2014-11-06 05:10:48');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('32', 'Dolorem et necessitatibus illum rerum non.', 0, '14', '2013-12-16 05:43:25', '2014-05-23 11:41:56');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('33', 'Sit non magnam aliquam quasi.', 0, '40', '2020-01-26 00:10:17', '2016-06-05 18:40:50');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('34', 'Expedita impedit ratione voluptatem quisquam earum', 0, '69', '2019-02-21 03:10:05', '2013-04-16 19:35:10');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('35', 'Cum rerum qui culpa qui.', 0, '80', '2020-08-14 11:58:52', '2014-09-17 06:56:51');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('36', 'Sed voluptas nesciunt rerum.', 0, '12', '2019-10-05 14:08:16', '2013-09-04 04:40:21');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('37', 'Vel mollitia cumque ad.', 0, '25', '2015-09-06 03:22:29', '2015-03-29 09:33:38');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('38', 'Non sit ratione quos iste.', 0, '39', '2019-02-09 21:58:01', '2013-04-26 10:08:39');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('39', 'Aut molestiae esse qui.', 0, '19', '2018-11-07 17:04:24', '2015-07-13 20:14:38');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('40', 'At animi blanditiis doloremque quo.', 0, '81', '2011-12-01 18:03:43', '2014-05-02 08:29:40');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('41', 'Omnis iste unde omnis numquam voluptatibus.', 0, '29', '2011-12-19 22:40:01', '2014-11-28 02:31:03');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('42', 'Distinctio vitae sint sit.', 0, '26', '2011-05-05 15:52:09', '2019-05-29 10:33:15');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('43', 'Sunt quia molestiae aliquid.', 0, '16', '2019-03-04 00:22:33', '2015-12-02 21:29:14');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('44', 'Odio sint ex.', 0, '60', '2013-08-04 21:06:10', '2016-09-28 20:50:20');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('45', 'Et consequatur iure sapiente architecto distinctio', 0, '86', '2013-01-07 19:38:39', '2011-12-28 12:51:05');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('46', 'Consequuntur velit aliquid.', 0, '41', '2017-09-22 04:04:22', '2012-07-13 08:45:17');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('47', 'Qui laudantium natus voluptas placeat saepe.', 0, '10', '2020-05-02 05:53:47', '2017-01-01 04:40:03');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('48', 'Laudantium fuga cum minus.', 0, '90', '2014-12-26 10:49:27', '2018-11-26 09:26:47');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('49', 'Nulla enim illo hic suscipit.', 0, '7', '2019-05-14 21:27:40', '2018-11-24 23:02:01');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('50', 'Quia iusto quis quia.', 0, '23', '2016-10-31 06:30:15', '2012-09-27 14:54:53');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('51', 'Rerum laborum et libero.', 0, '17', '2016-04-21 05:12:37', '2017-07-17 03:14:04');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('52', 'Velit illum suscipit quo dolor.', 0, '57', '2011-08-01 01:54:08', '2018-03-01 20:11:27');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('53', 'Nemo et ipsam iure iste.', 0, '37', '2012-10-31 10:39:32', '2017-07-18 21:31:58');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('54', 'Est maiores eos pariatur.', 0, '35', '2010-10-25 12:23:23', '2011-07-15 23:27:23');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('55', 'Voluptas est non non est.', 0, '27', '2018-04-16 01:44:46', '2019-12-18 02:37:13');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('56', 'Autem nesciunt at quos.', 0, '65', '2014-07-23 15:27:23', '2018-07-05 20:27:35');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('57', 'Ut numquam doloribus quo sed.', 0, '11', '2016-08-10 00:36:21', '2019-08-20 14:37:23');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('58', 'Omnis illo est quas quia neque.', 0, '8', '2019-06-14 02:12:46', '2019-10-04 22:27:30');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('59', 'Iure fugit explicabo quibusdam.', 0, '36', '2015-05-18 02:50:12', '2015-01-29 15:51:11');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('60', 'Eaque nobis ullam molestiae ut.', 0, '16', '2018-02-26 02:51:21', '2017-01-19 12:56:21');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('61', 'Praesentium aut est deserunt molestias.', 0, '39', '2017-10-09 19:48:23', '2020-09-09 05:19:45');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('62', 'Unde vitae natus laboriosam repudiandae.', 0, '43', '2016-03-24 19:39:48', '2019-04-29 16:33:27');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('63', 'Vero praesentium velit sunt commodi.', 0, '30', '2011-02-08 17:59:12', '2013-05-03 17:56:42');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('64', 'Et ut repellat deleniti.', 0, '79', '2013-06-03 19:15:55', '2016-01-09 10:35:13');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('65', 'Quis consectetur ab autem.', 0, '12', '2016-11-29 14:31:04', '2019-11-03 13:54:45');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('66', 'Doloremque blanditiis tempora numquam deleniti cul', 0, '9', '2017-10-29 04:06:30', '2014-11-07 23:17:51');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('67', 'Dolore fuga rerum quibusdam voluptas.', 0, '91', '2018-01-14 04:25:00', '2013-02-02 13:49:44');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('68', 'At consequuntur ipsam perferendis sapiente et.', 0, '36', '2020-04-07 01:01:55', '2018-02-04 09:15:12');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('69', 'Consequuntur repellendus reprehenderit inventore e', 0, '48', '2014-04-12 00:06:35', '2014-10-27 16:39:49');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('70', 'Sunt recusandae repudiandae.', 0, '10', '2013-04-09 22:04:38', '2019-06-05 05:16:46');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('71', 'Et placeat nihil ipsam.', 0, '17', '2017-01-01 02:26:55', '2018-10-23 12:04:19');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('72', 'Dolor et nihil mollitia.', 0, '76', '2014-09-16 20:33:34', '2019-02-28 08:42:38');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('73', 'Autem provident laudantium officiis.', 0, '35', '2013-02-07 23:43:44', '2018-08-04 16:42:28');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('74', 'Qui enim maiores.', 0, '32', '2015-12-21 02:17:22', '2018-05-07 07:27:06');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('75', 'Nesciunt harum voluptatum.', 0, '35', '2014-11-22 02:47:10', '2013-10-23 13:07:11');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('76', 'Voluptas quam corporis.', 0, '21', '2020-02-05 19:28:25', '2019-04-08 21:55:27');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('77', 'Dolores qui mollitia atque incidunt.', 0, '73', '2016-05-31 12:18:04', '2017-10-26 15:37:36');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('78', 'Quo voluptas dignissimos aut.', 0, '45', '2017-10-10 18:18:32', '2018-12-31 12:24:50');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('79', 'Id aperiam aut quo.', 0, '10', '2014-07-02 06:20:36', '2019-01-28 14:24:46');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('80', 'Assumenda voluptatem perspiciatis iure sed.', 0, '79', '2020-08-20 16:49:13', '2015-08-08 22:19:47');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('81', 'Dolores explicabo mollitia id maiores aliquid.', 0, '68', '2012-02-04 09:18:34', '2012-12-06 21:26:28');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('82', 'Est quod est sed dolor a.', 0, '27', '2016-08-19 17:38:24', '2012-12-10 21:32:22');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('83', 'Repudiandae dolorem tempore qui.', 0, '36', '2018-03-29 09:17:38', '2015-11-12 21:15:25');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('84', 'Sit error sit est magni vitae.', 0, '4', '2014-12-28 12:21:15', '2013-08-24 18:55:07');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('85', 'Rerum non cumque.', 0, '62', '2015-07-09 12:20:02', '2015-12-08 09:50:45');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('86', 'Aut totam magni.', 0, '63', '2017-03-17 23:12:02', '2017-02-04 07:14:38');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('87', 'Enim aliquam quas ea fuga.', 0, '69', '2016-11-06 04:01:46', '2012-04-08 09:30:00');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('88', 'Hic quae accusamus harum.', 0, '72', '2017-09-02 21:43:03', '2015-02-23 05:35:23');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('89', 'Et odio ipsam.', 0, '70', '2017-12-22 13:07:48', '2018-10-28 14:22:05');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('90', 'Rem sint labore et nesciunt.', 0, '4', '2012-11-23 05:09:54', '2014-11-12 10:11:23');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('91', 'Veritatis est aliquid ut ab.', 0, '88', '2016-07-23 15:39:16', '2016-01-14 16:30:49');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('92', 'Fugit eligendi commodi autem aliquam velit.', 0, '9', '2016-06-10 11:03:09', '2011-06-08 13:54:12');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('93', 'Fugit iure nemo maiores.', 0, '47', '2017-01-16 11:37:02', '2019-02-07 23:41:46');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('94', 'Sint et quidem ad eveniet.', 0, '17', '2010-09-27 02:17:08', '2016-09-06 00:08:15');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('95', 'Vel tenetur est.', 0, '87', '2016-12-24 17:47:50', '2018-06-30 21:10:33');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('96', 'Tempore laudantium aut eius recusandae voluptas.', 0, '58', '2012-07-17 13:22:07', '2020-07-12 22:59:23');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('97', 'Asperiores aperiam voluptatem magni maxime.', 0, '26', '2019-05-31 01:02:59', '2020-03-14 04:04:44');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('98', 'Labore quasi ab.', 0, '77', '2016-06-12 00:16:38', '2017-08-07 18:37:55');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('99', 'Impedit voluptatem odio culpa quis.', 0, '94', '2016-10-31 05:45:54', '2018-09-27 02:39:29');
INSERT INTO `playlists` (`id`, `name`, `rating`, `created_by`, `created_at`, `updated_at`) VALUES ('100', 'Nam dolorem cumque in.', 0, '73', '2010-11-14 04:15:16', '2011-04-22 19:13:52');

DROP TABLE IF EXISTS playlists_content;
CREATE TABLE playlists_content (
	track_id BIGINT UNSIGNED COMMENT 'Идентификатор трека',
	playlist_id BIGINT UNSIGNED COMMENT 'Идентификатор плейлиста',
	CONSTRAINT playlists_content_track_id_fk FOREIGN KEY (track_id) REFERENCES tracks(id) ON DELETE SET NULL,
	CONSTRAINT playlists_content_playlist_id_fk FOREIGN KEY (playlist_id) REFERENCES playlists(id) ON DELETE CASCADE,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP	
) COMMENT = 'Содержание плейлистов';

INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('20', '27', '2011-04-22 21:45:27', '2011-11-09 17:04:39');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('70', '16', '2017-08-21 20:48:28', '2016-01-02 22:08:29');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('29', '74', '2010-12-30 14:01:13', '2020-08-27 19:01:10');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('11', '53', '2019-08-18 11:48:28', '2018-09-09 12:53:52');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('76', '34', '2020-05-03 07:57:27', '2020-06-15 18:31:44');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('43', '5', '2014-08-09 01:31:55', '2017-12-23 23:21:06');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('33', '17', '2020-04-14 04:08:48', '2015-09-06 15:51:19');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('32', '18', '2017-01-15 12:52:37', '2019-08-20 11:57:29');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('20', '81', '2018-07-27 11:27:52', '2013-01-19 20:08:48');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('73', '16', '2014-02-21 07:58:58', '2011-10-13 15:11:01');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('108', '95', '2017-05-23 14:54:48', '2014-11-21 05:50:06');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('33', '56', '2014-03-19 02:03:18', '2015-11-10 14:10:09');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('71', '45', '2011-03-18 22:01:00', '2011-06-25 08:20:28');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('3', '29', '2018-01-26 04:58:53', '2015-01-08 06:32:34');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('68', '1', '2013-04-25 09:57:57', '2013-03-13 07:04:00');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('83', '79', '2018-04-07 11:59:10', '2017-11-21 20:07:33');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('31', '37', '2014-12-01 11:36:33', '2013-05-08 00:45:23');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('105', '54', '2015-04-11 22:06:14', '2019-07-11 01:49:13');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('12', '5', '2014-10-16 09:24:08', '2011-06-04 11:55:52');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('6', '79', '2017-02-24 03:02:10', '2014-01-11 15:03:18');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('42', '44', '2017-09-11 22:26:22', '2015-03-18 14:39:49');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('92', '67', '2017-12-29 13:52:40', '2013-11-02 17:51:04');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('68', '11', '2018-06-19 03:16:57', '2017-02-13 00:55:56');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('94', '79', '2010-11-16 19:56:13', '2012-01-04 01:01:18');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('101', '49', '2010-12-09 10:53:39', '2016-09-29 22:19:30');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('105', '88', '2010-12-20 14:32:12', '2015-05-04 18:18:35');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('49', '23', '2016-11-15 10:15:00', '2014-04-11 15:04:08');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('48', '8', '2011-01-16 19:11:33', '2010-11-09 08:25:07');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('75', '45', '2013-01-04 08:05:31', '2013-08-19 03:26:47');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('40', '29', '2013-04-05 09:06:06', '2015-05-21 12:09:23');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('51', '10', '2012-02-03 07:22:10', '2012-02-02 19:47:36');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('8', '74', '2017-01-27 21:09:31', '2020-07-18 00:17:58');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('51', '2', '2016-11-16 23:10:01', '2013-05-26 10:10:40');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('30', '56', '2014-09-15 14:52:21', '2017-05-25 05:34:36');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('7', '32', '2014-05-09 06:32:21', '2014-05-15 12:47:31');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('38', '43', '2020-09-06 06:52:29', '2015-05-09 11:27:37');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('84', '17', '2018-11-09 23:47:26', '2016-06-28 09:42:12');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('10', '37', '2017-02-01 03:47:33', '2014-04-09 08:29:06');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('30', '93', '2014-04-12 05:01:52', '2011-08-23 06:42:43');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('16', '18', '2017-08-18 01:49:18', '2020-07-04 22:45:36');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('47', '8', '2016-09-15 21:39:04', '2012-09-14 12:03:23');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('6', '86', '2018-03-23 03:12:17', '2012-09-04 08:21:07');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('35', '48', '2016-11-29 03:49:41', '2014-07-01 06:09:30');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('103', '99', '2018-09-06 06:51:39', '2013-11-29 08:09:05');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('103', '28', '2015-12-02 11:17:59', '2020-07-04 11:11:41');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('30', '38', '2019-12-23 10:13:21', '2018-05-24 09:24:23');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('42', '34', '2016-05-30 17:38:14', '2017-07-15 21:59:49');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('12', '83', '2014-06-14 11:26:42', '2012-11-16 23:14:27');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('39', '37', '2018-04-01 03:39:45', '2013-04-30 07:24:08');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('43', '41', '2017-04-05 06:53:46', '2020-08-29 15:10:16');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('76', '73', '2014-05-07 08:32:13', '2017-05-02 09:35:28');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('92', '44', '2018-08-17 01:41:23', '2020-07-16 07:43:30');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('100', '92', '2014-06-15 20:43:49', '2012-06-07 23:25:51');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('89', '17', '2010-12-03 04:15:13', '2011-11-19 20:04:11');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('94', '94', '2017-05-08 22:25:15', '2017-05-13 19:23:37');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('38', '27', '2020-04-16 12:56:38', '2019-12-01 18:19:26');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('2', '39', '2015-09-18 22:35:52', '2011-10-03 05:38:58');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('13', '33', '2013-03-11 15:55:05', '2013-08-20 16:19:21');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('96', '4', '2014-02-14 16:03:29', '2019-02-10 14:58:49');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('34', '78', '2017-12-31 10:17:16', '2013-11-11 04:34:48');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('35', '57', '2016-08-12 10:04:33', '2012-11-10 05:37:12');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('17', '69', '2014-09-03 13:39:35', '2015-05-01 18:04:02');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('101', '26', '2010-10-14 20:35:55', '2012-07-15 15:46:59');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('57', '25', '2010-12-27 19:49:10', '2012-05-29 18:36:06');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('69', '90', '2013-12-07 19:52:37', '2013-07-06 02:37:09');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('73', '31', '2016-01-10 20:57:10', '2014-11-06 23:02:13');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('70', '48', '2018-03-03 20:27:17', '2019-08-17 13:38:14');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('82', '52', '2014-07-24 23:47:25', '2016-11-13 08:13:05');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('44', '53', '2015-08-05 16:01:31', '2014-01-28 04:13:53');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('76', '24', '2014-08-05 00:22:50', '2016-02-20 03:40:44');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('52', '2', '2020-08-01 10:38:21', '2016-01-10 20:43:21');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('56', '48', '2013-12-02 08:39:01', '2020-05-06 23:22:02');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('45', '61', '2016-04-22 02:00:51', '2019-07-22 14:07:29');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('89', '26', '2018-06-14 12:34:04', '2014-10-24 13:35:48');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('72', '11', '2020-06-05 23:02:59', '2020-07-18 03:49:05');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('4', '96', '2010-11-13 04:33:30', '2015-07-24 12:43:27');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('75', '19', '2017-12-28 00:17:45', '2012-05-23 20:18:24');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('71', '58', '2011-08-05 06:06:57', '2013-08-15 16:15:08');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('49', '15', '2012-09-14 05:57:35', '2017-06-12 04:06:24');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('92', '6', '2020-08-25 00:38:39', '2012-02-26 21:13:53');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('5', '48', '2015-04-09 06:10:29', '2014-06-07 02:16:54');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('40', '67', '2015-03-10 06:44:28', '2014-07-08 02:18:52');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('106', '10', '2014-12-22 01:23:31', '2014-02-13 17:43:40');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('21', '35', '2017-02-20 08:08:41', '2016-07-28 16:22:14');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('69', '86', '2010-12-11 21:08:48', '2020-01-06 02:49:38');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('65', '9', '2013-08-28 15:00:10', '2013-04-15 01:52:41');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('97', '8', '2018-07-15 19:35:20', '2011-05-12 11:18:17');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('63', '27', '2018-02-09 04:54:26', '2017-10-19 16:20:57');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('77', '37', '2014-12-18 02:34:57', '2011-09-30 11:10:20');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('58', '34', '2015-03-25 22:11:49', '2015-11-03 16:03:06');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('52', '56', '2013-12-10 07:36:13', '2013-09-08 06:32:35');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('32', '14', '2012-04-06 10:09:29', '2020-02-26 22:29:51');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('82', '93', '2017-02-24 15:01:29', '2012-10-01 13:41:45');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('80', '17', '2018-10-02 21:22:45', '2020-05-11 13:03:57');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('8', '54', '2016-09-11 21:47:29', '2011-01-04 23:34:01');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('25', '11', '2012-11-23 09:29:21', '2019-08-24 04:01:10');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('1', '59', '2018-05-17 01:08:27', '2016-08-19 16:15:59');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('86', '96', '2020-03-17 23:44:32', '2014-01-20 00:15:09');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('75', '96', '2018-10-26 19:11:15', '2018-08-25 04:40:04');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('33', '30', '2018-08-02 09:50:29', '2012-07-02 00:30:15');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('91', '88', '2013-11-11 01:46:55', '2016-06-03 03:44:48');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('42', '69', '2014-04-28 20:35:14', '2015-07-01 04:45:14');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('106', '94', '2014-05-09 05:59:16', '2015-06-18 04:01:55');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('106', '64', '2013-02-04 07:56:34', '2017-05-09 14:57:51');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('33', '48', '2014-12-30 19:51:48', '2014-07-07 17:28:07');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('108', '77', '2017-07-01 08:56:44', '2011-06-06 14:27:29');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('3', '26', '2017-05-01 15:10:33', '2017-12-10 06:11:00');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('100', '76', '2014-06-03 07:10:11', '2014-09-14 09:55:32');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('20', '62', '2016-10-31 19:34:32', '2013-12-30 00:22:28');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('103', '25', '2014-05-05 22:19:02', '2013-12-08 19:38:16');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('17', '16', '2019-10-05 15:26:33', '2016-04-17 22:29:18');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('39', '15', '2018-11-09 22:26:53', '2013-08-31 05:42:41');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('82', '13', '2019-10-10 08:51:44', '2012-02-25 14:37:34');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('12', '41', '2010-12-04 22:36:18', '2015-08-10 10:15:21');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('9', '40', '2014-11-15 15:50:04', '2014-05-08 08:12:46');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('78', '89', '2019-11-19 19:10:30', '2012-09-19 08:10:44');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('31', '7', '2013-10-23 08:08:22', '2019-05-05 01:37:44');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('64', '23', '2013-04-14 01:35:04', '2013-12-10 07:22:08');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('1', '52', '2019-03-28 10:40:10', '2017-07-19 18:37:03');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('96', '30', '2011-06-09 23:23:50', '2018-08-14 19:39:46');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('110', '84', '2012-05-19 08:25:11', '2010-11-22 06:17:17');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('7', '2', '2016-11-30 21:26:17', '2012-09-14 13:58:27');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('10', '96', '2019-01-27 19:25:45', '2010-11-18 22:02:30');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('86', '26', '2012-08-02 01:26:37', '2018-01-29 07:40:34');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('63', '70', '2019-11-24 13:39:01', '2018-01-26 14:08:07');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('56', '72', '2019-05-30 08:11:51', '2018-04-15 09:06:12');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('95', '85', '2012-07-30 13:59:28', '2017-04-07 08:07:26');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('96', '59', '2018-11-13 10:06:25', '2017-10-25 07:04:34');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('108', '97', '2012-09-15 19:35:58', '2016-12-31 08:04:44');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('110', '5', '2012-06-26 05:03:13', '2020-02-26 00:04:28');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('41', '69', '2014-03-20 11:40:46', '2019-07-30 18:54:59');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('104', '64', '2013-06-17 05:24:16', '2015-01-03 12:40:04');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('84', '51', '2014-07-14 15:32:59', '2015-10-12 09:42:37');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('96', '76', '2010-10-19 21:10:05', '2016-09-14 15:13:26');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('3', '72', '2017-03-06 01:40:28', '2011-05-16 06:48:10');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('7', '2', '2012-03-21 16:48:02', '2015-12-20 07:13:57');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('61', '12', '2019-09-01 10:50:23', '2013-05-21 15:42:32');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('3', '64', '2013-11-06 03:38:53', '2012-08-04 14:46:05');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('8', '80', '2020-08-14 09:02:38', '2020-08-24 05:29:21');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('100', '64', '2017-03-24 11:51:34', '2015-02-21 20:33:27');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('56', '40', '2019-08-11 07:00:45', '2017-09-30 06:09:52');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('39', '35', '2015-06-17 23:58:18', '2010-10-29 15:05:32');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('27', '22', '2018-07-09 04:59:46', '2016-10-31 18:55:43');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('104', '22', '2011-02-16 01:25:52', '2012-08-25 22:49:49');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('20', '93', '2014-03-16 18:34:01', '2016-06-11 05:16:41');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('29', '54', '2015-10-21 08:42:39', '2016-01-31 12:30:19');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('68', '20', '2020-03-17 06:17:26', '2014-03-20 06:51:19');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('20', '37', '2016-04-03 01:12:46', '2011-12-22 06:41:54');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('78', '3', '2014-03-13 01:48:11', '2011-11-23 05:03:51');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('14', '72', '2018-02-16 03:34:46', '2011-01-23 16:02:28');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('83', '18', '2012-01-08 00:50:32', '2013-08-24 21:08:02');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('81', '30', '2020-09-06 09:17:29', '2010-11-17 21:47:12');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('33', '76', '2018-03-18 18:22:43', '2020-05-06 18:45:56');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('103', '37', '2020-01-10 21:59:45', '2012-01-14 01:55:22');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('61', '82', '2013-06-16 12:02:29', '2015-07-22 16:50:46');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('111', '5', '2018-05-28 16:53:45', '2019-07-17 19:39:40');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('24', '36', '2015-07-31 17:08:02', '2015-08-01 05:36:41');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('44', '46', '2014-09-04 02:19:56', '2014-09-01 10:34:13');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('63', '33', '2018-12-07 04:11:06', '2018-07-26 12:11:10');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('74', '74', '2019-09-24 17:50:40', '2016-11-01 01:43:49');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('28', '92', '2015-07-23 00:31:50', '2013-03-07 09:27:52');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('31', '86', '2011-05-18 01:10:30', '2016-02-02 03:12:07');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('13', '46', '2020-03-06 04:09:20', '2012-09-15 16:06:22');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('25', '81', '2017-05-01 22:17:25', '2014-05-04 22:17:56');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('54', '34', '2013-01-17 18:38:11', '2014-05-01 00:43:15');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('58', '23', '2010-09-29 01:40:47', '2017-07-18 23:05:43');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('58', '25', '2018-08-22 00:27:53', '2017-06-11 04:30:02');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('58', '81', '2015-06-03 14:08:47', '2017-07-13 13:34:18');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('111', '45', '2013-11-15 08:35:00', '2016-07-26 20:50:02');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('19', '55', '2019-04-29 11:42:54', '2013-06-23 07:02:36');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('30', '17', '2017-05-16 18:25:11', '2020-05-22 20:03:54');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('66', '48', '2013-09-27 11:20:52', '2010-10-01 04:25:46');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('58', '99', '2016-01-29 19:34:03', '2013-05-18 13:42:58');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('103', '8', '2019-07-01 00:04:49', '2015-06-26 05:28:15');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('35', '59', '2018-03-31 03:41:43', '2018-12-26 10:19:44');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('91', '56', '2011-08-21 07:06:07', '2014-05-07 20:45:23');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('57', '10', '2015-12-09 12:16:06', '2010-12-27 22:04:55');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('46', '62', '2016-10-21 06:42:13', '2011-03-14 11:02:23');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('61', '64', '2015-01-29 20:09:49', '2010-12-13 01:05:30');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('47', '3', '2012-08-14 23:39:08', '2017-08-03 09:50:22');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('108', '94', '2018-06-13 16:23:06', '2018-04-28 00:16:43');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('28', '49', '2012-05-16 03:37:46', '2015-09-16 00:42:46');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('21', '77', '2019-01-31 04:58:49', '2014-12-15 11:12:52');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('33', '18', '2016-08-30 04:05:29', '2014-03-04 04:22:03');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('24', '46', '2018-07-05 15:57:18', '2011-10-14 16:17:34');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('81', '48', '2018-06-06 00:30:57', '2011-09-07 13:44:30');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('70', '32', '2018-11-30 00:23:23', '2014-12-16 16:21:24');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('106', '14', '2019-05-24 15:10:00', '2017-11-08 17:47:14');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('34', '88', '2019-11-08 01:10:14', '2018-01-04 15:34:04');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('25', '61', '2018-01-13 20:52:07', '2010-10-02 08:45:14');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('52', '4', '2014-08-28 01:04:25', '2011-08-25 03:36:40');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('19', '97', '2018-04-20 15:36:13', '2018-07-16 23:19:08');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('15', '58', '2018-07-17 12:43:04', '2011-05-03 21:42:47');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('65', '68', '2014-11-18 15:36:43', '2017-03-05 05:17:39');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('24', '100', '2014-07-24 11:26:57', '2010-12-14 18:13:22');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('78', '19', '2011-01-22 15:50:16', '2015-09-20 11:13:25');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('104', '95', '2019-06-28 06:26:13', '2013-05-21 01:40:52');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('74', '12', '2014-07-13 21:23:17', '2012-09-15 02:17:14');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('80', '96', '2018-03-29 03:44:50', '2013-09-11 04:54:24');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('33', '93', '2011-05-28 21:44:13', '2011-02-01 20:51:34');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('46', '3', '2018-02-11 12:57:58', '2018-11-18 19:54:21');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('45', '3', '2010-10-12 02:11:06', '2016-07-25 13:50:28');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('38', '36', '2017-04-10 09:29:53', '2020-07-21 19:37:17');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('19', '64', '2013-08-22 02:56:35', '2016-07-08 00:56:46');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('26', '39', '2013-05-18 03:29:39', '2010-10-01 10:18:54');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('27', '69', '2012-05-11 06:25:28', '2019-01-18 01:44:47');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('47', '41', '2012-07-29 03:24:46', '2019-07-02 07:45:25');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('73', '55', '2011-10-21 02:28:11', '2012-03-25 06:16:18');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('110', '24', '2015-10-07 21:44:38', '2020-03-15 15:50:12');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('25', '20', '2019-06-10 22:57:59', '2020-09-17 23:39:15');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('27', '93', '2015-06-06 21:11:55', '2018-03-13 15:37:26');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('43', '18', '2018-09-14 05:07:50', '2013-09-12 06:32:59');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('97', '5', '2018-10-21 23:33:15', '2014-01-06 22:53:04');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('33', '58', '2014-10-19 10:35:37', '2019-04-22 23:44:49');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('111', '59', '2016-02-21 12:01:36', '2014-08-05 01:14:11');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('56', '41', '2019-03-02 18:38:46', '2017-02-17 06:25:20');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('68', '91', '2018-12-29 19:32:09', '2013-01-03 09:32:39');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('49', '95', '2012-05-28 16:05:18', '2014-07-13 16:29:28');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('29', '61', '2020-01-22 01:39:22', '2014-03-23 16:07:47');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('65', '49', '2018-10-11 23:00:39', '2011-11-22 17:01:38');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('110', '83', '2018-07-20 17:13:10', '2020-02-20 05:09:27');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('19', '41', '2016-07-27 10:13:12', '2018-10-13 16:00:43');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('26', '83', '2018-06-05 09:01:45', '2015-02-25 04:35:59');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('107', '22', '2012-08-19 05:15:23', '2016-04-18 01:23:32');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('7', '18', '2014-07-17 05:28:58', '2012-07-14 17:21:10');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('47', '30', '2016-01-30 16:15:56', '2015-07-30 04:01:25');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('12', '80', '2012-12-23 10:34:32', '2016-12-25 22:54:13');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('53', '97', '2017-08-10 19:13:21', '2013-11-22 09:13:58');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('93', '76', '2017-02-19 17:48:09', '2019-01-20 00:46:01');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('61', '84', '2012-07-11 20:34:43', '2014-11-23 03:03:57');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('39', '6', '2014-12-10 13:14:58', '2019-11-30 01:55:23');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('27', '96', '2016-08-11 03:34:24', '2018-05-02 14:15:58');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('107', '68', '2010-10-07 17:18:01', '2012-04-24 04:58:11');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('100', '22', '2013-07-30 22:30:51', '2012-09-11 04:54:05');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('31', '48', '2014-07-11 10:27:17', '2014-05-01 16:45:48');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('77', '27', '2016-11-19 09:58:09', '2011-06-27 11:12:52');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('34', '87', '2018-05-18 05:40:42', '2016-07-13 09:36:46');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('75', '53', '2017-03-29 18:53:32', '2016-10-15 18:11:17');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('77', '63', '2013-03-06 10:34:05', '2010-12-26 11:08:24');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('83', '75', '2020-08-18 19:55:28', '2012-12-10 10:44:38');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('90', '16', '2019-03-16 13:53:57', '2015-06-02 22:18:50');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('6', '91', '2019-11-19 20:02:23', '2019-07-12 08:53:31');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('106', '52', '2012-01-24 10:06:23', '2012-01-20 20:07:03');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('97', '80', '2012-06-28 02:44:38', '2011-04-14 19:50:13');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('31', '42', '2016-04-29 00:55:49', '2011-06-28 13:54:53');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('70', '63', '2018-01-17 11:16:30', '2017-02-28 03:44:01');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('53', '87', '2012-01-10 20:27:20', '2012-04-07 08:37:23');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('65', '43', '2014-12-22 10:11:44', '2017-11-17 13:10:08');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('60', '48', '2018-11-05 16:58:44', '2014-12-10 04:21:25');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('71', '81', '2016-12-05 02:30:14', '2016-10-10 13:51:07');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('107', '33', '2013-06-17 07:57:38', '2019-01-05 11:36:17');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('8', '26', '2013-11-03 02:53:07', '2017-12-25 06:43:24');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('22', '74', '2017-01-12 08:04:48', '2013-11-03 04:11:05');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('88', '88', '2019-06-02 23:58:15', '2015-04-01 14:47:23');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('41', '53', '2011-04-25 15:04:10', '2019-02-13 06:55:07');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('70', '17', '2017-05-23 02:23:37', '2014-04-20 16:17:16');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('77', '68', '2016-08-06 00:28:34', '2017-05-04 09:45:00');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('8', '65', '2018-04-02 15:28:34', '2015-02-10 05:43:25');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('21', '95', '2013-06-20 02:03:00', '2016-02-03 12:37:02');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('49', '46', '2014-12-16 19:44:23', '2014-09-28 20:26:20');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('41', '7', '2011-11-14 17:34:12', '2016-09-27 20:20:16');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('9', '83', '2016-05-09 14:27:41', '2013-06-10 09:02:50');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('103', '66', '2017-11-22 20:55:29', '2020-03-08 13:24:21');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('29', '46', '2014-05-04 08:45:53', '2014-05-26 11:57:00');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('15', '89', '2014-12-02 20:50:30', '2015-02-17 12:01:58');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('30', '10', '2013-02-03 11:24:23', '2019-06-27 01:40:19');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('25', '34', '2017-12-01 03:49:34', '2012-09-26 12:48:20');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('39', '41', '2018-07-14 04:20:41', '2017-10-07 14:55:33');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('8', '14', '2013-04-28 05:02:28', '2019-05-25 05:30:47');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('32', '44', '2019-04-10 08:29:34', '2014-01-12 11:05:24');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('74', '92', '2012-09-08 20:29:59', '2015-10-29 07:29:33');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('67', '35', '2015-10-26 01:43:00', '2012-03-09 15:15:15');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('66', '68', '2012-05-31 18:33:59', '2016-06-04 19:37:37');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('111', '78', '2018-07-11 22:38:21', '2017-07-18 08:00:51');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('69', '43', '2011-07-30 10:31:18', '2017-01-18 10:46:22');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('26', '98', '2017-09-20 04:27:52', '2019-04-27 13:14:13');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('55', '32', '2016-09-28 00:50:21', '2012-10-11 12:39:31');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('90', '41', '2019-11-17 23:31:48', '2015-08-11 10:04:08');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('108', '6', '2011-07-20 22:05:36', '2016-03-06 04:33:12');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('97', '11', '2011-02-15 03:50:37', '2011-07-16 07:51:01');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('106', '13', '2012-06-16 13:01:17', '2015-12-15 18:08:24');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('22', '17', '2013-01-24 04:56:52', '2013-05-08 05:33:04');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('52', '55', '2020-02-17 00:47:56', '2015-06-11 04:40:44');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('64', '54', '2018-09-27 17:30:07', '2016-03-14 00:56:39');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('75', '86', '2019-06-23 13:10:37', '2015-04-05 10:15:01');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('108', '34', '2015-11-27 12:06:03', '2013-11-20 04:54:37');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('86', '57', '2014-03-08 05:30:53', '2020-02-09 03:03:59');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('76', '36', '2010-10-24 01:11:57', '2011-07-04 08:35:19');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('27', '68', '2020-01-15 19:29:05', '2013-10-04 22:25:48');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('15', '85', '2010-10-04 16:02:46', '2017-12-17 20:02:51');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('11', '37', '2012-01-04 20:58:27', '2012-05-26 13:55:46');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('92', '59', '2015-11-14 19:25:13', '2016-11-18 03:03:54');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('75', '64', '2014-05-16 04:23:27', '2020-07-08 20:16:07');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('111', '65', '2015-10-23 14:33:32', '2018-02-16 00:42:17');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('77', '86', '2018-05-17 01:32:01', '2012-07-16 05:57:53');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('83', '64', '2018-08-08 17:25:46', '2011-07-30 14:08:01');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('110', '94', '2017-05-23 10:37:32', '2012-02-28 18:41:33');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('89', '46', '2016-02-08 19:35:48', '2016-03-28 04:01:48');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('54', '38', '2013-07-10 11:05:34', '2016-11-22 10:54:18');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('110', '15', '2010-12-24 15:07:44', '2011-12-07 02:13:13');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('26', '95', '2017-07-06 13:54:25', '2019-02-01 11:04:04');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('54', '1', '2014-06-07 14:31:13', '2012-12-05 20:18:09');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('58', '16', '2018-11-14 18:18:58', '2012-03-25 05:54:24');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('40', '75', '2019-07-26 22:55:59', '2011-11-08 11:31:43');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('93', '49', '2019-03-16 01:25:02', '2010-12-29 10:30:25');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('67', '93', '2012-05-08 12:09:12', '2013-02-22 07:10:37');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('94', '43', '2019-05-18 02:40:36', '2011-10-21 22:14:48');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('57', '52', '2013-08-20 18:10:37', '2015-06-25 13:44:03');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('6', '51', '2016-10-28 20:03:29', '2011-03-21 20:07:48');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('18', '75', '2013-07-26 22:50:00', '2019-09-02 17:55:40');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('41', '91', '2010-10-19 20:22:50', '2014-02-11 17:40:39');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('43', '36', '2018-11-07 13:12:25', '2015-04-10 22:25:36');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('94', '19', '2019-03-09 01:49:11', '2015-01-29 20:54:37');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('90', '32', '2017-03-30 23:31:04', '2015-09-28 15:23:15');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('62', '80', '2016-10-27 11:17:34', '2014-06-01 09:04:52');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('53', '79', '2018-02-05 16:32:05', '2012-02-15 09:31:48');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('83', '95', '2019-07-06 16:29:36', '2011-07-17 14:37:45');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('87', '26', '2015-08-26 20:44:44', '2013-11-24 20:02:59');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('12', '14', '2011-02-02 20:17:00', '2019-08-17 13:18:37');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('1', '94', '2013-04-01 21:05:05', '2012-04-09 20:30:18');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('70', '61', '2014-04-14 18:01:17', '2017-04-09 02:19:24');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('97', '48', '2019-08-19 01:52:58', '2016-09-18 04:50:59');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('4', '38', '2013-03-27 19:42:42', '2015-03-10 15:42:50');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('110', '9', '2014-02-18 12:06:51', '2016-10-30 18:31:55');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('99', '15', '2020-09-09 15:45:01', '2011-02-26 05:27:57');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('92', '26', '2012-02-13 21:29:00', '2016-11-26 18:04:21');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('6', '21', '2013-05-01 21:43:47', '2014-11-06 01:12:22');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('68', '90', '2019-05-22 23:03:11', '2018-04-03 08:29:05');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('43', '42', '2011-03-17 00:18:02', '2014-06-16 00:35:10');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('24', '94', '2013-01-29 18:05:28', '2011-02-23 17:07:36');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('24', '69', '2017-10-28 20:23:14', '2015-06-09 06:05:56');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('80', '96', '2018-04-13 06:53:33', '2016-10-22 08:48:31');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('71', '51', '2015-10-31 18:04:13', '2010-10-04 08:39:01');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('24', '74', '2020-07-06 06:40:54', '2015-08-18 00:08:12');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('72', '22', '2020-07-29 20:32:32', '2015-09-29 20:20:42');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('76', '27', '2011-08-09 22:21:03', '2016-04-08 01:47:22');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('92', '55', '2011-05-10 00:19:26', '2015-05-03 16:04:36');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('82', '86', '2015-09-12 22:49:40', '2018-08-08 04:49:25');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('103', '73', '2012-09-18 14:37:11', '2018-09-03 22:14:20');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('104', '81', '2018-04-09 05:22:40', '2017-01-01 09:29:29');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('97', '76', '2016-12-31 20:52:50', '2012-05-24 09:07:26');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('7', '93', '2011-01-12 22:05:37', '2014-04-18 08:28:59');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('107', '68', '2015-08-19 09:43:50', '2020-07-19 19:50:21');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('91', '35', '2012-11-10 09:43:32', '2012-06-13 18:24:02');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('11', '3', '2014-02-23 06:55:06', '2012-05-15 14:29:52');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('32', '31', '2015-03-31 20:34:18', '2018-09-06 09:19:59');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('79', '1', '2012-04-13 15:57:06', '2015-07-16 08:42:35');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('29', '35', '2016-01-03 16:33:58', '2011-05-29 08:09:09');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('56', '48', '2011-01-21 07:03:04', '2012-06-28 21:48:16');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('9', '15', '2016-05-17 23:46:23', '2016-12-30 21:28:36');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('77', '76', '2011-05-26 18:36:15', '2012-04-22 13:09:46');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('46', '52', '2018-04-27 10:34:12', '2011-03-06 22:23:00');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('34', '15', '2014-12-05 16:16:28', '2013-05-30 10:00:53');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('41', '23', '2018-09-29 07:19:07', '2014-02-13 22:22:45');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('96', '30', '2016-05-10 08:51:48', '2018-01-15 05:11:37');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('4', '74', '2013-08-28 23:18:45', '2018-01-19 09:21:26');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('7', '10', '2015-10-16 20:48:07', '2014-04-17 17:57:39');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('73', '2', '2013-10-28 22:55:03', '2011-02-04 16:48:40');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('86', '48', '2020-03-29 17:13:53', '2017-04-29 16:46:17');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('41', '86', '2018-02-20 10:10:28', '2019-12-15 22:12:18');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('56', '65', '2013-01-06 08:56:25', '2012-03-17 23:05:44');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('18', '21', '2016-12-04 19:36:30', '2011-09-24 23:55:19');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('73', '42', '2020-09-07 15:18:33', '2011-04-06 15:29:43');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('62', '16', '2013-10-01 01:41:37', '2013-06-29 03:18:24');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('99', '64', '2011-07-02 09:17:49', '2019-12-08 12:45:27');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('34', '58', '2014-09-21 00:10:35', '2011-02-15 08:05:13');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('44', '71', '2017-01-26 07:56:22', '2013-08-03 12:48:28');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('10', '69', '2014-12-16 02:23:21', '2014-02-21 07:22:12');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('95', '46', '2013-05-27 15:01:21', '2016-02-13 06:19:54');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('102', '72', '2016-06-19 23:17:52', '2013-05-29 06:37:51');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('84', '95', '2017-11-06 18:46:55', '2014-03-02 02:55:41');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('50', '81', '2015-07-18 18:01:53', '2014-06-08 15:01:21');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('5', '11', '2016-09-16 00:36:30', '2011-05-15 07:22:56');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('92', '81', '2020-09-22 05:57:31', '2015-08-17 04:16:55');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('64', '20', '2019-03-04 14:13:36', '2015-04-28 00:36:40');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('74', '8', '2015-01-31 15:13:17', '2012-09-04 00:38:16');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('94', '83', '2012-11-04 20:31:37', '2020-06-12 16:37:39');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('32', '50', '2015-08-28 14:39:22', '2016-06-28 15:36:03');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('27', '84', '2020-05-22 17:14:14', '2015-07-09 20:57:54');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('73', '13', '2014-11-13 20:59:31', '2017-04-07 13:39:27');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('52', '95', '2014-11-27 02:01:08', '2019-08-16 08:21:41');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('79', '86', '2013-09-30 14:43:34', '2015-10-23 00:17:24');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('73', '80', '2011-08-30 21:06:34', '2015-04-15 08:58:38');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('61', '51', '2017-09-26 23:05:46', '2018-09-12 19:45:03');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('28', '46', '2011-10-21 00:01:28', '2012-04-03 01:28:05');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('25', '1', '2013-08-01 08:35:08', '2013-11-30 05:16:18');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('46', '67', '2015-10-09 02:22:15', '2016-09-27 03:22:30');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('91', '45', '2020-04-23 00:37:53', '2019-11-12 03:56:45');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('86', '64', '2018-04-18 02:50:50', '2015-11-14 08:40:58');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('29', '35', '2013-09-11 08:48:31', '2016-07-13 21:58:00');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('93', '93', '2011-06-23 04:07:04', '2018-06-02 04:31:09');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('47', '68', '2010-12-04 22:48:01', '2013-02-06 02:09:22');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('83', '71', '2018-03-31 03:22:06', '2018-03-19 00:55:35');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('19', '99', '2020-05-27 08:01:55', '2019-02-20 00:27:53');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('60', '82', '2015-09-22 02:41:38', '2020-02-05 15:56:30');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('13', '1', '2017-07-27 10:13:27', '2020-08-18 02:36:28');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('86', '83', '2020-04-19 11:40:11', '2017-06-24 14:57:00');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('96', '43', '2020-03-30 08:58:17', '2014-04-16 22:10:16');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('69', '41', '2017-04-18 14:19:38', '2019-10-12 15:52:14');
INSERT INTO `playlists_content` (`track_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('104', '87', '2020-09-22 16:06:34', '2020-04-06 02:02:05');

DROP TABLE IF EXISTS liked_genres;
CREATE TABLE liked_genres (
	user_id BIGINT UNSIGNED COMMENT 'Идентификатор пользователя',
	genre_id BIGINT UNSIGNED COMMENT 'Идентификатор жанра',
	CONSTRAINT liked_genres_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
	CONSTRAINT liked_genres_genre_id_fk FOREIGN KEY (genre_id) REFERENCES genres(id) ON DELETE SET NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP	
) COMMENT = 'Понравившиеся жанры';

INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('2', '3', '2014-08-21 08:41:37', '2013-05-24 00:18:16');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('30', '6', '2017-01-30 14:39:01', '2011-09-22 17:53:55');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('99', '4', '2015-11-19 02:12:51', '2011-06-26 05:25:53');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('13', '2', '2018-07-20 03:53:22', '2014-11-09 11:12:32');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('93', '6', '2014-03-24 13:49:07', '2018-04-04 14:07:43');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('51', '5', '2017-12-15 17:56:57', '2015-06-06 22:56:49');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('36', '1', '2012-06-26 22:06:20', '2013-12-26 03:47:20');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('25', '2', '2017-06-14 14:14:06', '2018-11-05 09:23:29');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('39', '4', '2011-11-22 19:26:52', '2015-01-25 18:08:52');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('24', '2', '2019-07-13 13:35:22', '2013-03-24 03:02:30');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('71', '1', '2011-03-08 23:29:21', '2017-12-05 21:43:07');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('99', '4', '2020-08-15 21:30:55', '2016-02-02 09:58:38');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('70', '4', '2019-04-11 00:25:08', '2014-08-11 14:46:09');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('53', '5', '2015-12-29 17:54:21', '2017-06-15 06:53:32');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('63', '1', '2013-12-22 16:00:21', '2019-03-10 10:51:04');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('38', '4', '2014-09-09 06:57:24', '2011-02-06 18:37:51');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('50', '5', '2019-08-22 08:04:05', '2017-04-26 20:41:44');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('50', '3', '2014-10-03 16:09:46', '2017-05-26 23:10:58');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('28', '4', '2011-11-27 20:48:31', '2011-05-12 10:34:59');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('82', '2', '2010-10-05 07:00:44', '2016-06-04 15:49:07');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('55', '2', '2018-05-17 06:26:16', '2010-12-19 17:39:00');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('97', '6', '2013-07-20 15:16:15', '2015-02-17 14:54:04');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('33', '2', '2016-05-24 11:48:12', '2012-04-30 10:41:04');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('17', '5', '2017-01-05 03:33:44', '2014-11-23 07:06:31');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('71', '3', '2011-10-31 19:51:29', '2015-09-23 23:35:41');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('97', '3', '2011-09-03 03:22:24', '2015-06-30 11:39:33');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('56', '6', '2011-07-14 03:54:33', '2012-02-20 01:20:00');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('95', '2', '2014-08-17 07:01:39', '2015-03-31 21:19:00');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('58', '3', '2011-06-08 18:42:46', '2013-03-21 11:37:56');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('99', '2', '2020-06-02 21:40:39', '2016-03-06 23:57:17');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('53', '3', '2011-08-30 08:22:03', '2014-04-03 19:13:34');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('85', '1', '2014-09-17 08:24:43', '2016-05-26 04:19:21');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('4', '3', '2018-06-10 06:56:22', '2019-10-03 02:47:43');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('51', '2', '2014-05-21 08:53:56', '2013-02-01 08:22:07');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('97', '2', '2011-08-05 22:27:03', '2020-01-24 11:24:35');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('51', '4', '2018-07-17 11:52:06', '2019-08-07 08:22:32');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('64', '3', '2016-03-16 17:10:22', '2013-05-09 14:04:30');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('41', '6', '2013-07-15 20:56:20', '2017-10-17 23:34:48');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('67', '4', '2019-06-14 00:38:08', '2018-11-05 12:55:22');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('68', '3', '2018-11-06 04:57:44', '2017-07-23 10:27:05');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('98', '4', '2014-01-14 17:04:19', '2014-08-30 08:54:57');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('79', '4', '2014-04-05 03:07:25', '2016-11-14 09:35:08');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('59', '5', '2019-04-22 23:43:46', '2012-10-22 20:19:15');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('78', '1', '2020-05-21 07:10:49', '2017-03-14 07:52:36');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('20', '5', '2019-09-18 12:54:31', '2013-10-21 03:34:20');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('37', '5', '2018-07-13 14:03:12', '2017-09-01 00:52:05');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('13', '2', '2016-02-08 03:59:19', '2018-04-06 12:01:53');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('75', '1', '2017-10-17 17:32:22', '2011-09-15 12:33:46');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('55', '2', '2016-06-05 12:16:20', '2011-10-18 15:37:24');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('47', '4', '2019-05-31 00:06:34', '2016-11-23 13:16:34');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('58', '6', '2014-09-16 06:45:59', '2018-03-17 23:29:21');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('2', '2', '2020-07-09 21:55:23', '2018-11-21 13:34:10');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('44', '3', '2019-07-26 21:31:47', '2018-11-01 08:11:45');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('18', '1', '2014-02-05 10:21:27', '2016-05-23 14:22:35');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('100', '6', '2016-09-17 20:04:09', '2014-09-04 17:36:49');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('47', '6', '2019-05-07 13:21:15', '2020-08-21 06:32:43');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('49', '2', '2016-01-23 04:37:59', '2013-09-24 00:05:45');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('50', '1', '2017-02-17 15:25:53', '2017-01-07 08:52:30');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('98', '2', '2016-07-28 06:42:39', '2015-08-17 09:54:33');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('24', '1', '2019-12-31 14:34:59', '2020-01-04 10:06:03');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('3', '4', '2011-08-24 13:51:57', '2015-03-25 08:01:20');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('89', '1', '2013-11-16 19:21:57', '2011-02-09 21:12:25');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('81', '4', '2013-04-05 09:45:12', '2019-06-09 21:37:09');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('33', '3', '2019-06-25 10:14:37', '2018-11-28 15:03:01');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('88', '5', '2012-09-21 20:51:25', '2020-05-18 13:44:05');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('87', '3', '2013-12-01 23:11:04', '2015-01-14 23:43:23');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('76', '6', '2015-08-07 16:05:17', '2010-11-16 09:42:47');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('67', '2', '2012-12-03 17:41:12', '2013-01-31 21:37:51');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('31', '6', '2017-06-19 12:51:23', '2016-11-02 16:43:24');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('29', '2', '2012-08-06 22:23:26', '2014-10-01 14:13:44');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('69', '5', '2018-05-24 06:09:54', '2011-04-24 01:57:34');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('27', '2', '2013-07-29 05:41:22', '2014-03-01 03:11:45');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('1', '5', '2018-09-05 07:42:57', '2011-05-13 08:21:54');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('25', '6', '2017-01-24 18:48:52', '2016-10-24 01:12:04');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('3', '3', '2012-12-21 10:27:06', '2013-10-01 01:05:14');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('15', '1', '2016-06-03 07:57:59', '2016-05-11 12:00:01');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('7', '1', '2011-02-01 09:12:50', '2012-08-08 20:24:14');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('22', '6', '2017-03-16 16:16:05', '2014-12-03 01:35:20');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('66', '4', '2013-08-06 01:01:38', '2010-11-19 02:45:44');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('23', '4', '2011-12-13 19:50:03', '2015-02-24 04:28:47');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('33', '1', '2015-02-01 15:12:19', '2015-08-29 07:28:20');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('100', '1', '2012-09-30 19:34:50', '2018-08-28 19:05:33');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('98', '4', '2020-02-15 03:42:44', '2014-11-27 13:33:11');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('27', '2', '2016-08-06 09:33:10', '2015-08-04 22:55:30');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('49', '4', '2019-05-04 21:31:12', '2013-09-17 07:16:57');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('58', '2', '2016-09-24 16:32:14', '2018-05-15 05:28:09');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('32', '6', '2014-11-13 15:12:07', '2012-02-25 05:02:10');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('35', '2', '2015-08-22 23:32:45', '2013-04-23 23:46:44');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('59', '4', '2014-11-01 21:17:23', '2013-01-20 02:32:41');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('30', '4', '2019-01-02 18:51:28', '2019-08-18 11:47:22');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('7', '3', '2016-10-07 17:56:02', '2017-07-13 16:18:31');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('67', '1', '2013-06-20 03:40:41', '2014-10-01 23:49:45');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('48', '6', '2019-06-03 23:37:00', '2015-01-07 17:29:19');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('1', '1', '2017-10-26 18:46:00', '2011-01-16 16:40:31');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('42', '2', '2018-08-04 08:50:23', '2012-03-23 17:42:09');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('68', '5', '2020-07-22 07:42:00', '2019-12-12 22:50:41');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('34', '4', '2017-03-28 21:03:35', '2014-11-14 07:19:09');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('82', '2', '2017-12-08 07:45:22', '2016-01-31 00:06:27');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('32', '1', '2016-10-14 03:36:41', '2019-06-17 22:39:36');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('59', '5', '2014-09-10 14:49:32', '2012-10-30 16:58:13');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('64', '1', '2012-06-04 16:23:53', '2018-09-25 00:39:00');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('98', '6', '2017-09-24 22:38:43', '2013-10-20 17:48:44');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('99', '2', '2020-04-10 13:16:29', '2010-10-12 12:25:33');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('27', '4', '2015-04-09 10:05:37', '2012-02-11 04:47:43');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('93', '4', '2014-10-17 02:20:22', '2012-02-17 07:53:26');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('19', '6', '2018-07-29 21:54:54', '2014-05-13 07:24:32');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('2', '6', '2012-05-09 22:24:10', '2012-12-08 14:39:35');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('12', '3', '2018-10-10 04:52:44', '2012-05-25 00:09:47');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('74', '1', '2018-01-06 05:35:44', '2012-08-10 01:21:17');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('63', '1', '2018-01-12 17:15:16', '2019-04-17 18:58:01');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('37', '2', '2014-03-14 15:41:08', '2010-12-09 10:46:54');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('88', '5', '2017-11-12 15:56:44', '2018-09-05 10:41:54');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('96', '5', '2018-07-25 04:42:31', '2013-09-11 06:36:00');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('1', '2', '2012-01-25 07:47:44', '2020-01-15 00:27:35');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('78', '4', '2014-02-06 04:17:03', '2011-03-02 06:35:06');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('8', '3', '2011-06-30 09:26:28', '2017-03-03 03:57:44');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('74', '1', '2018-04-24 14:48:40', '2018-10-16 16:54:18');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('37', '5', '2019-04-19 06:36:50', '2020-07-26 10:29:03');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('39', '4', '2015-07-26 23:16:44', '2020-01-29 21:08:24');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('30', '2', '2015-09-08 22:00:07', '2011-10-01 06:33:02');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('20', '3', '2013-10-22 14:13:05', '2012-07-05 12:56:52');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('30', '2', '2020-05-25 17:11:14', '2018-04-27 20:18:41');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('35', '3', '2017-04-05 06:30:57', '2019-09-03 10:11:23');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('70', '1', '2014-09-29 06:11:14', '2019-04-01 05:35:13');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('54', '2', '2017-10-26 14:51:14', '2016-02-26 05:13:47');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('22', '6', '2014-03-05 09:55:41', '2011-12-01 17:07:50');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('62', '1', '2015-08-18 07:11:06', '2013-06-28 09:10:29');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('61', '4', '2017-08-09 02:39:21', '2017-07-18 21:34:39');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('80', '4', '2018-12-17 14:45:02', '2013-05-04 04:04:15');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('85', '4', '2014-08-08 07:54:22', '2015-10-22 10:42:20');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('20', '6', '2011-04-26 12:13:27', '2020-07-05 10:00:47');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('98', '6', '2015-02-11 15:35:14', '2012-08-25 14:49:21');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('98', '3', '2017-06-06 00:39:26', '2013-10-09 02:10:27');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('66', '3', '2014-06-28 04:55:02', '2015-11-24 02:21:11');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('98', '6', '2012-04-22 22:59:20', '2014-12-23 12:00:06');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('67', '2', '2014-07-06 20:18:39', '2014-07-04 14:33:43');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('44', '6', '2017-04-22 04:30:32', '2017-04-04 09:29:00');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('38', '5', '2014-03-27 19:45:30', '2012-12-24 20:31:01');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('37', '1', '2011-02-01 04:49:11', '2014-09-12 19:46:29');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('86', '6', '2013-09-11 20:11:02', '2016-11-05 03:19:34');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('40', '1', '2018-05-02 20:49:22', '2013-02-10 20:29:15');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('82', '1', '2016-11-03 19:36:31', '2017-11-16 14:49:19');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('17', '3', '2018-03-14 14:02:28', '2015-06-05 03:08:04');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('59', '6', '2018-01-19 09:35:48', '2019-04-27 02:20:49');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('3', '3', '2019-10-26 11:19:33', '2018-01-05 14:57:37');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('53', '2', '2016-04-17 11:14:33', '2020-01-03 06:29:08');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('35', '4', '2016-08-12 00:23:29', '2013-02-05 22:10:04');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('16', '2', '2017-09-04 21:53:01', '2013-11-01 15:58:57');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('85', '5', '2014-01-14 09:44:53', '2014-05-17 08:29:21');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('68', '5', '2016-04-30 18:39:24', '2015-05-09 04:03:17');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('76', '3', '2018-01-30 16:54:44', '2015-03-24 20:31:11');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('99', '2', '2015-03-31 17:01:11', '2012-06-12 10:44:19');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('30', '3', '2020-03-11 03:46:44', '2016-05-03 11:46:45');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('98', '4', '2020-04-11 09:42:03', '2017-12-05 10:35:43');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('43', '5', '2018-06-07 19:42:02', '2010-11-14 19:05:51');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('57', '5', '2014-06-21 15:00:38', '2017-09-26 12:48:55');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('90', '3', '2018-03-21 16:22:38', '2018-08-03 16:09:14');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('84', '1', '2017-02-05 12:13:29', '2017-12-18 23:17:00');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('80', '3', '2017-12-27 12:06:13', '2012-03-14 12:08:36');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('2', '5', '2011-08-01 02:16:04', '2016-09-26 18:45:37');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('85', '4', '2015-06-09 03:05:19', '2017-01-12 10:45:46');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('4', '2', '2017-09-14 21:22:48', '2013-12-31 06:16:53');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('4', '2', '2015-11-13 09:27:43', '2018-08-07 13:46:16');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('51', '6', '2020-01-24 12:22:48', '2013-12-31 22:07:42');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('100', '2', '2011-10-22 00:52:04', '2012-09-22 22:30:28');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('70', '5', '2013-12-10 03:42:58', '2013-12-03 04:42:39');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('52', '5', '2015-05-18 07:20:32', '2012-09-19 09:22:50');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('96', '5', '2016-11-03 16:55:14', '2016-12-16 03:44:20');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('4', '6', '2014-06-29 19:36:18', '2017-11-05 16:10:51');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('47', '3', '2016-08-11 14:34:46', '2017-05-09 09:12:58');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('76', '1', '2019-05-27 23:51:28', '2016-03-15 01:34:44');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('29', '4', '2017-03-28 22:57:25', '2012-02-07 03:56:38');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('41', '1', '2019-08-12 05:14:11', '2018-05-06 21:12:27');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('71', '2', '2020-01-20 05:44:38', '2016-02-13 09:24:13');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('54', '5', '2015-03-06 14:27:25', '2013-04-22 09:28:15');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('2', '3', '2013-03-12 18:52:35', '2012-11-13 14:57:11');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('27', '1', '2017-07-15 19:28:26', '2016-01-21 22:38:21');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('56', '2', '2014-06-19 21:31:35', '2014-10-11 09:15:11');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('25', '1', '2015-08-08 03:16:25', '2012-09-16 02:13:02');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('18', '2', '2020-04-27 00:35:04', '2014-03-26 03:33:49');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('24', '6', '2013-03-19 20:06:02', '2017-11-07 04:39:07');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('1', '5', '2010-11-22 07:37:12', '2017-04-25 15:54:45');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('55', '6', '2011-05-25 12:47:27', '2017-10-23 03:48:23');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('57', '4', '2013-07-15 12:29:58', '2012-03-30 16:22:17');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('89', '1', '2019-09-19 19:34:22', '2018-01-09 00:50:53');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('5', '4', '2011-08-03 11:07:30', '2015-01-26 15:08:51');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('6', '2', '2019-03-19 22:16:34', '2016-09-01 19:30:37');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('29', '3', '2017-05-28 12:03:56', '2011-04-08 03:45:21');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('45', '6', '2013-05-31 11:32:59', '2011-08-01 13:07:54');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('67', '6', '2013-07-17 14:12:28', '2011-10-08 19:29:36');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('72', '5', '2011-06-01 05:09:23', '2014-12-08 16:09:10');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('36', '6', '2012-04-23 20:25:03', '2013-12-01 02:38:04');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('74', '6', '2012-11-26 05:44:06', '2011-07-09 16:08:15');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('28', '6', '2018-09-11 14:52:11', '2016-11-28 00:51:12');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('98', '3', '2020-02-15 17:58:42', '2011-05-26 22:50:33');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('22', '2', '2013-01-23 20:49:28', '2017-06-04 13:53:31');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('33', '2', '2017-03-03 02:01:14', '2015-01-26 14:37:56');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('97', '6', '2012-06-21 13:28:15', '2018-10-31 12:34:26');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('18', '4', '2012-02-29 20:21:05', '2014-04-18 12:17:57');
INSERT INTO `liked_genres` (`user_id`, `genre_id`, `created_at`, `updated_at`) VALUES ('46', '1', '2017-05-17 11:27:47', '2017-05-23 14:38:25');

DROP TABLE IF EXISTS liked_tracks;
CREATE TABLE liked_tracks (
	user_id BIGINT UNSIGNED COMMENT 'Идентификатор пользователя',
	track_id BIGINT UNSIGNED COMMENT 'Идентификатор трека',
	CONSTRAINT liked_tracks_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
	CONSTRAINT liked_tracks_track_id_fk FOREIGN KEY (track_id) REFERENCES tracks(id) ON DELETE SET NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP	
) COMMENT = 'Понравившиеся треки';

CREATE INDEX liked_tracks_user_id_idx ON liked_tracks(user_id);
CREATE INDEX liked_tracks_track_id_idx ON liked_tracks(track_id);

DROP TRIGGER IF EXISTS track_is_liked;
delimiter //
CREATE TRIGGER track_is_liked AFTER INSERT ON liked_tracks
FOR EACH ROW
BEGIN
	UPDATE tracks SET rating = COALESCE(rating, 0) + 1 WHERE id = NEW.track_id;
END //
delimiter ;

INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('36', '11', '2019-09-28 23:25:35', '2020-01-13 09:19:24');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('45', '85', '2020-08-11 21:55:48', '2019-12-24 14:31:57');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('76', '106', '2019-10-29 14:46:09', '2020-05-25 14:26:33');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('10', '83', '2020-04-13 11:44:42', '2020-04-30 16:48:22');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('21', '17', '2019-09-27 18:20:28', '2020-05-21 10:56:24');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('77', '8', '2019-09-26 14:01:28', '2020-09-17 22:47:18');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('66', '98', '2019-12-02 13:14:03', '2020-06-18 16:20:05');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('1', '96', '2020-04-22 00:14:39', '2020-09-01 19:29:50');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('63', '92', '2019-11-25 23:45:44', '2020-08-08 22:39:51');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('55', '3', '2020-03-04 06:39:06', '2020-07-31 07:34:50');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('40', '33', '2020-02-13 00:17:29', '2020-07-22 18:32:59');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('98', '6', '2020-05-15 04:00:49', '2020-06-16 08:38:03');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('12', '76', '2019-09-29 14:47:32', '2020-02-24 09:50:11');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('100', '91', '2020-08-10 16:16:06', '2020-03-11 05:55:25');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('64', '67', '2020-08-11 03:31:52', '2020-01-11 04:25:28');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('38', '110', '2019-12-12 20:46:59', '2020-07-06 01:54:58');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('69', '92', '2020-07-10 08:08:42', '2020-04-10 05:36:11');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('76', '50', '2020-09-10 11:23:41', '2020-04-09 06:50:52');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('77', '95', '2020-04-23 13:36:34', '2020-01-29 12:34:54');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('20', '109', '2019-09-28 21:27:12', '2020-03-08 21:22:29');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('100', '107', '2020-06-25 15:05:39', '2020-02-20 12:08:28');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('5', '73', '2019-11-08 07:17:13', '2020-02-10 09:34:13');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('84', '6', '2020-01-19 05:53:52', '2020-07-07 02:44:06');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('52', '51', '2020-09-19 11:04:18', '2020-03-09 13:50:14');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('88', '7', '2019-10-02 13:37:48', '2019-09-29 03:23:21');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('48', '31', '2020-02-04 20:39:13', '2019-10-21 21:04:18');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('36', '51', '2020-08-31 05:06:55', '2020-03-06 00:28:32');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('32', '53', '2020-01-17 23:34:16', '2020-04-19 18:47:28');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('13', '35', '2020-01-27 01:55:26', '2020-01-07 03:29:36');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('29', '86', '2020-08-24 22:40:33', '2020-08-11 00:37:11');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('92', '73', '2019-12-12 01:22:57', '2020-03-11 06:40:53');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('76', '67', '2020-03-14 04:03:37', '2020-06-24 08:59:52');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('48', '57', '2020-07-26 19:29:02', '2019-11-30 10:07:00');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('5', '28', '2020-05-30 20:13:37', '2019-12-13 23:41:27');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('37', '27', '2019-11-08 16:27:07', '2020-05-22 21:19:25');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('22', '40', '2020-01-18 22:52:05', '2019-11-21 23:30:37');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('21', '30', '2020-02-06 00:30:54', '2020-03-27 21:11:40');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('2', '4', '2020-02-08 22:49:40', '2019-12-31 16:39:12');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('32', '59', '2020-04-08 11:13:36', '2020-06-19 22:56:44');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('50', '21', '2020-06-15 14:09:58', '2019-09-24 11:06:04');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('59', '108', '2020-02-16 19:54:43', '2019-12-17 10:05:28');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('47', '104', '2020-04-04 05:00:45', '2020-04-30 20:41:37');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('42', '87', '2019-10-17 07:36:42', '2020-06-21 14:07:08');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('41', '61', '2020-08-17 09:44:00', '2020-03-16 05:45:20');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('9', '77', '2020-07-09 22:37:16', '2020-03-07 18:52:05');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('32', '111', '2019-11-01 10:19:46', '2019-11-19 02:28:03');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('35', '8', '2020-03-07 16:58:46', '2020-09-15 18:36:17');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('60', '92', '2020-03-01 10:29:49', '2019-11-14 03:21:57');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('58', '72', '2019-10-27 07:31:51', '2019-11-16 05:36:53');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('8', '105', '2020-01-09 04:32:38', '2020-09-10 15:00:40');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('89', '33', '2020-08-01 11:37:03', '2020-03-09 20:02:25');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('30', '10', '2020-09-14 07:06:25', '2020-07-28 09:19:13');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('56', '35', '2020-07-01 05:37:26', '2020-05-21 00:28:18');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('13', '96', '2020-09-23 11:47:41', '2019-11-25 04:31:09');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('84', '69', '2019-11-11 18:13:38', '2019-11-08 17:32:27');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('6', '47', '2020-09-12 12:19:51', '2019-11-12 01:24:32');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('59', '57', '2020-09-14 12:47:13', '2020-06-26 21:17:44');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('36', '111', '2019-10-26 11:21:07', '2020-08-03 12:16:21');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('30', '85', '2020-08-31 23:22:50', '2019-12-10 05:10:15');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('55', '43', '2020-01-03 14:11:37', '2020-06-11 23:33:32');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('46', '95', '2020-06-22 11:03:36', '2020-09-17 15:10:49');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('39', '89', '2020-07-26 18:31:24', '2020-08-29 15:29:16');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('93', '109', '2019-10-12 21:29:34', '2019-10-28 10:54:45');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('63', '56', '2020-08-05 07:46:13', '2020-01-12 21:16:49');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('63', '78', '2019-11-19 01:03:49', '2020-02-09 04:42:42');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('44', '58', '2020-03-06 04:03:03', '2019-10-30 18:50:17');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('99', '82', '2019-12-20 13:52:15', '2020-06-25 13:52:52');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('61', '60', '2019-10-10 10:00:23', '2020-08-29 13:11:24');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('5', '82', '2020-07-27 09:27:32', '2019-10-17 19:25:13');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('41', '98', '2020-02-21 04:59:31', '2020-06-27 00:45:34');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('35', '51', '2019-10-06 09:29:11', '2020-04-16 07:28:36');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('30', '104', '2020-08-14 00:44:53', '2019-10-14 01:23:47');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('97', '73', '2020-06-28 04:43:52', '2020-04-29 06:34:51');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('93', '29', '2020-06-02 08:14:03', '2019-09-24 19:43:46');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('41', '53', '2019-10-23 15:27:20', '2020-05-24 10:26:36');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('64', '96', '2019-10-08 08:40:54', '2020-05-11 09:03:15');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('33', '3', '2020-06-21 04:06:03', '2020-09-07 05:10:06');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('67', '27', '2020-05-02 03:42:54', '2019-12-03 02:45:36');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('100', '33', '2020-05-22 17:27:39', '2020-09-12 20:34:44');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('75', '70', '2020-04-08 17:31:41', '2020-06-14 07:02:53');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('99', '20', '2020-03-27 09:53:51', '2020-06-18 05:28:55');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('15', '109', '2020-04-22 11:31:32', '2020-08-15 16:08:27');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('92', '84', '2020-03-14 02:41:59', '2020-06-09 11:33:21');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('52', '108', '2020-05-14 02:38:07', '2020-05-13 09:16:40');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('49', '102', '2020-08-02 21:50:57', '2020-01-03 06:05:08');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('85', '92', '2020-07-27 03:56:18', '2020-08-23 16:51:23');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('38', '17', '2019-12-27 02:45:29', '2020-05-03 03:35:02');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('76', '38', '2020-05-21 15:04:54', '2020-02-27 21:30:39');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('80', '76', '2020-06-19 18:41:06', '2019-11-22 11:47:21');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('60', '23', '2020-03-16 23:06:52', '2019-10-12 18:30:22');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('16', '26', '2019-10-25 14:29:50', '2019-11-04 20:58:36');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('7', '53', '2020-07-21 21:13:20', '2020-08-21 02:13:29');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('26', '81', '2020-05-20 01:03:34', '2020-02-09 17:43:26');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('72', '28', '2020-02-02 08:39:56', '2020-08-01 19:18:01');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('2', '52', '2020-09-13 09:48:13', '2020-08-23 14:01:33');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('88', '1', '2019-09-26 02:23:26', '2020-08-20 19:16:38');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('64', '3', '2020-08-27 03:05:10', '2020-04-17 06:07:05');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('99', '62', '2019-11-14 02:53:12', '2020-04-26 05:11:51');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('78', '56', '2020-08-31 15:40:42', '2020-02-02 22:21:50');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('53', '28', '2019-12-11 08:27:53', '2019-10-28 17:35:31');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('42', '41', '2020-03-01 04:03:33', '2020-08-26 04:28:17');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('8', '88', '2019-11-27 03:16:36', '2020-08-22 12:17:20');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('52', '93', '2019-11-29 05:44:59', '2020-03-20 13:15:06');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('13', '35', '2020-01-25 23:45:12', '2020-01-19 22:49:27');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('53', '80', '2020-04-23 07:06:15', '2020-08-24 08:55:10');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('52', '75', '2020-05-04 21:40:13', '2020-05-12 08:49:51');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('95', '64', '2020-06-08 04:27:19', '2020-03-22 07:43:05');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('16', '22', '2020-05-26 18:37:25', '2020-06-11 23:35:55');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('31', '97', '2020-07-19 08:32:48', '2020-01-25 19:57:28');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('45', '36', '2020-07-26 05:41:59', '2020-01-24 00:58:35');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('34', '37', '2020-06-30 15:03:59', '2020-04-07 00:44:55');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('33', '108', '2020-07-28 16:35:18', '2020-05-15 23:43:23');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('35', '35', '2020-05-03 11:32:35', '2020-01-28 09:04:02');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('53', '14', '2020-05-23 13:51:15', '2020-01-18 01:16:36');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('81', '6', '2020-08-21 00:42:21', '2019-11-11 01:31:23');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('37', '25', '2020-09-02 19:56:57', '2020-06-05 09:41:09');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('42', '50', '2020-07-05 12:57:22', '2020-03-21 09:12:33');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('1', '104', '2020-06-07 23:08:28', '2020-06-25 15:08:34');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('29', '15', '2019-10-21 15:43:37', '2019-11-10 19:33:00');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('24', '90', '2020-06-05 20:24:08', '2020-07-20 19:59:12');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('85', '84', '2019-11-14 19:23:24', '2020-05-02 14:21:19');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('48', '88', '2020-01-09 20:30:18', '2020-03-26 06:28:12');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('33', '71', '2020-08-07 12:21:54', '2019-11-15 16:06:47');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('99', '70', '2020-09-19 11:18:39', '2019-10-20 10:22:52');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('51', '49', '2019-11-10 07:02:41', '2019-11-02 10:44:47');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('95', '93', '2020-05-05 20:35:30', '2020-03-11 22:16:35');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('77', '31', '2020-06-16 14:48:54', '2020-01-22 09:36:27');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('81', '13', '2020-01-05 08:28:54', '2020-07-23 15:17:52');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('59', '37', '2019-11-13 05:53:16', '2020-02-12 11:00:23');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('23', '45', '2019-10-10 00:10:16', '2020-05-02 09:00:44');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('38', '67', '2020-08-11 06:50:15', '2020-08-04 13:23:44');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('62', '89', '2020-01-19 18:37:12', '2020-05-02 04:08:17');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('5', '70', '2020-03-16 17:05:25', '2019-10-26 19:44:30');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('73', '37', '2020-08-27 14:41:04', '2020-04-27 14:50:41');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('76', '107', '2020-07-04 07:17:37', '2019-10-08 10:02:53');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('14', '67', '2020-06-07 11:24:02', '2020-04-14 05:12:39');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('71', '68', '2020-09-21 03:10:48', '2020-08-27 01:55:44');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('39', '4', '2019-12-21 15:30:13', '2020-08-04 21:09:53');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('25', '42', '2020-03-08 10:59:25', '2020-05-03 23:14:25');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('67', '83', '2020-04-13 06:02:51', '2020-06-11 02:09:44');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('81', '68', '2020-08-07 04:25:53', '2020-09-07 16:06:46');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('58', '64', '2019-10-31 14:44:05', '2020-07-24 12:00:28');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('89', '43', '2019-10-16 08:18:23', '2020-09-11 14:49:27');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('68', '53', '2019-10-19 16:46:47', '2019-10-27 16:43:36');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('71', '101', '2020-02-29 09:44:45', '2020-07-23 07:02:02');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('87', '10', '2020-02-23 10:45:23', '2020-03-11 10:40:17');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('51', '55', '2020-03-18 08:15:59', '2020-04-30 05:51:27');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('89', '61', '2020-05-02 05:33:35', '2019-11-26 21:20:12');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('12', '68', '2019-11-27 13:31:48', '2019-11-14 02:32:04');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('88', '97', '2020-05-11 11:05:23', '2019-10-13 10:03:50');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('57', '1', '2020-07-12 05:01:01', '2019-10-02 00:42:32');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('47', '31', '2020-05-07 07:25:54', '2020-06-25 00:42:14');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('62', '95', '2019-09-30 09:26:42', '2019-12-08 11:37:05');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('31', '96', '2020-05-07 06:55:42', '2020-04-22 23:15:00');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('22', '108', '2020-04-08 10:46:04', '2019-11-03 03:43:46');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('61', '3', '2020-07-10 07:26:06', '2019-12-31 18:42:37');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('58', '20', '2020-02-15 04:56:33', '2019-12-09 05:49:03');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('60', '52', '2020-06-11 23:25:13', '2020-03-02 20:34:02');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('56', '31', '2020-08-19 02:19:31', '2020-03-05 21:32:30');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('94', '30', '2020-03-21 04:32:56', '2020-05-03 05:32:20');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('19', '90', '2020-03-17 00:35:44', '2020-03-28 16:28:56');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('36', '76', '2020-08-27 12:37:57', '2020-04-20 12:56:49');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('30', '27', '2020-04-29 06:47:35', '2020-08-28 21:22:09');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('24', '45', '2020-05-29 10:13:27', '2019-11-07 11:35:02');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('85', '12', '2020-04-09 08:34:45', '2019-10-06 09:02:53');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('28', '46', '2020-05-27 22:34:29', '2020-07-08 21:58:08');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('11', '82', '2020-04-06 09:11:55', '2020-08-29 10:46:00');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('69', '81', '2020-06-11 01:52:59', '2020-05-11 14:13:24');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('59', '111', '2020-02-03 15:06:33', '2020-07-21 17:47:32');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('59', '89', '2020-06-30 08:23:10', '2019-10-17 02:00:09');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('97', '21', '2020-09-17 03:27:13', '2020-01-16 20:19:04');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('83', '61', '2019-10-05 23:25:11', '2019-10-15 14:48:42');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('37', '47', '2020-05-16 11:29:28', '2019-11-06 09:33:14');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('1', '103', '2019-12-05 18:28:56', '2020-01-09 15:51:45');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('70', '105', '2020-03-31 00:40:41', '2019-12-06 14:35:08');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('19', '98', '2020-02-10 18:18:53', '2020-04-24 16:23:37');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('75', '60', '2019-10-24 00:19:03', '2020-05-23 11:56:10');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('57', '5', '2020-01-23 20:37:17', '2020-02-14 08:30:34');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('78', '89', '2019-12-18 21:28:12', '2020-06-18 08:52:34');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('45', '69', '2020-01-26 09:54:47', '2020-03-14 06:43:26');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('90', '80', '2020-08-28 22:30:33', '2020-05-16 06:26:25');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('4', '1', '2020-01-07 10:27:04', '2020-06-28 13:54:26');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('46', '80', '2019-10-22 08:43:07', '2019-12-16 02:23:44');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('73', '4', '2020-04-20 14:55:46', '2019-11-13 11:25:50');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('72', '35', '2020-03-31 13:59:44', '2020-06-21 19:26:15');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('84', '77', '2020-08-12 05:38:21', '2019-11-04 05:14:18');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('50', '74', '2020-03-10 22:44:52', '2020-06-20 10:04:25');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('24', '95', '2019-12-09 02:16:35', '2020-02-23 02:58:33');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('9', '27', '2020-01-31 02:08:27', '2019-12-11 15:44:06');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('78', '87', '2020-03-06 03:27:33', '2019-10-12 14:59:07');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('19', '107', '2020-09-19 23:58:06', '2020-03-18 15:47:01');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('67', '105', '2019-10-28 04:36:52', '2020-04-04 20:53:14');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('51', '25', '2020-02-20 17:19:18', '2020-01-25 04:59:25');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('98', '31', '2020-03-30 14:01:59', '2020-09-01 01:43:43');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('2', '48', '2020-01-01 02:51:38', '2020-01-24 20:00:10');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('90', '102', '2020-02-21 07:30:16', '2020-09-21 11:41:11');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('15', '103', '2020-09-01 14:11:29', '2020-09-10 14:48:21');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('92', '67', '2020-09-05 02:25:30', '2019-11-18 20:38:46');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('65', '72', '2020-03-15 04:37:30', '2020-05-12 06:39:25');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('63', '41', '2019-11-18 13:56:42', '2020-02-03 08:18:57');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('96', '52', '2020-03-15 19:58:27', '2020-09-07 11:49:36');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('5', '50', '2020-01-06 04:12:00', '2020-01-26 09:26:02');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('13', '32', '2020-06-25 14:34:59', '2020-04-01 22:43:24');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('30', '23', '2020-06-26 23:55:27', '2020-01-09 14:25:12');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('53', '9', '2019-10-17 20:35:47', '2020-02-12 02:22:33');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('99', '80', '2019-11-06 09:32:28', '2019-11-18 00:55:08');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('4', '72', '2019-11-23 12:09:29', '2020-07-02 22:50:50');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('65', '60', '2019-11-12 12:42:56', '2020-03-28 23:20:08');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('87', '70', '2020-05-29 15:20:22', '2019-10-03 23:21:43');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('82', '99', '2020-03-06 19:10:38', '2020-05-13 19:47:38');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('6', '79', '2019-11-19 11:08:18', '2020-07-20 12:21:56');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('81', '22', '2020-02-09 14:56:21', '2020-03-09 18:31:05');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('64', '81', '2020-06-23 22:04:50', '2020-09-01 16:28:06');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('80', '32', '2019-12-04 00:18:30', '2019-09-26 22:33:14');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('37', '47', '2020-05-07 19:37:57', '2020-04-20 01:27:13');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('65', '36', '2019-12-01 21:04:32', '2020-05-28 13:25:48');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('89', '78', '2020-08-25 23:04:18', '2020-07-21 04:23:15');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('77', '1', '2020-06-12 23:58:16', '2019-10-01 06:21:18');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('98', '8', '2020-04-14 13:05:01', '2020-04-20 18:35:34');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('21', '56', '2020-01-12 04:48:11', '2020-03-08 04:07:30');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('14', '22', '2020-08-10 15:20:55', '2020-07-21 03:28:08');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('22', '20', '2019-10-26 00:55:00', '2019-11-12 11:50:47');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('84', '96', '2020-03-16 15:06:23', '2020-09-16 21:35:00');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('71', '79', '2020-04-06 11:13:53', '2019-12-29 09:59:03');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('50', '59', '2020-03-04 17:52:18', '2019-09-28 09:57:25');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('60', '61', '2020-09-14 18:45:59', '2020-07-20 09:31:17');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('24', '45', '2020-07-12 03:57:41', '2019-11-04 02:06:43');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('75', '97', '2020-05-08 11:08:10', '2020-05-25 23:53:38');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('13', '60', '2019-11-11 10:36:01', '2020-03-08 06:59:26');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('16', '55', '2019-10-22 10:18:00', '2019-11-15 17:42:02');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('96', '89', '2020-03-15 18:46:13', '2020-08-16 15:16:05');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('82', '94', '2019-11-24 21:46:54', '2020-04-17 00:21:17');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('50', '65', '2020-06-12 17:01:29', '2019-10-02 23:17:57');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('85', '53', '2020-07-31 20:44:28', '2020-07-15 00:31:03');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('65', '7', '2020-02-16 07:08:07', '2019-10-11 09:34:14');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('98', '88', '2019-12-20 14:16:15', '2020-08-07 11:15:43');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('26', '21', '2020-02-13 18:21:57', '2019-12-11 15:11:11');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('97', '10', '2019-10-08 16:56:16', '2020-09-11 07:48:12');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('5', '75', '2020-04-28 20:05:29', '2019-11-17 19:26:14');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('80', '61', '2020-01-12 03:35:55', '2020-02-02 05:07:57');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('20', '44', '2020-03-07 18:34:38', '2020-09-02 01:16:49');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('9', '48', '2019-10-14 23:34:18', '2020-06-17 13:25:02');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('79', '93', '2019-10-08 00:14:18', '2019-11-21 18:34:17');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('30', '102', '2020-02-22 12:12:06', '2019-12-04 11:27:47');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('37', '50', '2019-10-09 20:36:15', '2020-07-23 18:33:52');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('41', '37', '2019-10-08 02:10:12', '2020-03-21 22:45:12');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('25', '25', '2020-07-09 21:22:15', '2020-03-30 05:10:02');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('17', '83', '2020-05-25 00:11:56', '2019-11-05 13:51:19');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('80', '3', '2020-07-16 12:45:40', '2020-04-17 08:21:53');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('22', '50', '2020-01-18 20:24:42', '2019-10-19 11:38:37');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('8', '21', '2020-04-29 21:49:30', '2020-08-25 06:55:34');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('24', '37', '2019-09-25 19:40:26', '2020-07-15 11:44:44');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('37', '22', '2020-01-22 02:04:20', '2020-06-17 22:32:17');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('42', '47', '2019-12-22 20:06:37', '2020-03-29 13:23:31');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('88', '24', '2020-08-01 23:11:12', '2020-05-03 03:04:22');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('96', '8', '2020-02-26 15:23:14', '2020-02-02 10:54:59');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('61', '6', '2020-07-08 17:21:47', '2020-02-26 08:35:55');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('50', '44', '2019-12-09 20:17:26', '2019-11-29 04:16:04');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('88', '88', '2020-06-14 05:40:28', '2020-03-02 05:43:55');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('31', '28', '2020-07-15 17:22:22', '2019-12-04 10:51:33');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('25', '79', '2020-04-12 01:28:20', '2020-01-08 14:28:13');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('58', '55', '2020-06-30 02:00:45', '2020-06-05 13:47:41');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('93', '83', '2020-03-01 00:02:01', '2020-04-10 12:07:24');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('23', '81', '2019-10-02 07:50:32', '2020-04-19 21:14:55');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('77', '49', '2020-03-05 05:34:21', '2020-08-17 09:51:17');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('18', '93', '2020-04-24 05:09:09', '2019-12-21 09:34:13');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('63', '46', '2019-12-19 18:10:11', '2020-03-10 03:35:58');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('17', '110', '2020-04-01 12:46:55', '2020-08-10 14:14:35');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('61', '65', '2020-01-25 21:40:36', '2020-05-28 17:45:21');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('41', '53', '2019-12-19 21:07:22', '2019-10-12 10:45:08');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('81', '41', '2020-01-21 06:47:44', '2020-07-17 19:25:05');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('55', '46', '2020-01-31 13:06:32', '2020-02-29 13:16:43');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('42', '4', '2020-02-05 09:12:04', '2020-05-19 04:09:29');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('81', '32', '2020-06-08 18:54:55', '2020-02-07 09:45:58');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('83', '12', '2020-07-18 07:12:39', '2020-06-12 14:42:28');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('54', '8', '2020-08-26 14:57:45', '2020-09-06 00:00:50');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('82', '12', '2020-07-23 19:04:19', '2020-08-07 09:57:26');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('56', '83', '2020-07-24 19:55:59', '2020-03-27 15:06:14');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('85', '88', '2020-03-15 18:39:16', '2020-04-15 14:40:48');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('47', '68', '2019-09-26 00:51:55', '2020-03-10 20:22:28');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('23', '71', '2019-11-17 14:34:04', '2020-03-22 18:46:19');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('45', '95', '2020-04-09 00:56:02', '2020-01-23 07:06:16');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('4', '68', '2020-08-18 04:37:43', '2020-05-07 15:43:03');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('84', '72', '2020-06-20 18:18:56', '2020-01-12 03:50:04');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('20', '28', '2020-05-29 08:42:09', '2019-10-26 10:15:44');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('12', '111', '2020-02-13 04:51:29', '2020-08-25 13:23:48');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('62', '74', '2019-11-25 19:22:56', '2020-06-21 06:40:32');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('41', '3', '2020-03-08 21:36:16', '2020-03-25 22:56:30');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('70', '23', '2020-05-15 01:09:21', '2019-11-22 01:31:15');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('32', '58', '2019-11-25 09:48:39', '2019-10-07 08:26:38');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('32', '94', '2020-07-05 12:46:36', '2020-05-09 03:42:36');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('59', '15', '2020-01-14 01:09:12', '2020-02-02 13:02:15');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('95', '16', '2019-10-25 06:56:35', '2020-01-09 23:07:38');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('87', '89', '2020-03-27 17:17:09', '2019-09-28 09:06:29');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('93', '37', '2020-03-21 09:34:35', '2020-01-01 22:45:02');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('41', '18', '2019-12-10 16:40:51', '2020-05-19 02:07:03');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('97', '94', '2020-07-27 21:18:35', '2020-02-14 03:33:46');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('1', '1', '2020-07-01 08:37:44', '2019-09-24 08:29:32');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('46', '94', '2020-09-10 07:24:05', '2020-07-29 16:36:51');
INSERT INTO `liked_tracks` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES ('65', '72', '2020-08-16 09:47:07', '2019-12-22 02:14:12');

DROP TABLE IF EXISTS liked_artists;
CREATE TABLE liked_artists (
	user_id BIGINT UNSIGNED COMMENT 'Идентификатор пользователя',
	artist_id BIGINT UNSIGNED COMMENT 'Идентификатор исполнителя',
	CONSTRAINT liked_artists_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
	CONSTRAINT liked_artists_artist_id_fk FOREIGN KEY (artist_id) REFERENCES artists(id) ON DELETE SET NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP	
) COMMENT = 'Понравившиеся исполнители';

CREATE INDEX liked_artists_user_id_idx ON liked_artists(user_id);
CREATE INDEX liked_artists_artist_id_idx ON liked_artists(artist_id);

DROP TRIGGER IF EXISTS artist_is_liked;
delimiter //
CREATE TRIGGER artist_is_liked AFTER INSERT ON liked_artists
FOR EACH ROW
BEGIN
	UPDATE artists SET rating = COALESCE(rating, 0) + 1 WHERE id = NEW.artist_id;
END //
delimiter ;

INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('98', '5', '2011-09-26 05:52:40', '2019-01-23 19:50:08');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('73', '4', '2014-02-07 08:00:47', '2016-03-06 13:45:09');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('100', '1', '2018-10-23 22:36:59', '2016-12-19 12:35:48');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('41', '8', '2012-07-15 21:17:54', '2017-03-12 09:56:45');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('15', '8', '2020-03-17 21:38:18', '2015-04-16 17:38:44');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('40', '6', '2013-02-25 04:17:35', '2018-05-04 20:06:47');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('66', '7', '2012-11-08 08:41:04', '2018-10-09 17:35:52');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('11', '7', '2015-01-30 15:12:43', '2013-04-02 04:04:05');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('76', '8', '2012-10-17 03:54:09', '2011-12-19 01:27:38');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('96', '8', '2016-06-22 14:04:46', '2013-08-05 19:00:07');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('10', '4', '2013-12-05 02:45:43', '2015-03-17 20:59:11');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('12', '4', '2011-02-19 05:09:22', '2014-05-09 19:23:08');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('92', '4', '2012-08-18 15:04:38', '2012-01-07 19:07:56');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('22', '6', '2018-01-29 22:22:27', '2017-09-17 05:24:58');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('10', '3', '2017-12-27 13:19:44', '2013-02-01 04:45:08');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('75', '1', '2020-08-26 10:43:17', '2012-05-23 00:30:48');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('82', '5', '2014-09-30 00:00:59', '2014-04-21 09:27:29');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('49', '8', '2014-08-31 21:20:11', '2011-03-20 21:18:59');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('49', '9', '2011-03-11 23:01:15', '2016-01-01 06:34:41');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('69', '6', '2018-05-03 17:48:17', '2015-08-30 12:36:10');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('75', '1', '2015-09-08 02:26:04', '2016-03-05 17:10:38');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('27', '4', '2018-03-30 15:44:26', '2011-11-06 06:05:11');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('85', '4', '2012-04-05 07:32:27', '2012-07-13 13:20:27');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('11', '6', '2020-05-26 16:55:31', '2015-07-29 12:32:58');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('18', '1', '2018-06-13 00:13:41', '2012-12-04 17:23:21');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('40', '3', '2020-01-30 22:06:17', '2018-04-25 18:14:58');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('46', '5', '2018-06-03 12:45:36', '2011-05-31 04:23:16');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('68', '4', '2013-09-02 00:18:20', '2013-07-19 12:38:42');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('87', '9', '2017-10-01 18:41:01', '2010-10-17 12:18:21');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('95', '9', '2016-01-31 05:49:54', '2018-12-11 23:00:28');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('17', '7', '2018-03-04 18:54:17', '2017-08-11 14:04:10');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('3', '9', '2016-08-22 00:24:50', '2019-05-13 10:06:36');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('17', '5', '2012-06-27 14:26:05', '2015-04-09 19:43:07');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('80', '6', '2019-02-22 02:27:15', '2012-11-20 15:57:18');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('42', '5', '2017-06-26 20:27:06', '2017-07-31 09:58:03');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('28', '2', '2017-07-22 00:46:03', '2013-06-16 02:32:57');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('56', '5', '2013-09-17 14:01:48', '2015-01-23 00:30:59');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('57', '4', '2014-03-19 18:30:38', '2018-01-03 06:56:43');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('91', '7', '2018-06-25 03:26:26', '2015-09-11 11:25:00');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('2', '1', '2014-01-05 20:50:04', '2018-09-07 04:53:23');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('73', '4', '2020-03-01 14:28:33', '2018-06-09 08:17:01');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('36', '2', '2013-03-01 13:38:17', '2016-08-28 19:23:02');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('93', '1', '2019-08-23 12:03:07', '2011-02-14 03:04:15');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('55', '8', '2015-04-02 01:38:04', '2019-08-04 16:59:16');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('92', '5', '2011-09-11 03:48:21', '2012-10-08 15:59:28');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('75', '1', '2020-09-14 00:15:16', '2016-04-13 12:25:11');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('19', '8', '2020-01-31 17:40:30', '2019-02-19 21:58:05');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('7', '4', '2011-04-12 10:35:04', '2019-01-23 12:42:01');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('30', '8', '2018-11-14 16:15:02', '2019-06-14 15:20:24');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('100', '7', '2011-09-01 13:31:53', '2013-10-27 15:39:25');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('33', '3', '2017-08-18 19:32:53', '2019-09-24 03:26:47');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('87', '8', '2012-03-16 11:45:42', '2015-11-06 04:17:29');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('80', '4', '2014-12-02 14:16:30', '2016-07-16 05:56:40');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('29', '7', '2020-06-10 10:05:28', '2014-07-27 04:24:27');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('10', '3', '2012-04-13 01:08:08', '2018-02-24 04:20:32');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('79', '8', '2014-03-18 04:31:04', '2020-05-02 07:38:04');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('71', '2', '2011-05-15 15:32:37', '2017-02-15 08:28:02');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('1', '6', '2016-03-08 18:51:42', '2011-08-18 05:10:20');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('16', '5', '2019-10-29 02:44:00', '2013-07-01 06:10:25');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('43', '1', '2016-02-19 21:06:23', '2012-03-14 18:59:02');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('5', '2', '2020-08-01 07:53:32', '2010-10-07 22:04:55');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('16', '3', '2013-09-10 17:31:23', '2020-09-20 18:57:38');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('95', '2', '2010-11-09 16:57:35', '2015-02-27 16:03:18');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('59', '3', '2011-02-04 13:29:45', '2019-02-17 15:28:28');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('7', '6', '2015-05-16 21:03:24', '2019-03-31 07:02:15');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('95', '4', '2012-09-08 02:57:59', '2018-01-18 10:23:16');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('85', '8', '2016-10-19 10:43:41', '2016-05-25 18:43:37');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('28', '6', '2015-12-12 21:43:32', '2014-11-17 18:05:53');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('25', '6', '2014-06-27 05:15:17', '2014-10-19 14:37:36');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('35', '4', '2020-02-20 22:53:01', '2016-10-15 03:16:02');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('87', '2', '2013-04-13 02:54:16', '2016-06-09 17:53:41');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('17', '6', '2019-01-17 02:55:35', '2018-09-05 11:15:05');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('26', '2', '2013-11-24 04:16:25', '2010-11-07 19:39:53');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('21', '4', '2011-03-16 23:05:59', '2012-12-05 20:05:34');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('73', '6', '2019-12-23 03:47:39', '2017-06-13 04:22:25');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('49', '7', '2011-04-12 23:23:06', '2015-07-24 07:09:04');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('80', '6', '2016-03-26 09:43:56', '2014-05-28 07:29:27');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('1', '7', '2012-06-17 14:33:43', '2015-08-30 14:31:44');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('87', '6', '2015-03-23 22:16:31', '2018-07-29 18:32:38');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('99', '9', '2017-01-26 14:59:07', '2011-07-31 00:43:27');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('17', '9', '2011-07-28 15:30:51', '2014-08-16 04:59:07');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('33', '1', '2020-05-05 13:42:46', '2011-03-25 09:04:37');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('75', '6', '2019-07-03 18:48:57', '2017-05-12 06:47:17');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('66', '9', '2020-03-25 13:03:31', '2014-01-30 18:19:10');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('18', '9', '2011-08-27 22:13:50', '2012-02-23 00:26:02');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('32', '1', '2017-05-25 11:29:34', '2016-01-19 06:43:04');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('12', '5', '2016-07-29 13:46:21', '2011-05-28 20:41:56');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('61', '4', '2016-02-24 14:18:27', '2011-05-23 11:55:56');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('65', '8', '2015-04-08 06:08:26', '2010-12-30 14:56:29');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('79', '4', '2014-12-06 08:20:32', '2010-10-14 01:50:54');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('44', '3', '2014-02-13 00:55:14', '2018-11-15 10:24:30');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('15', '3', '2016-10-16 11:35:04', '2020-06-04 09:54:53');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('93', '2', '2014-11-01 06:36:18', '2017-03-16 07:02:52');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('97', '8', '2011-03-02 18:57:57', '2017-08-30 07:12:41');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('74', '9', '2020-02-14 08:39:06', '2013-10-02 05:33:43');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('72', '9', '2018-11-29 05:56:57', '2012-01-03 04:15:28');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('88', '1', '2017-02-13 04:20:54', '2020-02-02 18:52:42');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('92', '6', '2020-02-21 12:51:34', '2011-07-19 08:13:23');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('65', '6', '2017-05-26 10:22:19', '2013-04-24 16:49:34');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('61', '8', '2015-06-21 02:29:55', '2015-04-05 14:13:33');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('57', '9', '2011-08-11 04:52:23', '2016-05-09 17:59:13');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('86', '7', '2012-07-12 03:19:09', '2013-09-12 23:28:17');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('40', '5', '2018-08-26 01:01:57', '2010-12-29 02:13:52');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('6', '1', '2018-11-11 10:08:57', '2013-08-08 21:05:04');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('28', '8', '2013-10-28 17:45:12', '2014-06-29 21:26:04');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('42', '7', '2017-07-29 10:56:02', '2011-12-23 08:57:35');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('12', '6', '2017-09-30 18:47:51', '2018-03-19 06:50:54');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('95', '1', '2012-05-24 05:48:37', '2020-08-19 07:25:27');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('71', '9', '2014-11-28 02:11:30', '2014-11-02 18:17:45');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('83', '4', '2013-05-05 07:06:43', '2014-09-26 06:23:26');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('86', '5', '2018-06-18 18:56:34', '2011-05-13 15:16:45');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('35', '7', '2014-12-23 01:33:19', '2013-06-20 08:08:26');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('59', '3', '2020-08-26 09:47:40', '2020-02-27 10:50:55');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('35', '3', '2018-07-27 09:34:33', '2018-02-25 12:19:25');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('84', '9', '2017-02-20 03:36:43', '2016-03-07 17:17:09');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('6', '4', '2015-10-01 07:34:45', '2013-03-30 18:34:53');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('87', '9', '2012-04-03 04:40:27', '2017-06-17 06:26:02');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('10', '3', '2017-07-15 15:09:27', '2016-11-14 03:00:02');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('38', '2', '2019-11-06 01:23:27', '2014-03-06 04:14:45');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('31', '6', '2019-11-04 21:07:06', '2012-10-03 11:25:05');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('100', '7', '2013-04-13 13:37:28', '2013-06-12 03:01:08');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('38', '1', '2014-11-21 18:07:01', '2017-03-30 11:15:43');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('29', '3', '2016-03-18 02:24:48', '2010-12-08 14:47:56');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('15', '9', '2011-11-22 10:11:47', '2015-03-08 07:27:53');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('22', '9', '2016-01-03 22:18:52', '2017-02-05 23:45:04');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('43', '1', '2011-07-25 07:49:14', '2012-10-14 23:14:04');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('52', '7', '2010-11-12 19:24:26', '2019-01-26 02:56:55');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('80', '1', '2015-09-17 13:55:55', '2010-10-09 15:30:52');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('5', '2', '2020-07-27 14:15:00', '2013-10-21 17:37:09');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('33', '8', '2014-02-06 10:41:01', '2018-01-04 03:19:11');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('9', '4', '2017-01-23 11:38:04', '2016-03-23 09:45:13');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('29', '9', '2018-12-07 04:23:24', '2017-09-17 17:40:46');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('29', '4', '2014-07-03 15:32:43', '2019-02-16 04:07:17');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('21', '6', '2013-11-08 14:01:41', '2012-03-09 08:46:36');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('53', '5', '2018-12-30 21:13:45', '2012-12-03 10:57:39');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('32', '5', '2012-05-08 19:40:38', '2016-07-19 03:47:37');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('24', '7', '2016-02-07 07:21:20', '2019-10-11 07:42:59');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('63', '5', '2015-04-04 04:01:51', '2014-05-13 22:39:02');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('1', '7', '2012-01-18 00:48:33', '2012-12-16 05:48:09');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('51', '2', '2019-05-10 08:32:34', '2020-01-24 01:11:34');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('75', '9', '2011-07-27 09:23:58', '2018-08-17 21:29:34');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('29', '3', '2014-08-29 14:04:59', '2018-08-21 16:14:51');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('71', '1', '2018-01-12 21:35:44', '2019-10-05 23:03:52');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('35', '7', '2015-09-20 03:58:12', '2020-06-08 01:18:49');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('23', '7', '2018-04-01 20:54:04', '2020-05-31 21:19:39');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('63', '3', '2014-06-15 22:33:33', '2013-06-27 02:25:15');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('5', '9', '2018-01-29 23:09:40', '2018-07-16 00:10:06');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('25', '4', '2014-10-30 13:07:39', '2018-01-24 11:22:43');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('30', '5', '2013-01-09 17:10:25', '2019-05-26 17:03:28');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('100', '8', '2012-04-18 18:44:46', '2016-11-03 07:53:25');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('97', '3', '2018-02-05 15:25:05', '2011-10-05 13:01:57');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('34', '2', '2012-05-12 12:14:44', '2016-03-06 09:12:32');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('1', '9', '2014-08-18 01:55:19', '2014-10-30 05:52:44');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('72', '1', '2012-10-26 02:17:12', '2018-07-08 16:07:27');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('74', '2', '2014-05-29 22:59:39', '2015-05-29 08:17:33');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('23', '5', '2015-02-24 00:22:55', '2017-08-13 09:19:13');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('15', '5', '2020-03-21 11:05:37', '2015-07-24 00:44:13');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('74', '8', '2013-08-13 23:13:30', '2016-04-05 03:23:49');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('60', '1', '2017-09-03 08:44:04', '2011-07-19 20:53:36');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('60', '8', '2019-04-05 20:13:50', '2011-04-27 03:07:56');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('76', '2', '2014-03-08 13:23:43', '2017-03-14 08:00:44');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('13', '8', '2014-05-18 05:56:30', '2011-10-22 09:01:13');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('14', '4', '2015-10-23 17:51:06', '2019-10-14 00:17:10');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('15', '4', '2013-04-05 21:52:39', '2012-11-27 14:47:58');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('83', '2', '2019-08-27 16:38:34', '2016-12-31 12:18:08');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('25', '8', '2019-06-19 01:53:20', '2014-01-16 09:16:05');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('46', '6', '2017-04-29 16:15:13', '2018-01-04 06:05:49');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('99', '5', '2016-02-05 15:05:40', '2015-02-15 21:34:35');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('56', '7', '2016-04-05 11:55:01', '2014-11-01 05:46:48');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('46', '3', '2018-06-25 18:22:29', '2018-05-15 18:53:41');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('93', '7', '2011-02-25 04:03:30', '2013-03-12 02:14:17');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('78', '1', '2014-04-16 13:10:49', '2014-04-20 16:36:26');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('19', '5', '2017-05-06 08:11:56', '2011-03-17 17:35:51');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('92', '8', '2018-08-18 00:30:54', '2011-06-24 03:46:38');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('60', '5', '2011-05-07 14:42:12', '2013-12-06 06:03:05');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('61', '4', '2016-01-18 20:55:58', '2015-06-09 05:36:58');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('74', '7', '2019-03-03 17:32:48', '2018-06-21 01:15:11');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('16', '8', '2010-09-24 08:45:19', '2018-04-22 22:58:18');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('11', '3', '2017-02-10 11:56:12', '2020-06-03 12:54:24');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('30', '9', '2018-02-22 06:01:25', '2018-02-23 10:02:41');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('44', '5', '2010-10-10 04:39:36', '2017-12-11 07:29:39');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('72', '9', '2019-04-18 22:38:24', '2019-04-14 15:32:55');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('13', '7', '2011-05-24 09:31:39', '2011-09-07 12:43:38');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('35', '7', '2019-08-11 13:31:48', '2017-10-30 10:01:59');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('41', '8', '2013-06-12 08:19:37', '2017-09-25 18:26:54');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('97', '3', '2010-12-17 20:52:46', '2011-11-08 01:08:50');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('48', '7', '2019-11-29 09:42:39', '2018-01-10 20:36:24');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('40', '7', '2016-09-15 16:29:12', '2012-06-28 01:51:19');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('26', '3', '2019-12-26 18:37:40', '2011-04-01 09:32:38');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('46', '8', '2020-01-05 05:31:22', '2016-02-01 06:47:46');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('83', '1', '2013-05-30 01:10:01', '2017-04-07 05:19:30');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('21', '6', '2014-07-09 08:06:32', '2013-09-03 18:57:18');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('80', '4', '2020-05-04 00:10:59', '2012-02-07 13:10:45');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('43', '9', '2017-06-21 10:45:20', '2016-12-30 23:18:00');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('67', '7', '2013-11-04 15:51:59', '2014-05-03 17:49:17');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('82', '1', '2010-10-29 18:04:27', '2012-09-24 01:06:26');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('26', '5', '2014-02-06 02:08:59', '2014-02-15 14:26:39');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('100', '4', '2018-08-15 08:28:50', '2012-11-15 10:49:23');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('23', '4', '2014-12-28 20:55:22', '2016-09-28 08:47:02');
INSERT INTO `liked_artists` (`user_id`, `artist_id`, `created_at`, `updated_at`) VALUES ('7', '6', '2020-07-07 19:13:52', '2013-06-09 09:13:06');

DROP TABLE IF EXISTS liked_albums;
CREATE TABLE liked_albums (
	user_id BIGINT UNSIGNED COMMENT 'Идентификатор пользователя',
	album_id BIGINT UNSIGNED COMMENT 'Идентификатор альбома',
	CONSTRAINT liked_albums_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
	CONSTRAINT liked_albums_album_id_fk FOREIGN KEY (album_id) REFERENCES albums(id) ON DELETE SET NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP	
) COMMENT = 'Понравившиеся альбомы';

DROP TRIGGER IF EXISTS album_is_liked;
delimiter //
CREATE TRIGGER album_is_liked AFTER INSERT ON liked_albums
FOR EACH ROW
BEGIN
	UPDATE albums SET rating = COALESCE(rating, 0) + 1 WHERE id = NEW.album_id;
END //
delimiter ;

INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('28', '4', '2011-03-29 19:14:47', '2010-12-23 21:05:30');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('88', '1', '2020-04-12 17:53:17', '2020-03-05 02:03:05');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('59', '8', '2019-12-12 03:36:24', '2011-04-15 12:27:03');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('79', '10', '2015-12-02 16:26:33', '2017-08-24 17:24:30');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('65', '7', '2014-11-30 00:26:04', '2018-04-18 07:15:20');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('83', '6', '2014-10-16 07:34:48', '2014-11-14 04:36:31');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('51', '4', '2017-07-13 17:14:32', '2010-12-31 04:49:40');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('33', '5', '2014-01-03 12:28:40', '2016-02-25 20:13:29');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('16', '8', '2017-02-03 01:54:52', '2011-08-23 21:03:25');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('43', '7', '2012-02-18 14:02:42', '2016-12-25 21:06:39');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('86', '4', '2014-12-18 16:50:11', '2011-08-25 13:29:45');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('97', '3', '2014-04-03 13:23:58', '2015-01-26 18:08:54');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('77', '1', '2010-10-26 21:05:24', '2018-02-28 00:34:45');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('50', '8', '2016-07-27 20:16:40', '2016-04-01 04:52:09');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('80', '9', '2013-05-15 13:09:46', '2013-12-24 12:29:07');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('76', '1', '2014-04-12 05:47:35', '2018-08-06 02:06:49');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('7', '7', '2015-11-16 11:01:48', '2017-10-01 20:43:49');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('16', '8', '2017-08-26 20:20:25', '2020-01-17 16:27:37');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('31', '11', '2020-07-17 08:34:59', '2012-12-27 09:27:50');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('51', '11', '2019-03-04 00:09:54', '2019-11-05 15:24:16');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('52', '4', '2015-01-14 01:12:28', '2013-04-23 07:06:51');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('47', '1', '2016-09-20 16:46:39', '2011-07-27 01:12:10');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('67', '9', '2017-04-12 17:38:20', '2019-10-05 09:47:16');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('43', '10', '2012-01-22 05:51:47', '2019-03-01 01:25:37');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('45', '10', '2019-07-27 16:56:39', '2015-01-27 15:47:22');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('39', '4', '2016-12-28 23:42:17', '2018-03-14 07:17:01');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('20', '4', '2014-10-06 12:48:06', '2014-08-16 09:20:19');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('54', '11', '2010-11-20 16:32:56', '2013-03-12 22:27:21');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('41', '1', '2011-01-14 03:40:10', '2011-11-09 01:28:40');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('67', '3', '2011-09-25 02:15:00', '2015-04-10 08:37:22');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('79', '5', '2019-07-11 17:38:58', '2014-02-22 08:08:49');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('29', '10', '2016-12-02 09:19:35', '2018-10-12 16:28:30');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('6', '5', '2020-04-12 02:59:35', '2012-06-04 19:35:33');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('51', '4', '2018-12-25 13:36:54', '2016-08-30 19:27:41');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('38', '1', '2016-07-07 17:17:42', '2018-10-17 14:59:00');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('32', '10', '2019-10-21 01:42:09', '2011-01-15 18:05:50');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('35', '9', '2016-09-16 06:56:38', '2011-03-05 05:35:06');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('91', '1', '2016-02-04 11:52:40', '2020-05-13 12:36:44');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('57', '4', '2016-06-09 15:52:10', '2016-07-15 00:02:01');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('85', '1', '2011-11-21 19:57:57', '2020-02-09 02:34:45');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('19', '3', '2012-01-05 22:14:16', '2017-02-16 13:44:17');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('33', '5', '2019-12-29 08:09:31', '2016-10-24 15:22:11');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('59', '10', '2015-03-01 16:36:45', '2010-11-21 15:21:51');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('34', '11', '2016-06-29 09:38:14', '2011-11-26 19:32:49');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('89', '11', '2019-04-16 05:36:42', '2018-03-17 10:48:56');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('21', '8', '2018-11-10 13:37:41', '2018-11-25 16:46:55');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('43', '6', '2014-10-22 23:29:26', '2019-11-26 04:58:14');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('52', '6', '2014-08-27 08:05:09', '2019-10-13 01:38:49');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('93', '1', '2012-01-20 15:42:14', '2010-12-27 14:55:24');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('84', '4', '2011-05-24 14:11:12', '2011-10-16 12:43:52');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('4', '2', '2015-12-28 01:48:18', '2018-07-26 15:21:05');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('19', '5', '2018-12-02 20:00:14', '2012-01-31 19:32:19');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('94', '1', '2017-02-08 16:40:43', '2011-01-01 06:36:52');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('40', '6', '2014-09-20 09:03:39', '2011-12-02 12:31:38');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('42', '3', '2018-07-07 23:13:16', '2015-02-24 08:32:43');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('53', '7', '2011-01-05 01:51:09', '2019-09-14 12:22:35');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('48', '10', '2016-11-07 19:09:54', '2018-10-10 04:42:33');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('98', '1', '2020-08-29 07:15:25', '2014-01-07 10:51:00');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('71', '4', '2015-07-02 04:55:18', '2012-01-24 17:24:46');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('7', '7', '2014-12-09 10:14:34', '2019-05-23 06:57:38');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('31', '3', '2011-10-15 22:14:17', '2013-12-19 12:17:39');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('27', '8', '2017-10-15 02:36:08', '2019-08-13 02:44:44');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('76', '9', '2017-09-11 17:52:44', '2015-12-17 10:30:08');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('20', '8', '2014-06-23 07:26:55', '2011-09-23 21:55:21');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('81', '1', '2016-08-09 04:16:10', '2019-08-24 17:22:10');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('98', '10', '2020-07-21 23:32:01', '2013-03-10 07:48:39');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('20', '2', '2013-03-20 03:21:19', '2015-09-01 18:02:32');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('22', '2', '2019-02-10 19:44:07', '2018-07-05 18:55:55');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('25', '7', '2019-12-26 07:40:36', '2020-03-15 06:38:19');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('64', '8', '2015-11-14 15:37:53', '2014-03-02 21:11:00');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('86', '2', '2019-07-08 02:12:37', '2018-12-25 22:15:17');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('27', '4', '2012-12-17 14:38:53', '2013-03-10 12:55:06');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('2', '3', '2019-04-14 17:08:40', '2010-12-18 03:08:19');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('40', '8', '2018-12-07 02:07:44', '2013-10-08 20:01:14');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('54', '6', '2019-07-06 23:58:10', '2016-01-21 14:38:32');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('32', '10', '2016-08-13 02:39:28', '2012-05-31 00:29:37');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('73', '7', '2020-08-02 09:28:20', '2017-06-29 03:29:54');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('56', '6', '2015-06-10 22:56:16', '2011-11-09 22:38:00');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('37', '9', '2019-10-18 07:45:56', '2011-05-02 16:17:09');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('15', '2', '2020-05-09 03:58:08', '2011-04-04 21:22:39');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('80', '2', '2019-07-23 05:35:29', '2020-08-06 11:01:24');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('1', '11', '2016-06-06 04:44:43', '2013-04-24 22:03:36');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('28', '3', '2013-01-10 20:02:10', '2019-05-08 16:01:00');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('13', '6', '2019-01-07 18:29:09', '2019-02-21 07:55:46');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('85', '9', '2016-05-27 17:56:28', '2017-12-21 08:16:43');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('18', '8', '2013-07-28 11:10:22', '2019-04-30 13:41:16');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('93', '5', '2013-02-24 06:37:52', '2011-07-20 07:45:39');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('4', '11', '2012-04-12 23:09:46', '2018-08-07 18:39:19');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('68', '5', '2010-10-24 02:57:17', '2016-04-03 13:37:22');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('67', '3', '2016-09-26 03:53:06', '2011-02-23 15:50:35');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('89', '11', '2019-03-30 22:46:07', '2020-08-27 10:26:27');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('5', '7', '2012-08-10 21:12:01', '2013-01-11 10:39:17');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('57', '7', '2011-11-15 06:29:10', '2010-12-11 16:39:36');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('9', '11', '2017-05-13 03:43:11', '2019-11-28 04:30:18');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('37', '3', '2020-02-06 19:58:13', '2018-01-28 03:30:55');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('11', '2', '2020-07-08 06:29:25', '2014-09-07 15:56:41');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('35', '2', '2018-04-26 09:31:09', '2014-10-11 17:42:54');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('15', '7', '2016-05-09 07:55:00', '2014-07-20 07:12:23');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('34', '3', '2018-12-08 22:32:59', '2017-04-09 16:31:07');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('15', '3', '2014-11-14 07:16:02', '2015-09-30 20:51:48');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('4', '4', '2018-02-10 03:20:56', '2016-03-18 03:24:23');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('89', '11', '2019-04-12 14:31:37', '2016-08-01 13:04:51');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('77', '11', '2010-10-08 06:37:38', '2015-04-12 10:32:40');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('90', '5', '2013-03-13 07:49:37', '2013-03-09 04:06:40');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('35', '7', '2015-02-04 17:37:48', '2016-05-07 07:13:02');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('65', '3', '2016-06-27 23:59:10', '2015-08-25 10:53:39');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('54', '8', '2011-02-20 17:40:21', '2012-01-22 03:06:11');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('84', '2', '2016-11-24 11:02:29', '2014-01-02 08:01:48');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('31', '11', '2017-03-15 18:30:20', '2018-03-20 06:57:16');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('4', '8', '2016-01-11 14:50:44', '2010-10-25 19:44:10');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('15', '2', '2019-10-25 15:50:32', '2017-02-14 01:24:54');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('83', '6', '2017-11-12 06:32:53', '2016-06-03 13:55:36');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('25', '11', '2010-10-03 03:42:35', '2020-05-11 04:31:42');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('13', '7', '2018-03-04 08:32:41', '2012-05-20 22:26:58');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('25', '3', '2015-02-19 04:45:14', '2019-03-11 05:50:49');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('77', '3', '2014-10-06 07:35:13', '2015-10-28 07:03:21');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('60', '8', '2011-05-15 09:03:17', '2016-05-25 13:29:11');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('23', '4', '2013-10-03 05:07:14', '2012-10-25 07:59:26');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('57', '2', '2016-08-20 17:33:18', '2011-05-31 19:17:10');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('80', '11', '2014-04-20 03:42:51', '2012-11-29 01:57:59');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('68', '5', '2016-09-25 09:27:06', '2018-08-26 01:19:38');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('15', '3', '2017-01-31 03:52:00', '2013-06-14 10:23:54');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('14', '11', '2011-02-19 13:27:59', '2015-11-30 11:21:49');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('31', '5', '2018-12-19 08:44:41', '2012-05-04 16:05:36');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('91', '4', '2014-10-22 17:48:58', '2014-11-23 00:21:56');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('11', '1', '2012-09-23 11:26:00', '2014-05-10 14:58:06');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('47', '11', '2014-08-07 00:02:00', '2015-09-06 22:10:48');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('56', '8', '2013-07-15 15:24:20', '2013-10-05 15:09:29');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('90', '8', '2019-08-26 19:49:33', '2018-05-19 12:29:47');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('29', '2', '2018-12-14 20:12:36', '2011-09-24 04:57:29');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('95', '1', '2012-09-29 12:30:52', '2011-01-10 16:56:34');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('42', '6', '2011-12-18 06:42:03', '2015-01-21 04:31:27');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('70', '8', '2020-04-12 13:48:28', '2015-01-22 19:13:01');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('89', '3', '2020-06-03 13:12:05', '2020-09-05 04:57:10');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('76', '8', '2017-06-04 03:05:50', '2019-12-03 00:43:41');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('18', '5', '2011-11-29 13:51:10', '2013-01-23 04:26:15');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('13', '4', '2011-01-01 21:30:23', '2014-02-06 04:32:11');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('64', '3', '2013-09-18 01:56:26', '2012-04-29 01:25:42');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('31', '11', '2016-02-08 16:38:32', '2015-05-09 23:52:41');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('71', '3', '2012-11-21 08:58:58', '2016-08-20 04:54:11');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('28', '9', '2015-05-12 08:00:15', '2019-11-04 23:39:41');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('27', '9', '2017-04-07 12:45:52', '2014-06-05 15:15:04');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('74', '9', '2012-12-01 07:51:03', '2012-11-20 20:03:51');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('46', '8', '2013-04-26 22:34:30', '2019-07-16 20:30:33');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('50', '9', '2011-01-12 18:08:32', '2013-07-19 21:50:11');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('78', '5', '2019-07-19 14:49:23', '2014-05-08 00:12:29');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('79', '3', '2013-12-19 10:30:51', '2019-05-07 00:22:44');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('97', '6', '2011-07-06 00:12:20', '2014-11-12 21:51:48');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('83', '10', '2020-08-08 22:57:04', '2011-04-26 09:45:47');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('75', '7', '2020-08-10 16:11:12', '2010-10-22 11:51:18');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('55', '11', '2011-11-13 21:41:03', '2013-11-10 06:37:20');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('1', '8', '2016-08-15 00:39:34', '2017-03-09 03:56:36');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('24', '8', '2011-02-24 07:04:00', '2011-09-04 09:04:09');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('94', '6', '2019-10-28 11:03:15', '2014-03-01 10:53:39');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('58', '8', '2019-07-02 11:04:50', '2012-09-01 19:16:52');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('76', '10', '2011-10-30 07:57:29', '2017-12-02 23:51:23');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('46', '1', '2018-08-30 02:30:02', '2013-04-09 08:28:37');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('60', '3', '2017-12-01 22:58:28', '2015-04-01 00:42:02');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('84', '1', '2018-02-17 03:45:55', '2014-05-04 18:27:18');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('83', '4', '2017-10-12 16:36:39', '2016-02-18 10:44:51');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('79', '7', '2020-06-02 11:45:50', '2016-06-16 23:20:21');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('77', '7', '2018-06-03 19:12:59', '2015-11-20 12:17:10');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('80', '9', '2011-12-15 01:17:53', '2013-09-26 08:50:21');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('7', '7', '2011-03-02 00:09:20', '2017-10-05 07:17:11');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('59', '9', '2010-10-05 21:46:14', '2015-09-19 16:36:57');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('20', '2', '2018-01-16 14:42:17', '2014-08-25 09:36:47');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('73', '3', '2011-10-18 17:30:08', '2019-12-03 13:10:53');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('80', '11', '2020-03-18 01:44:40', '2016-04-12 03:27:14');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('84', '9', '2017-03-07 02:59:47', '2013-08-03 01:10:38');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('51', '5', '2012-08-22 05:08:59', '2020-07-12 19:57:01');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('37', '3', '2012-11-08 04:19:28', '2013-06-18 16:57:47');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('26', '10', '2013-09-11 19:21:10', '2012-03-16 13:02:05');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('29', '10', '2018-04-29 01:20:32', '2011-09-05 23:33:17');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('2', '2', '2016-08-23 21:36:56', '2015-07-26 16:01:26');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('91', '10', '2014-04-02 02:11:29', '2019-02-28 19:36:41');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('45', '8', '2014-09-17 08:36:07', '2018-06-19 00:15:43');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('45', '3', '2016-03-05 02:32:53', '2014-12-09 00:08:17');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('27', '3', '2018-05-29 09:47:02', '2011-09-16 08:50:12');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('94', '4', '2012-12-19 16:13:32', '2012-08-15 11:51:55');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('86', '6', '2014-08-17 06:24:16', '2011-04-26 00:27:19');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('14', '1', '2014-01-21 21:22:55', '2012-11-03 15:15:21');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('65', '10', '2018-12-28 14:53:07', '2016-03-28 14:00:03');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('24', '5', '2014-05-11 13:09:31', '2013-01-27 23:59:30');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('83', '1', '2012-12-17 20:55:12', '2011-08-30 19:22:30');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('18', '4', '2011-08-05 13:58:21', '2020-07-30 08:48:15');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('48', '6', '2018-03-15 02:13:22', '2013-04-21 16:51:36');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('59', '9', '2019-03-01 14:02:43', '2019-06-05 19:44:02');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('37', '10', '2017-08-04 11:22:15', '2012-05-29 09:33:53');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('59', '5', '2011-08-04 08:03:09', '2014-05-23 00:27:32');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('99', '6', '2014-12-31 01:33:41', '2019-03-09 02:59:01');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('22', '5', '2018-11-18 07:42:55', '2013-08-13 11:19:12');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('18', '8', '2017-09-11 16:22:36', '2011-07-05 07:06:13');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('64', '5', '2017-11-09 14:07:45', '2012-02-12 16:03:02');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('91', '7', '2019-04-29 11:30:43', '2018-12-26 08:40:15');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('78', '9', '2012-03-03 16:39:10', '2020-08-24 02:19:00');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('9', '10', '2013-04-09 19:19:02', '2015-04-10 23:07:46');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('80', '9', '2012-02-29 03:19:30', '2018-02-10 02:24:14');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('77', '1', '2019-06-17 23:48:16', '2012-09-19 08:17:01');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('19', '7', '2016-03-29 10:10:23', '2016-02-05 16:31:11');
INSERT INTO `liked_albums` (`user_id`, `album_id`, `created_at`, `updated_at`) VALUES ('10', '4', '2012-12-15 16:25:24', '2014-11-09 15:00:09');

DROP TABLE IF EXISTS liked_playlists;
CREATE TABLE liked_playlists (
	user_id BIGINT UNSIGNED COMMENT 'Идентификатор пользователя',
	playlist_id BIGINT UNSIGNED COMMENT 'Идентификатор плейлиста',
	CONSTRAINT liked_playlists_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
	CONSTRAINT liked_playlists_playlist_id_fk FOREIGN KEY (playlist_id) REFERENCES playlists(id) ON DELETE SET NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP	
) COMMENT = 'Понравившиеся плейлисты';

DROP TRIGGER IF EXISTS playlist_is_liked;
delimiter //
CREATE TRIGGER playlist_is_liked AFTER INSERT ON liked_playlists
FOR EACH ROW
BEGIN
	UPDATE playlists SET rating = COALESCE(rating, 0) + 1 WHERE id = NEW.playlist_id;
END //
delimiter ;

INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('9', '63', '2017-02-25 02:26:32', '2015-10-02 23:23:13');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('99', '40', '2017-06-16 13:07:07', '2011-04-03 12:04:22');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('76', '8', '2013-04-24 15:34:46', '2014-05-21 11:43:58');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('98', '93', '2019-03-30 07:42:32', '2018-01-06 17:51:34');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('36', '60', '2019-03-12 20:49:20', '2011-10-20 05:18:59');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('26', '64', '2019-09-10 18:47:27', '2018-01-12 02:46:40');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('40', '61', '2016-10-02 09:26:38', '2012-03-30 09:44:47');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('50', '27', '2018-05-18 03:52:49', '2014-10-06 18:56:21');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('52', '97', '2016-03-08 03:34:22', '2010-10-15 17:11:00');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('68', '64', '2019-06-29 15:18:10', '2018-03-17 09:06:13');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('61', '40', '2012-12-11 07:50:04', '2013-05-02 17:04:15');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('46', '22', '2014-11-16 03:55:32', '2013-02-18 02:03:34');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('64', '94', '2014-06-06 22:29:54', '2010-10-10 20:49:58');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('16', '30', '2010-12-29 23:44:32', '2017-09-22 05:42:58');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('9', '50', '2011-08-09 07:44:19', '2015-04-19 15:53:52');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('99', '17', '2013-10-31 12:37:49', '2015-10-01 12:56:27');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('13', '97', '2017-04-19 13:43:41', '2012-04-02 00:31:26');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('57', '88', '2018-02-13 22:43:40', '2017-10-18 11:35:56');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('4', '54', '2018-05-11 21:03:57', '2020-03-25 20:40:03');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('80', '40', '2018-02-16 00:40:34', '2012-05-10 19:34:40');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('14', '5', '2019-05-11 10:28:43', '2011-01-29 06:07:42');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('4', '54', '2011-08-11 06:21:42', '2014-04-23 03:12:43');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('65', '53', '2018-10-10 07:07:33', '2015-01-14 14:16:18');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('80', '17', '2012-12-14 15:04:47', '2018-05-29 13:29:14');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('50', '47', '2016-03-21 11:34:05', '2012-09-27 16:07:06');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('81', '10', '2020-06-20 20:31:35', '2011-02-07 14:28:18');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('87', '27', '2011-01-01 03:49:21', '2013-12-25 19:49:26');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('31', '50', '2012-02-13 19:03:19', '2012-05-27 21:32:45');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('20', '46', '2015-06-18 13:50:32', '2017-02-08 21:56:59');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('80', '29', '2011-04-02 23:39:52', '2019-08-19 06:53:10');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('96', '78', '2017-07-30 12:26:24', '2015-03-27 17:28:45');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('46', '9', '2017-01-09 20:06:48', '2019-03-18 22:46:22');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('74', '2', '2016-07-15 10:03:06', '2012-07-05 14:17:56');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('96', '78', '2014-03-17 05:39:21', '2015-10-14 18:08:25');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('55', '76', '2017-05-15 06:50:33', '2020-02-22 10:06:39');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('17', '68', '2015-11-05 01:15:36', '2015-02-05 18:18:22');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('81', '21', '2011-05-23 05:55:27', '2019-02-09 11:02:35');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('22', '46', '2012-12-25 15:50:25', '2017-04-30 15:27:44');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('73', '1', '2012-01-13 11:47:08', '2016-10-11 07:42:05');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('62', '22', '2018-01-13 20:39:18', '2019-05-30 10:13:42');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('47', '43', '2017-02-20 19:27:43', '2015-08-22 08:43:31');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('31', '33', '2015-07-26 08:00:20', '2019-08-04 11:17:11');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('69', '62', '2014-08-24 09:58:41', '2014-02-09 06:36:37');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('83', '89', '2019-12-06 09:39:08', '2014-09-16 04:03:40');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('8', '62', '2018-07-01 18:23:51', '2018-03-26 00:47:19');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('17', '4', '2013-04-04 23:08:34', '2019-10-24 14:10:37');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('40', '62', '2018-08-08 08:08:57', '2015-07-19 23:15:59');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('12', '13', '2017-03-27 14:24:11', '2014-03-28 19:51:10');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('63', '8', '2011-08-20 22:38:57', '2011-02-06 02:11:49');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('91', '18', '2015-12-18 14:06:27', '2015-11-08 15:50:46');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('83', '8', '2014-04-05 18:39:16', '2015-04-09 09:41:28');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('86', '63', '2011-12-29 21:46:25', '2017-04-17 13:34:02');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('28', '7', '2012-02-14 18:29:32', '2014-06-22 06:13:03');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('9', '100', '2019-05-04 06:15:33', '2010-11-30 06:56:57');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('8', '70', '2016-08-13 05:24:53', '2018-08-29 19:43:55');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('22', '55', '2013-09-21 12:42:09', '2012-12-23 11:08:01');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('13', '53', '2014-10-11 03:46:53', '2015-09-27 14:05:16');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('88', '82', '2011-12-30 09:44:33', '2012-11-25 07:20:46');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('15', '70', '2019-09-27 02:30:40', '2011-08-29 09:14:32');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('70', '22', '2018-01-03 19:57:55', '2013-11-01 11:18:03');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('32', '87', '2019-07-13 03:32:01', '2020-06-18 18:36:17');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('26', '71', '2017-05-22 22:54:41', '2011-09-21 22:54:59');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('48', '37', '2011-11-16 10:54:38', '2011-06-22 17:26:44');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('84', '11', '2013-04-20 11:52:59', '2010-11-02 17:04:37');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('44', '74', '2017-07-15 14:16:18', '2013-11-09 17:15:50');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('29', '27', '2014-09-18 09:55:23', '2016-07-25 05:39:16');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('81', '15', '2012-04-22 23:06:37', '2014-04-16 16:05:38');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('90', '8', '2012-09-04 18:55:44', '2012-05-06 19:45:12');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('21', '98', '2017-05-31 15:48:51', '2014-08-28 05:15:12');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('8', '29', '2016-12-09 06:53:08', '2011-06-11 05:26:29');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('68', '30', '2011-02-22 19:28:06', '2016-05-03 09:12:08');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('83', '80', '2017-03-22 21:59:46', '2017-06-26 12:58:31');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('83', '70', '2019-11-30 14:27:38', '2016-01-14 10:40:07');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('61', '97', '2013-09-09 14:41:49', '2012-10-11 19:45:29');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('40', '31', '2014-09-04 01:06:48', '2012-09-12 13:59:12');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('19', '71', '2012-02-15 21:10:44', '2016-01-01 23:01:37');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('17', '44', '2017-11-13 17:15:03', '2015-08-15 07:29:07');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('42', '65', '2011-07-29 14:33:30', '2014-03-17 05:45:03');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('81', '25', '2019-10-12 13:45:38', '2019-12-08 20:38:11');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('76', '25', '2016-12-03 20:06:07', '2020-05-27 10:13:46');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('99', '4', '2017-04-04 01:31:11', '2014-10-17 01:40:32');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('51', '79', '2011-10-11 20:10:54', '2019-02-13 10:44:49');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('19', '41', '2010-10-29 20:18:16', '2016-12-22 00:39:26');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('87', '40', '2013-09-06 15:48:44', '2018-05-04 20:54:53');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('38', '95', '2014-01-08 15:06:24', '2018-02-08 17:27:48');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('68', '6', '2017-03-28 07:07:43', '2010-12-23 04:15:43');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('25', '50', '2017-03-23 08:27:17', '2010-11-16 16:41:16');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('85', '7', '2014-02-10 04:17:10', '2017-07-18 10:59:12');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('20', '46', '2011-12-27 01:28:26', '2018-06-04 22:21:31');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('3', '59', '2017-12-08 10:34:41', '2014-11-19 12:49:55');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('77', '22', '2016-01-16 16:17:49', '2011-06-15 08:13:34');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('29', '93', '2015-09-22 21:32:22', '2018-01-04 06:42:29');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('66', '71', '2019-01-25 04:43:19', '2012-05-28 07:00:01');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('58', '46', '2019-12-23 17:49:01', '2010-11-12 03:48:03');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('95', '33', '2017-08-13 22:43:38', '2012-08-14 16:17:53');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('71', '93', '2018-02-24 16:15:38', '2011-12-12 06:11:23');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('37', '22', '2019-10-21 02:19:11', '2020-07-14 02:53:16');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('72', '55', '2017-06-06 14:52:23', '2011-01-24 03:36:41');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('62', '59', '2018-11-16 02:37:57', '2020-01-11 10:18:01');
INSERT INTO `liked_playlists` (`user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES ('94', '99', '2014-08-31 12:13:46', '2014-01-20 02:12:37');

-- Процедура поиска песни или исполнителя
DROP PROCEDURE IF EXISTS search_songs;
DELIMITER //
CREATE PROCEDURE search_songs (IN input_text VARCHAR(50))
BEGIN
	SELECT
	output_track(t.id) AS songs
	FROM artists ar
		JOIN tracks t 
			ON t.artist_id = ar.id
	WHERE t.name LIKE CONCAT('%', input_text, '%') OR ar.name LIKE CONCAT('%', input_text, '%')
	ORDER BY t.rating DESC;
END//
DELIMITER ;

-- Функция объединения жанров музыки
DROP FUNCTION IF EXISTS output_track_genres;
DELIMITER //
CREATE FUNCTION output_track_genres (tr_id BIGINT UNSIGNED)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	
	DECLARE out_genre VARCHAR(50);
	
	SET out_genre = (
		SELECT
			GROUP_CONCAT(DISTINCT g.name SEPARATOR ', ')
		FROM tracks t
			JOIN tracks_genres tg 
				ON tg.track_id = t.id
			JOIN genres g
				ON g.id = tg.genre_id 
		WHERE t.id = tr_id
		GROUP BY t.id
	);
	
	RETURN out_genre;
END//
DELIMITER ;

-- Функция объединения жанров исполнителя
DROP FUNCTION IF EXISTS output_artist_genres;
DELIMITER //
CREATE FUNCTION output_artist_genres (ar_id BIGINT UNSIGNED)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	
	DECLARE out_genre VARCHAR(50);
	
	SET out_genre = (
		SELECT
			GROUP_CONCAT(DISTINCT g.name SEPARATOR ', ')
		FROM artists ar
			JOIN artists_genres ag 
				ON ag.artist_id = ar.id 
			JOIN genres g
				ON g.id = ag.genre_id 
		WHERE ar.id = ar_id
		GROUP BY ar.id
	);
	
	RETURN out_genre;
	
END//
DELIMITER ;

-- Функция объединения жанров альбома
DROP FUNCTION IF EXISTS output_album_genres;
DELIMITER //
CREATE FUNCTION output_album_genres (al_id BIGINT UNSIGNED)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	
	DECLARE out_genre VARCHAR(50);
	
	SET out_genre = (
		SELECT
			GROUP_CONCAT(DISTINCT g.name SEPARATOR ', ')
		FROM albums al
			JOIN albums_genres ag 
				ON ag.album_id = al.id 
			JOIN genres g
				ON g.id = ag.genre_id 
		WHERE al.id = al_id
		GROUP BY al.id
	);
	
	RETURN out_genre;

END//
DELIMITER ;

-- Функция объединения исполнителя, фитов и названия трека в одну строку
DROP FUNCTION IF EXISTS output_track;
DELIMITER //
CREATE FUNCTION output_track (tr_id BIGINT UNSIGNED)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
	
	DECLARE out_track VARCHAR(100);
	
	SET out_track = (
		SELECT
			CONCAT(
				main_ar.name, 
				IF(
					ft.track_id IS NULL,
					' - ',
					CONCAT(' ft. ', GROUP_CONCAT(DISTINCT feat_ar.name SEPARATOR ', '), ' - ')
				), 
				t.name)
		FROM tracks t
			JOIN artists main_ar
				ON main_ar.id = t.artist_id 
			LEFT JOIN featuring_tracks ft 
				ON ft.track_id = t.id
			LEFT JOIN artists feat_ar
				ON feat_ar.id = ft.feat_id
		WHERE t.id = tr_id
		GROUP BY t.id
		LIMIT 1);
	
	RETURN out_track;
END//
DELIMITER ;

-- Представление вывода 10 самых популярных плейлистов всех пользователей
DROP VIEW IF EXISTS popular_playlists;
CREATE VIEW popular_playlists AS
	SELECT
		p.name AS playlist_name,
		COALESCE(p.rating, 0) AS likes,		
		CONCAT(u.firstname, ' ', u.lastname) AS creator
	FROM playlists p
		JOIN users u
			ON u.id = p.created_by 
	ORDER BY p.rating DESC
	LIMIT 10;

-- Представление вывода топ 10 самых популярных песен всех времен
DROP VIEW IF EXISTS top_popular_songs;
CREATE VIEW top_popular_songs AS
	SELECT DISTINCT
		output_track(t.id) AS liked_songs,
		t.rating AS likes
	FROM liked_tracks lt
		JOIN tracks t
			ON t.id = lt.track_id
		JOIN artists ar
			ON t.artist_id = ar.id
	ORDER BY t.rating DESC
	LIMIT 10;

-- Представление вывода топ 10 самых популярных песен недели
DROP VIEW IF EXISTS weekly_popular_songs;
CREATE VIEW weekly_popular_songs AS
	SELECT DISTINCT
		output_track(t.id) AS liked_songs,
		t.rating AS likes
	FROM liked_tracks lt
		JOIN tracks t
			ON t.id = lt.track_id
		JOIN artists ar
			ON t.artist_id = ar.id
	WHERE WEEK(t.created_at) BETWEEN (WEEK(NOW()) - 1) AND WEEK(NOW())
	ORDER BY t.rating DESC
	LIMIT 10;