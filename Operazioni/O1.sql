-- operazione n.1 (Ricerca avanzata)

SET @attore_nome = NULL; -- Modifica il valore di questa variabile al NOME dell'attore desiderato
SET @attore_cognome = NULL; -- Modifica il valore di questa variabile al COGNOME dell'attore desiderato
SET @genere_tipo = 'Thriller'; -- Modifica il valore di questa variabile al tipo di genere desiderato
SET @regista_nome = NULL;  -- Modifica il valore di questa variabile a NULL o al NOME del regista desiderato
SET @regista_cognome = NULL;  -- Modifica il valore di questa variabile a NULL o al COGNOME del regista desiderato

SELECT titolo
FROM FILM f
JOIN ATTORI_FILM af ON f.id_film = af.id_film
JOIN ATTORE a ON af.id_attore = a.id_attore
LEFT JOIN GENERE_APPARTENENZA ga ON f.id_film = ga.id_film
LEFT JOIN GENERE g ON ga.id_genere = g.id_genere
LEFT JOIN REGISTA r ON f.id_regista = r.id_regista
WHERE 
    (
        @attore_nome IS NULL OR a.nome = @attore_nome
    )
    AND
    (
        @attore_cognome IS NULL OR a.cognome = @attore_cognome
    )
    AND
    (
        @genere_tipo IS NULL OR g.tipo = @genere_tipo
    )
    AND
    (
        @regista_nome IS NULL OR r.nome = @regista_nome
    )
    AND
    (
        @regista_cognome IS NULL OR r.cognome = @regista_cognome
    );
