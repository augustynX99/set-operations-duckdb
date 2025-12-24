INSTALL sqlite;

LOAD sqlite;

CALL sqlite_attach('data/sqlite-sakila.db');

-- note film_id 
SELECT * FROM main.film;

SELECT DISTINCT rating FROM main.film;

-- film_actor table - note actor_id and film_id
SELECT * FROM main.film_actor;

DESC TABLE main.film_actor;