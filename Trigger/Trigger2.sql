-- Trigger n.2 Incrementa il n.di contenuta di una playlist all'aggiunta di un film

CREATE TRIGGER aggiorna_n_contenuti_playlist
AFTER INSERT ON FILM_PLAYLIST
FOR EACH ROW
BEGIN
    -- Incrementa il numero di contenuti nella playlist
    UPDATE PLAYLIST
    SET n_contenuti = n_contenuti + 1
    WHERE id_playlist = NEW.id_playlist;

    -- Aggiorna la data di ultima modifica della playlist
    UPDATE PLAYLIST
    SET ultima_modifica = NOW()
    WHERE id_playlist = NEW.id_playlist;
END;

SHOW TRIGGERS;










