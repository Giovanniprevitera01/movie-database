-- TRigger n.3 Aggiornamento valutazione media film

CREATE TRIGGER aggiorna_valutazione_media
AFTER INSERT ON RECENSIONE
FOR EACH ROW
BEGIN
    -- Calcola la nuova valutazione media del film
    DECLARE num_recensioni INT;
    DECLARE nuova_valutazione FLOAT;

    -- Conta il numero di recensioni per il film
    SELECT COUNT(*) INTO num_recensioni
    FROM RECENSIONE
    WHERE id_film = NEW.id_film;

    -- Calcola la nuova valutazione media
    SELECT AVG(valutazione) INTO nuova_valutazione
    FROM RECENSIONE
    WHERE id_film = NEW.id_film;

    -- Aggiorna la valutazione media del film nella tabella FILM
    UPDATE FILM
    SET valutazione = nuova_valutazione
    WHERE id_film = NEW.id_film;
END;

SHOW TRIGGERS;
