CREATE DATABASE Collezione_film;

CREATE TABLE UTENTE (
    id_utente INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    nome_utente VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE REGISTA (
    id_regista INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cognome VARCHAR(255),
    data_nascita DATE
);

CREATE TABLE FILM (
    id_film INT AUTO_INCREMENT PRIMARY KEY,
    id_regista INT,
    durata TIME,
    valutazione FLOAT,
    titolo VARCHAR(255),
    anno_pubblicazione YEAR,
    FOREIGN KEY (id_regista) REFERENCES REGISTA(id_regista)
);

CREATE TABLE RECENSIONE (
    id_recensione INT AUTO_INCREMENT PRIMARY KEY,
    id_utente INT,
    id_film INT,
    valutazione FLOAT,
    commento TEXT,
    FOREIGN KEY (id_utente) REFERENCES UTENTE(id_utente) ON DELETE CASCADE,
    FOREIGN KEY (id_film) REFERENCES FILM(id_film) ON DELETE CASCADE
);

CREATE TABLE PLAYLIST (
    id_playlist INT AUTO_INCREMENT PRIMARY KEY,
    id_utente INT,
    nome VARCHAR(255),
    descrizione TEXT,
    n_contenuti INT,
    FOREIGN KEY (id_utente) REFERENCES UTENTE(id_utente) ON DELETE CASCADE
);

CREATE TABLE FILM_PLAYLIST (
    id_playlist INT,
    id_film INT,
    id_utente INT,

    PRIMARY KEY (id_playlist, id_film, id_utente),
    FOREIGN KEY (id_film) REFERENCES FILM(id_film) ON DELETE CASCADE
    
);

CREATE TABLE GENERE (
    id_genere INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255)
);

CREATE TABLE GENERE_APPARTENENZA (
    id_genere INT,
    id_film INT,
    PRIMARY KEY (id_genere, id_film),
    FOREIGN KEY (id_genere) REFERENCES GENERE(id_genere) ON DELETE CASCADE,
    FOREIGN KEY (id_film) REFERENCES FILM(id_film) ON DELETE CASCADE
);

CREATE TABLE ATTORE (
    id_attore INT PRIMARY KEY,
    nome VARCHAR(255),
    cognome VARCHAR(255),
    anno_nascita INT
);

CREATE TABLE ATTORI_FILM (
    id_attore INT,
    id_film INT,
    PRIMARY KEY (id_attore, id_film),
    FOREIGN KEY (id_attore) REFERENCES ATTORE(id_attore) ON DELETE CASCADE,
    FOREIGN KEY (id_film) REFERENCES FILM(id_film) ON DELETE CASCADE
);

CREATE TABLE TRAILER (
    id_trailer INT PRIMARY KEY,
    id_film INT,
    url VARCHAR(255),
    FOREIGN KEY (id_film) REFERENCES FILM(id_film) ON DELETE CASCADE
);

CREATE TABLE FILM_UTENTI (
    id_utente INT,
    id_film INT,
    PRIMARY KEY (id_utente, id_film),
    FOREIGN KEY (id_utente) REFERENCES UTENTE(id_utente) ON DELETE CASCADE,
    FOREIGN KEY (id_film) REFERENCES FILM(id_film) ON DELETE CASCADE
);
