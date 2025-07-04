-- operazione n.3 (Inserire un nuovo film all'interno di una playlist)
INSERT INTO FILM_PLAYLIST (id_playlist, id_film, id_utente)
SELECT p.id_playlist, 300, p.id_utente
FROM PLAYLIST p
WHERE p.id_playlist = 99 AND p.id_utente = 9;
