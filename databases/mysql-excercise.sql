/*
BASH:
mysql -u <user> -h <localhost> -p <password>
*/

SHOW DATABASES;
SHOW TABLES;
USE <database>
SELECT DATABASE(); -- muestra la base de datos actual
SHOW WARNINGS; -- mysql da a conocer aspectos a tener en cuenta

-- si se borra un elemento de la tabla "books", sql ignorará esta acción para asignar un id a un futuro elemento.

CREATE TABLE IF NOT EXISTS books (
       book_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       author_id INTEGER UNSIGNED, -- referencia a la tabla "authors"
       title VARCHAR(100) NOT NULL,
       year INTEGER UNSIGNED NOT NULL DEFAULT 1900,
       languaje VARCHAR(2) NOT NULL DEFAULT 'es' COMMENT 'iso 639-1 languaje',
       cover_url VARCHAR(500),
       price DOUBLE(6,2) NOT NULL DEFAULT 10.0, -- seis espacios en total, dos dedicados a decimales
       sellable TINYINT(1) DEFAULT 1, -- banderas: true or false
       copies INTEGER UNSIGNED NOT NULL DEFAULT 1,
       description TEXT
);

CREATE TABLE IF NOT EXISTS authors (
       author_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       name VARCHAR(100) NOT NULL,
       natinality VARCHAR(3)
);

DESCRIBE authors;
DESC authors;

DESCRIBE books;

SHOW FULL COLUMNS FROM books:

DROP authors; -- borra la tabla "authors" definitivamente, no hay vuelta atrás

-- A veces los nombres de las columnas pueden ser palabras reservadas de algún lenguaje de programación
-- Entonces una opción es colocar esos nombres entre ``, como se muestra a continuación
CREATE TABLE IF NOT EXISTS books (
       `book_id` INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       `author_id` INTEGER UNSIGNED, -- referencia a la tabla "authors"
       `title` VARCHAR(100) NOT NULL,
       `year` INTEGER UNSIGNED NOT NULL DEFAULT 1900,
       `languaje` VARCHAR(2) NOT NULL DEFAULT 'es' COMMENT 'iso 639-1 languaje',
       `cover_url` VARCHAR(500),
       `price` DOUBLE(6,2) NOT NULL DEFAULT 10.0, -- seis espacios en total, dos dedicados a decimales
       `sellable` TINYINT(1) DEFAULT 1, -- banderas: true or false
       `copies` INTEGER UNSIGNED NOT NULL DEFAULT 1,
       `description` TEXT
);
