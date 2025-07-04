-- Trigger n.4 Controllo duplicati film in una playlist

CREATE TRIGGER controllo_duplicati_playlist
BEFORE INSERT ON FILM_PLAYLIST
FOR EACH ROW
BEGIN
    DECLARE num_film INTEGER;
    SELECT COUNT(*) INTO num_film FROM FILM_PLAYLIST WHERE id_playlist = NEW.id_playlist AND id_film = NEW.id_film;
    IF num_film > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Il film è già presente nella playlist';
    END IF;
END;

SHOW TRIGGERS;










