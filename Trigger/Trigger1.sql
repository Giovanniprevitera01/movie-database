-- Trigger n.1 (l'utente può creare massimo 20 playlist personalizzate)

CREATE TRIGGER limite_playlist_personalizzate BEFORE INSERT ON PLAYLIST
FOR EACH ROW
BEGIN
    DECLARE count_playlists INT;
    SET count_playlists = (
        SELECT COUNT(*)
        FROM PLAYLIST
        WHERE id_utente = NEW.id_utente AND nome = 'Playlist Personalizzata'
    );
    IF count_playlists >= 20 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Hai raggiunto il limite massimo di playlist personalizzate.';
    END IF;
END;

SHOW TRIGGERS;
