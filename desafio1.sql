DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE  SpotifyClone;

CREATE TABLE artist(
	artist_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(50) NOT NULL
);

CREATE TABLE album(
	album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	title_album VARCHAR(100) NOT NULL,
	release_year INT NOT NULL,
	artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
);

CREATE TABLE songs(
	songs_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	title_song VARCHAR(100) NOT NULL,
	duration_seconds INT,
	album_id INT,
    FOREIGN KEY (album_id) REFERENCES album(album_id)
);

CREATE TABLE plan(
	plan_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name_plan VARCHAR(100) NOT NULL,
	value_plan DECIMAL(5,2)
);

CREATE TABLE usuario(
	usuario_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome  VARCHAR(100) NOT NULL,
	idade INT,
	data_assinatura YEAR,
	plan_id INT,
    FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
);

CREATE TABLE usuario_artista(
	usuario_id INT,
	artist_id INT,
	CONSTRAINT PRIMARY KEY (usuario_id,artist_id)
);

CREATE TABLE historico_reproducao(
	usuario_id INT,
	song_id INT,
	data_reproducao DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id)
);

INSERT INTO artist(artist_id,full_name)
VALUES
	(1,'Walter Phoenix'),
	(2,'Walter Phoenix'),
	(3,'Peter Strong'),
	(4,'Lance Day'),
	(5,'Freedie Shannon'),
	(6,'Freedie Shannon'),
	(7,'Tyler Isle'),
	(8,'Tyler Isle'),
	(9,'Tyler Isle'),
	(10,'Fog');

INSERT INTO album(title_album,release_year,artist_id)
VALUES
	('Envious',1990,1),
	('Exuberant',1993,1),
	('Hallowed Steam',1995,2),
	('Incandescent',1998,3),
	('Temporary Culture',2001,4),
	('Library of liberty',2003,4),
	('Chained Down',2007,5),
	('Cabinet of fools',2012,5),
	('No guarantees',2015,5),
	('Apparatus',2015,6);
    
INSERT INTO songs(title_song,duration_seconds,album_id)
VALUES 
	('Soul For Us',200,1),
	('Reflections Of Magic',163,1),
	('Dance With Her Own',116,1),
	('Troubles Of My Inner Fire',203,2),
	('Time Fireworks',152,2),
	('Magic Circus',105,3),
	('Honey, So Do I',207,3),
	("Sweetie, Let's Go Wild",139,3),
	('She Knows',244,3),
	('Fantasy For Me',100,4),
	('Celebration Of More',146,4),
	('Rock His Everything',223,4),
	('Home Forever',231,4),
	('Diamond Power',241,4),
	("Let's Be Silly",132,4),
	('Thang Of Thunder',240,5),
	('Words Of Her Life',185,5),
	('Without My Streets',176,5),
	('Need Of The Evening',190,6),
	('History Of My Roses',222,6),
	('Without My Love',111,6),
	('Walking And Game',123,6),
	('Young And Father',197,6),
	('Finding My Traditions',179,7),
	('Walking And Man',229,7),
	('Hard And Time',135,7),
	("Honey, I'm A Lone Wolf",150,7),
	("She Thinks I Won't Stay Tonight",166,8),
	("He Heard You're Bad For Me",154,8),
	("He Hopes We Can't Stay",210,8),
	('I Know I Know',117,8),
	("He's Walking Away",159,9),
	("He's Trouble",138,9),
	('I Heard I Want To Bo Alone',120,9),
	('I Ride Alone',151,9),
	('Honey',97,10),
	('You Cheated On Me',95,10),
	("Wouldn't It Be Nice",213,10),
	('Baby',136,10),
	('You Make Me Feel So..',83,10);
    
INSERT INTO plan(name_plan,value_plan)
VALUES
	('gratuito',0),
	('familiar',7.99),
	('universitário',5.99),
	('pessoal',6.99);