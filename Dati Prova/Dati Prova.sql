-- UTENTE
INSERT INTO UTENTE (id_utente, email, nome_utente, password) VALUES
(1, 'utente1@example.com', 'utente1', 'password1'),
(2, 'utente2@example.com', 'utente2', 'password2'),
(3, 'utente3@example.com', 'utente3', 'password3'),
(4, 'utente4@example.com', 'utente4', 'password4'),
(5, 'utente5@example.com', 'utente5', 'password5'),
(6, 'utente6@example.com', 'utente6', 'password6'),
(7, 'utente7@example.com', 'utente7', 'password7'),
(8, 'utente8@example.com', 'utente8', 'password8'),
(9, 'utente9@example.com', 'utente9', 'password9'),
(10, 'utente10@example.com', 'utente10', 'password10');


-- REGISTA
INSERT INTO REGISTA (id_regista, nome, cognome, data_nascita) VALUES
(10, 'Steven', 'Spielberg', '1946-12-18'),
(20, 'Quentin', 'Tarantino', '1963-03-27'),
(30, 'Christopher', 'Nolan', '1970-07-30'),
(40, 'Martin', 'Scorsese', '1942-11-17'),
(50, 'Alfred', 'Hitchcock', '1899-08-13'),
(60, 'David', 'Fincher', '1962-08-28'),
(70, 'Clint', 'Eastwood', '1930-05-31'),
(80, 'Stanley', 'Kubrick', '1928-07-26'),
(90, 'Quentin', 'Tarantino', '1963-03-27'),
(100, 'Christopher', 'Nolan', '1970-07-30');


-- FILM
INSERT INTO FILM (id_film, id_regista, durata, valutazione, titolo, anno_pubblicazione) VALUES
(100, 10, '02:22:00', 8.5, 'Schindler''s List', 1993),
(200, 20, '02:34:00', 8.9, 'Pulp Fiction', 1994),
(300, 30, '02:28:00', 8.8, 'Inception', 2010),
(400, 40, '02:58:00', 8.7, 'Taxi Driver', 1976),
(500, 50, '01:49:00', 8.5, 'Psycho', 1960),
(600, 60, '02:19:00', 8.8, 'Fight Club', 1999),
(700, 70, '02:12:00', 8.6, 'Gran Torino', 2008),
(800, 80, '02:26:00', 8.4, 'The Shining', 1980),
(900, 90, '02:34:00', 8.9, 'Pulp Fiction', 1994),
(1000, 100, '02:28:00', 8.8, 'Inception', 2010);


-- ATTORE
INSERT INTO ATTORE (id_attore, nome, cognome, anno_nascita) VALUES
(01, 'Tom', 'Hanks', 1956),
(02, 'Leonardo', 'DiCaprio', 1974),
(03, 'Meryl', 'Streep', 1949),
(04, 'Brad', 'Pitt', 1963),
(05, 'Jennifer', 'Lawrence', 1990),
(6, 'Robert', 'De Niro', 1943),
(7, 'Johnny', 'Depp', 1963),
(8, 'Emma', 'Stone', 1988),
(9, 'Denzel', 'Washington', 1954),
(10, 'Natalie', 'Portman', 1981);


-- GENERE
INSERT INTO GENERE (id_genere, tipo) VALUES
(001, 'Drammatico'),
(002, 'Azione'),
(003, 'Thriller'),
(004, 'Fantascienza'),
(005, 'Commedia'),
(006, 'Horror'),
(007, 'Fantasy'),
(008, 'Animazione'),
(009, 'Romantico'),
(0010, 'Avventura');

-- PLAYLIST
INSERT INTO PLAYLIST (id_playlist, id_utente, nome, descrizione, n_contenuti) VALUES
(11, 1, 'Playlist di Utente 1', 'Le mie preferite', 3),
(22, 2, 'Playlist di Utente 2', 'Da vedere', 2),
(33, 3, 'Playlist di Utente 3', 'Classici', 4),
(44, 4, 'Playlist di Utente 4', 'Recenti', 1),
(55, 5, 'Playlist di Utente 5', 'Top 10', 5),
(66, 6, 'Playlist di Utente 6', 'Film preferiti', 5),
(77, 7, 'Playlist di Utente 7', 'Da vedere', 3),
(88, 8, 'Playlist di Utente 8', 'Classici', 7),
(99, 9, 'Playlist di Utente 9', 'Thriller', 4),
(110, 10, 'Playlist di Utente 10', 'Fantascienza', 6);


-- GENERE_APPARTENENZA
INSERT INTO GENERE_APPARTENENZA (id_genere, id_film) VALUES
(001, 100),
(001, 400),
(002, 200),
(003, 300),
(003, 400),
(006, 600),
(007, 700),
(008, 800),
(009, 900),
(0010, 1000);

-- RECENSIONE
INSERT INTO RECENSIONE (id_recensione, id_utente, id_film, valutazione, commento) VALUES
(110, 1, 100, 9, 'Un capolavoro assoluto'),
(220, 2, 200, 8.5, 'Fantastico'),
(330, 3, 300, 9, 'Molto coinvolgente'),
(440, 4, 400, 8, 'Interessante'),
(550, 5, 500, 8.5, 'Da vedere assolutamente'),
(660, 6, 600, 8.7, 'Un capolavoro di David Fincher'),
(770, 7, 700, 8.5, 'Emozionante e coinvolgente'),
(880, 8, 800, 8.9, 'Uno dei migliori film di Kubrick'),
(990, 9, 900, 8.6, 'Storia avvincente e ben raccontata'),
(1010, 10, 1000, 9.1, 'Capolavoro assoluto di Christopher Nolan');

-- ATTORI_FILM
INSERT INTO ATTORI_FILM (id_attore, id_film) VALUES
(01, 100),
(02, 200),
(03, 300),
(04, 400),
(05, 500),
(06, 600),
(07, 700),
(08, 800),
(09, 900),
(010, 1000);

-- TRAILER
INSERT INTO TRAILER (id_trailer, id_film) VALUES
(101, 100),
(202, 200),
(303, 300),
(404, 400),
(505, 500),
(606, 600),
(707, 700),
(808, 800),
(909, 900),
(1010, 1000);

-- FILM_UTENTI
INSERT INTO FILM_UTENTI (id_utente, id_film) VALUES
(1, 100),
(1, 200),
(2, 200),
(2, 300),
(3, 300),
(6, 600),
(7, 700),
(8, 800),
(9, 900),
(10, 1000);

-- FILM_PLAYLIST
INSERT INTO FILM_PLAYLIST (id_playlist, id_film, id_utente) VALUES
(11, 100, 1),
(22, 200, 2),
(33, 300, 3),
(11, 200, 4),
(22, 300, 5),
(66, 600, 6),
(77, 700, 7),
(88, 800, 8),
(99, 900, 9),
(110, 1000, 10);







