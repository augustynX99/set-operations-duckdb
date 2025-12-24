

SELECT
	COUNT(*) AS number_movies,
	COUNT(DISTINCT title) AS unique_number_movies -- if same then no duplicates 
FROM
	main.film;