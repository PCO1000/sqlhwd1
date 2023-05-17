---Q1 How many actors are there with the last name ‘Wahlberg’?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';
---Answer = 2

---Q2 How many payments were made between $3.99 and $5.99?
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
---Answer = 0

---Q3 What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id) AS "rank_film"
FROM inventory
GROUP BY film_id
ORDER BY "rank_film" DESC;

--Answer = Several film_ids for example 350, had 8 which is the most that the store has. 


-- Q4 How many customers have the last name ‘William’?
SELECT first_name, last_name 
FROM customer
WHERE last_name = 'William';
--Answer= none "0"

--Q5 What store employee (get the id) sold the most rentals?

SELECT staff_id, COUNT(staff_id) AS "rank_staff"
FROM rental
GROUP BY staff_id
ORDER BY "rank_staff" DESC;
--Answer = Employee 1 sold the most (8040)



--Q6 How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;
--Answer = 378

--Q7 What film has the most actors in it? (use film_actor table and get film_id)


SELECT film_id, COUNT(film_id) AS Occurrence
FROM film_actor
GROUP BY film_id
ORDER BY Occurrence DESC
--Ans = film_id 508 had the most actors (15)


-- Q8 From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT store_id, first_name, last_name
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;
--Ans= 13

--Q9 How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

SELECT customer_id, amount, amount>250 AS "Greater_250"
FROM payment
WHERE customer_id BETWEEN 380 AND 430
ORDER BY "Greater_250" DESC;

---Ans =0





--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT COUNT(DISTINCT rating)
FROM film;
--Ans 5

