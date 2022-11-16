--1. Query the data in the title and description columns in the movie table.
SELECT title, description FROM film;

--2. Query the data in all columns in the movie table with the movie length greater than 60 AND less than 75.
SELECT * FROM film
WHERE length > 60 AND length < 75;

--3. Query the data in all columns in the movie table with rental_rate 0.99 AND replacement_cost 12.99 OR 28.99.
SELECT * FROM film
WHERE rental_rate=0.99 AND replacement_cost=12.99
OR replacement_cost=28.99;

--4. Query What is the value in the last_name column of the customer whose value is 'Mary' in the first_name column of the customer table?
SELECT last_name FROM customer
WHERE first_name = 'Mary';

--5. Query the data in the movie table whose length is NOT greater than 50, but whose rental_rate is NOT 2.99 or 4.99.
SELECT * FROM film
WHERE NOT (length > 50)
AND NOT (rental_rate = 2.99 OR rental_rate = 4.99);

--6. Query the data in all columns in the movie table provided that the replacement cost value is greater than 12.99, equal and less than 16.99 (use BETWEEN - AND structure).
SELECT * FROM film
WHERE replacement_cost BETWEEN 12.99 AND 16.99;

--7. Query the data in the first_name and last_name columns in the actor table provided that first_name is 'Penelope' or 'Nick' or 'Ed'. (Use the IN operator.)
SELECT first_name, last_name FROM actor
WHERE first_name IN ('Penelope', 'Nick', 'Ed');

--8. Query the data in all columns in the ilm table with rental_rate 0.99, 2.99, 4.99 AND replacement_cost 12.99, 15.99, 28.99. (Use the IN operator.)
SELECT * FROM film
WHERE rental_rate IN (0.99, 2.99, 4.99)
AND replacement_cost IN (12.99, 15.99, 28.99);

--9. Query List the country names in the country column of the country table, starting with the 'A' character and ending with the 'a' character.
SELECT country FROM country
WHERE country LIKE 'A%a';

--10. Query List the country names in the country column of the country table, consisting of at least 6 characters and ending with the 'n' character.
SELECT country FROM country
WHERE country LIKE '_____%n';

--11. Query In the title column of the movie table, list the movie names containing at least 4 'T' characters, regardless of upper or lower case letters.
SELECT title FROM film
WHERE title ILIKE '%t%t%t%t%';

--12. Query From the data in all the columns in the movie table, sort the data that starts with the title 'C' character, has a length greater than 90 and a rental_rate of 2.99.
SELECT * FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;

--13. Query the different values in the replacement_cost column in the movie table.
SELECT DISTINCT replacement_cost FROM film;

--14. Query How many different data are there in the replacement_cost column in the movie table?
SELECT COUNT(DISTINCT replacement_cost) FROM film;

--15. Query How many of the movie titles in the movie table start with the character T and at the same time the rating is equal to 'G'?
SELECT COUNT(title) FROM film
WHERE title LIKE 'T%' AND rating = 'G';

--16. Query How many of the country names (country) in the country table consist of 5 characters?
SELECT COUNT(country) FROM country
WHERE country LIKE '_____';

--17. QueryHow many of the city names in the city table end with the character 'R' or r?
SELECT COUNT(city) FROM city
WHERE city ILIKE '%R';

--18. QueryList the 5 longest (length) movies in the movie table and the movie title (title) ends with the 'n' character.
SELECT title, length FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

--19. Query List the shortest (length) second(6,7,8,9,10) 5 movies(6,7,8,9,10) in the movie table and the movie title ends with the 'n' character.
SELECT title, length FROM film
WHERE title LIKE '%n'
ORDER BY length
OFFSET 5
LIMIT 5;

--20. Query Descending according to the last_name column in the customer table Sort the first 4 data, provided that the store_id is 1 in the order.
SELECT last_name, store_id FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;

--21. Query What is the average of the values in the rental_rate column in the movie table?
SELECT AVG(rental_rate) FROM film;

--22. Query How many of the movies in the movie table start with the character 'C'?
SELECT COUNT(title) FROM film
WHERE title LIKE 'C%';

--23. Query Among the movies in the movie table, how many minutes is the longest (length) movie with a rental_rate equal to 0.99?
SELECT MAX(length) FROM film
WHERE rental_rate=0.99;

--24. Query How many different replacement_cost values are there for the movies longer than 150 minutes in the movie table?
SELECT COUNT(DISTINCT (replacement_cost)) FROM film
WHERE length > 150;

--25. Query Group the movies in the movie table according to their rating values.
SELECT rating FROM film
GROUP BY rating;

--26. Query When we group the films in the film table according to the replacement_cost column, list the replacement_cost value with more than 50 films and the corresponding number of films.
SELECT COUNT(), replacement_cost FROM film
GROUP BY replacement_cost
HAVING COUNT() > 50
ORDER BY COUNT(*);

--27. Query What are the customer numbers corresponding to the store_id values in the ustomer table?
SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id;

--28. Query After grouping the city data in the city table according to the country_id column, share the country_id information with the highest number of cities and the number of cities.
SELECT country_id, COUNT() as City_Count FROM city
GROUP BY country_id
ORDER BY COUNT() DESC
LIMIT 1;

--29. Query Create a table in your test database with employee name column information id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100).
CREATE TABLE employee(
id INTEGER PRIMARY KEY,
name VARCHAR(50) NOT NULL,
birthday DATE,
email VARCHAR(100)
);

--30. Query add 5 pieces of data to the employee table we created using the 'Mockaroo' service.
insert into employee (id, name, birthday, email) values (1, 'Merilee', null, null);
insert into employee (id, name, birthday, email) values (2, 'Daren', '1998-05-07', 'dcoultas1@csmonitor.com');
insert into employee (id, name, birthday, email) values (3, 'Lazar', '1992-09-07', 'lfrugier2@twitpic.com');
insert into employee (id, name, birthday, email) values (4, 'Jenelle', '1994-05-10', 'jswash3@php.net');
insert into employee (id, name, birthday, email) values (5, 'Philomena', '1997-02-19', 'phuge4@vimeo.com');

--31. Query 5 UPDATE operations that will update the other columns according to each of the columns.
UPDATE employee
SET name = 'Emrah',
email = 'aalllkk@gmail.com'
WHERE id = 1
RETURNING *;

UPDATE employee
SET name = 'Mehmet',
birthday = '12/12/1989'
WHERE id = 2
RETURNING *;

UPDATE employee
SET name = 'Mehtap',
birthday = '02/02/1999',
email='mehtap@gmail.com'
WHERE id = 3
RETURNING *;

UPDATE employee
SET name = 'Fikriye',
email='fikriye@gmail.com'
WHERE id = 4
RETURNING *;

UPDATE employee
SET email='nurten@gmail.com'
WHERE id = 5
RETURNING *;

--32. Query 5 DELETE operations that will delete the relevant row according to each of the columns.
DELETE FROM employee
WHERE id = 1
RETURNING *;

DELETE FROM employee
WHERE name = 'Emrah'
RETURNING *;

DELETE FROM employee
WHERE birthday = '12/12/1989'
RETURNING *;

DELETE FROM employee
WHERE email='fikriye@gmail.com'
RETURNING *;

DELETE FROM employee
WHERE id = 1
RETURNING *;

--33. Write the INNER JOIN query where we can see the city and country names in the city table and the country table together.
SELECT country, city FROM city
INNER JOIN country ON country.country_id = city.country_id
ORDER BY country;

--34. Write the INNER JOIN query where we can see the customer table and the payment_id in the payment table and the first_name and last_name names in the customer table together.
SELECT payment_id, first_name, last_name from customer
INNER JOIN payment ON payment.customer_id = customer.customer_id
ORDER BY first_name;

--35. Write the INNER JOIN query where we can see the customer table and the rental_id in the rental table and the first_name and last_name names in the customer table together.
SELECT rental_id, first_name, last_name FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id
ORDER BY first_name;