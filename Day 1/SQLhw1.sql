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




-- Q4 How many customers have the last name ‘William’?
SELECT first_name, last_name 
FROM customer
WHERE last_name = 'William';
--Answer= none "0"

--Q5 What store employee (get the id) sold the most rentals?

--Q6 How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;
--Answer = 378

--Q7 What film has the most actors in it? (use film_actor table and get film_id)


-- Q8 From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT store_id, first_name, last_name
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;
--Ans= 13

--Q9 How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
with ids between 380 and 430? (use group by and having > 250)

SELECT customer_id, amount
FROM payment
WHERE amount > 250



--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT COUNT(DISTINCT rating)
FROM film;
--Ans 5

