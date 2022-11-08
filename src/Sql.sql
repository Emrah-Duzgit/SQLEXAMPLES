Query the data in the title and description columns in the movie table.
SELECT title, description FROM film;

Query the data in all columns in the movie table with the movie length greater than 60 AND less than 75.
SELECT * FROM film
WHERE length > 60 AND length < 75;

Query the data in all columns in the movie table with rental_rate 0.99 AND replacement_cost 12.99 OR 28.99.
SELECT * FROM film
WHERE rental_rate=0.99 AND replacement_cost=12.99
OR replacement_cost=28.99;

Query What is the value in the last_name column of the customer whose value is 'Mary' in the first_name column of the customer table?
SELECT last_name FROM customer
WHERE first_name = 'Mary';

Query the data in the movie table whose length is NOT greater than 50, but whose rental_rate is NOT 2.99 or 4.99.
SELECT * FROM film
WHERE NOT (length > 50)
AND NOT (rental_rate = 2.99 OR rental_rate = 4.99);

Query the data in all columns in the movie table provided that the replacement cost value is greater than 12.99, equal and less than 16.99 (use BETWEEN - AND structure).
SELECT * FROM film
WHERE replacement_cost BETWEEN 12.99 AND 16.99;

Query the data in the first_name and last_name columns in the actor table provided that first_name is 'Penelope' or 'Nick' or 'Ed'. (Use the IN operator.)
SELECT first_name, last_name FROM actor
WHERE first_name IN ('Penelope', 'Nick', 'Ed');

Query the data in all columns in the ilm table with rental_rate 0.99, 2.99, 4.99 AND replacement_cost 12.99, 15.99, 28.99. (Use the IN operator.)
SELECT * FROM film
WHERE rental_rate IN (0.99, 2.99, 4.99)
AND replacement_cost IN (12.99, 15.99, 28.99);

Query List the country names in the country column of the country table, starting with the 'A' character and ending with the 'a' character.
SELECT country FROM country
WHERE country LIKE 'A%a';

Query List the country names in the country column of the country table, consisting of at least 6 characters and ending with the 'n' character.
SELECT country FROM country
WHERE country LIKE '_____%n';

Query In the title column of the movie table, list the movie names containing at least 4 'T' characters, regardless of upper or lower case letters.
SELECT title FROM film
WHERE title ILIKE '%t%t%t%t%';

Query From the data in all the columns in the movie table, sort the data that starts with the title 'C' character, has a length greater than 90 and a rental_rate of 2.99.
SELECT * FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;

Query the different values in the replacement_cost column in the movie table.
SELECT DISTINCT replacement_cost FROM film;

Query How many different data are there in the replacement_cost column in the movie table?
SELECT COUNT(DISTINCT replacement_cost) FROM film;

Query How many of the movie titles in the movie table start with the character T and at the same time the rating is equal to 'G'?
SELECT COUNT(title) FROM film
WHERE title LIKE 'T%' AND rating = 'G';

Query How many of the country names (country) in the country table consist of 5 characters?
SELECT COUNT(country) FROM country
WHERE country LIKE '_____';

QueryHow many of the city names in the city table end with the character 'R' or r?
SELECT COUNT(city) FROM city
WHERE city ILIKE '%R';

QueryList the 5 longest (length) movies in the movie table and the movie title (title) ends with the 'n' character.
SELECT title, length FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

Query List the shortest (length) second(6,7,8,9,10) 5 movies(6,7,8,9,10) in the movie table and the movie title ends with the 'n' character.
SELECT title, length FROM film
WHERE title LIKE '%n'
ORDER BY length
OFFSET 5
LIMIT 5;

Query Descending according to the last_name column in the customer table Sort the first 4 data, provided that the store_id is 1 in the order.
SELECT last_name, store_id FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;

Query What is the average of the values in the rental_rate column in the movie table?
SELECT AVG(rental_rate) FROM film;

Query How many of the movies in the movie table start with the character 'C'?
SELECT COUNT(title) FROM film
WHERE title LIKE 'C%';

Query Among the movies in the movie table, how many minutes is the longest (length) movie with a rental_rate equal to 0.99?
SELECT MAX(length) FROM film
WHERE rental_rate=0.99;

Query How many different replacement_cost values are there for the movies longer than 150 minutes in the movie table?
SELECT COUNT(DISTINCT (replacement_cost)) FROM film
WHERE length > 150;

Query Group the movies in the movie table according to their rating values.
SELECT rating FROM film
GROUP BY rating;

Query When we group the films in the film table according to the replacement_cost column, list the replacement_cost value with more than 50 films and the corresponding number of films.
SELECT COUNT(), replacement_cost FROM film
GROUP BY replacement_cost
HAVING COUNT() > 50
ORDER BY COUNT(*);

Query What are the customer numbers corresponding to the store_id values in the ustomer table?
SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id;

Query After grouping the city data in the city table according to the country_id column, share the country_id information with the highest number of cities and the number of cities.
SELECT country_id, COUNT() as City_Count FROM city
GROUP BY country_id
ORDER BY COUNT() DESC
LIMIT 1;