# 🎬 Movie Database Management System

A comprehensive SQL-based relational database project for managing a movie collection. Designed with advanced features like triggers, stored procedures, and optimized queries for a rich user experience.  

[![Made with MySQL](https://img.shields.io/badge/Made%20with-MySQL-blue?style=for-the-badge&logo=mysql)](https://www.mysql.com/)  
[![License](https://img.shields.io/badge/license-MIT-green?style=for-the-badge)](LICENSE)  
[![Status](https://img.shields.io/badge/status-active-brightgreen?style=for-the-badge)]()  

---

## 📑 Table of Contents

- [Features](#-features)
- [Database Schema](#-database-schema)
- [Tech Stack](#-tech-stack)
- [Setup & Installation](#-setup--installation)
- [Example Operations](#-example-operations)
- [Triggers](#-triggers)
- [Author](#-author)
- [License](#-license)

---

## 🚀 Features

✅ Relational database for managing:
- Users and their playlists  
- Movies, genres, directors, actors, and trailers  
- Reviews and user ratings  

📦 Advanced functionalities:
- Search movies by actor, genre, director  
- Add movies to user playlists  
- Manage user reviews and ratings  
- Automatically update playlist contents and movie ratings  

⚡ Includes:
- ER Diagram and SQL scripts for creation and population  
- Predefined queries for common operations  
- Four advanced **triggers** for data integrity

---

## 🗺️ Database Schema

📌 The database `Collezione_film` contains 11 interconnected tables:  

- `UTENTE` – User information  
- `REGISTA` – Directors  
- `FILM` – Movies  
- `RECENSIONE` – Reviews  
- `PLAYLIST` – User playlists  
- `FILM_PLAYLIST` – Movies in playlists  
- `GENERE` – Genres  
- `GENERE_APPARTENENZA` – Movie-genre relations  
- `ATTORE` – Actors  
- `ATTORI_FILM` – Actor-movie relations  
- `TRAILER` – Movie trailers  

You can find the ER Diagram in [`ER_diagram.png`](ER_diagram.png).  

---

## 🛠 Tech Stack

<p align="center">
  <a href="https://www.mysql.com/">
    <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg" alt="MySQL" width="50" height="50" style="border-radius:50%; border:2px solid black; padding:4px; background:white;">
  </a>
  <a href="https://ubuntu.com/">
    <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ubuntu/ubuntu-plain.svg" alt="Ubuntu" width="50" height="50" style="border-radius:50%; border:2px solid black; padding:4px; background:white;">
  </a>
  <a href="https://git-scm.com/">
    <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="Git" width="50" height="50" style="border-radius:50%; border:2px solid black; padding:4px; background:white;">
  </a>
</p>

---

## ⚙️ Setup & Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/movie-database.git
   cd movie-database

    Import database schema:

mysql -u your_username -p < schema.sql

Populate tables with sample data:

    mysql -u your_username -p < insert_data.sql

    Run predefined queries from queries.sql or interact with the database using your preferred SQL client.

📝 Example Operations
🔍 Advanced Search

Search movies based on actor, genre, and director filters:

-- Example: Search for Thriller movies
SET @genere_tipo = 'Thriller';
CALL search_movies();

➕ Add Movie

INSERT INTO FILM (id_film, id_regista, durata, valutazione, titolo, anno_pubblicazione)
VALUES (1100, 100, '02:40:00', 9.0, 'Interstellar', 2014);

🎶 Create Playlist

INSERT INTO PLAYLIST (id_playlist, id_utente, nome, descrizione, n_contenuti)
VALUES (90, 2, 'Christmas Favorites', 'Movies to watch during Christmas', 0);

⭐ Add Review

INSERT INTO RECENSIONE (id_utente, id_film, valutazione, commento)
VALUES (3, 100, 9, 'A truly emotional masterpiece.');

⚡ Triggers
🛑 1. Limit User Playlists

Prevents users from creating more than 20 playlists.
🔄 2. Auto-Increment Playlist Contents

Automatically updates the number of contents in a playlist after adding a movie.
⭐ 3. Auto-Update Movie Ratings

Recalculates and updates the average rating of a movie whenever a new review is added.
🚫 4. Prevent Duplicate Movies in Playlists

Ensures the same movie isn’t added twice to a playlist.
👤 Author

    Giovanni Previtera – GitHub Profile

📜 License

This project is licensed under the MIT License - see the LICENSE file for details.
