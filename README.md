# 🎬 Movie Database Management System

A comprehensive SQL-based relational database project for managing a movie collection. Designed with advanced features like triggers, stored procedures, and optimized queries for a rich user experience.  

[![Made with MySQL](https://img.shields.io/badge/Made%20with-MySQL-blue?style=for-the-badge&logo=mysql)](https://www.mysql.com/)  
[![License](https://img.shields.io/badge/license-MIT-green?style=for-the-badge)](LICENSE)  
[![Status](https://img.shields.io/badge/status-active-brightgreen?style=for-the-badge)]()  

---

## 📑 Table of Contents

- [🎯 Features](#-features)
- [🗺️ Database Schema](#-database-schema)
- [🛠 Tech Stack](#-tech-stack)
- [⚙️ Setup & Installation](#️-setup--installation)
- [📖 Example Operations](#-example-operations)
- [⚡ Triggers](#-triggers)
- [👤 Author](#-author)
- [📜 License](#-license)

---

## 🎯 Features

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

- **UTENTE** – User information  
- **REGISTA** – Directors  
- **FILM** – Movies  
- **RECENSIONE** – Reviews  
- **PLAYLIST** – User playlists  
- **FILM_PLAYLIST** – Movies in playlists  
- **GENERE** – Genres  
- **GENERE_APPARTENENZA** – Movie-genre relations  
- **ATTORE** – Actors  
- **ATTORI_FILM** – Actor-movie relations  
- **TRAILER** – Movie trailers  
- **FILM_UTENTI** – Movies watched by users  

📷 *You can add an ER diagram screenshot here for better visualization.*

---

## 🛠 Tech Stack

<p align="center">
  <a href="https://www.mysql.com/" target="_blank">
    <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg" alt="MySQL" width="50" height="50" style="border-radius:50%; border:2px solid black; padding:4px; background:white;">
  </a>
  <a href="https://ubuntu.com/" target="_blank">
    <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ubuntu/ubuntu-plain.svg" alt="Ubuntu" width="50" height="50" style="border-radius:50%; border:2px solid black; padding:4px; background:white;">
  </a>
  <a href="https://git-scm.com/" target="_blank">
    <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="Git" width="50" height="50" style="border-radius:50%; border:2px solid black; padding:4px; background:white;">
  </a>
</p>

---

## ⚙️ Setup & Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/movie-database.git
   cd movie-database
   
2. Import the database schema:
    ```bash
mysql -u your_mysql_user -p < schema.sql

3. Populate the database with sample data:
   ```bash
mysql -u your_mysql_user -p < insert_data.sql

4. Run predefined queries from queries.sql or interact with the database using your preferred SQL client (like MySQL Workbench, DBeaver, or CLI).
   
---

## 📖 Example Operations

Here are some key SQL operations included in the project:
### 🔍 Advanced Search

Find movies based on actor, genre, or director:

-- Example: Search for all Thriller movies
SET @genere_tipo = 'Thriller';
CALL search_movies();

### ➕ Insert a New Movie

INSERT INTO FILM (id_film, id_regista, durata, valutazione, titolo, anno_pubblicazione)
VALUES (1100, 100, '02:40:00', 9.0, 'Interstellar', 2014);

### 🎶 Create a Playlist

INSERT INTO PLAYLIST (id_playlist, id_utente, nome, descrizione, n_contenuti)
VALUES (90, 2, 'Christmas Favorites', 'Movies to watch during Christmas', 0);

### ⭐ Add a Review

INSERT INTO RECENSIONE (id_utente, id_film, valutazione, commento)
VALUES (3, 100, 9, 'A truly emotional masterpiece.');

### 🗑️ Delete a User

DELETE FROM UTENTE WHERE id_utente = 1;

## ⚡ Triggers
### 🛑 1. Limit User Playlists

Prevents users from creating more than 20 playlists.
### 🔄 2. Auto-Increment Playlist Contents

Automatically updates the number of contents in a playlist after adding a movie.
### ⭐ 3. Auto-Update Movie Ratings

Recalculates and updates the average rating of a movie whenever a new review is added.
### 🚫 4. Prevent Duplicate Movies in Playlists























