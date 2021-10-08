
-- Add 3 new artists to the artist table using INSERT. (It’s already created.)
INSERT INTO artist
(artist_id, name)

VALUES 
(276, 'Brian Eno'),
(277, 'Telepath'),
(278, 'Hong Kong Express');

-- Select 5 artists in alphabetical order.
SELECT * FROM artist
ORDER BY name ASC
Limit 5;

-- List all employee first and last names only that live in Calgary.
SELECT last_name, first_name FROM employee 
WHERE city = 'Calgary';

-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column). You will need to query the employee table to find the Id for Nancy Edwards
SELECT * FROM employee
WHERE reports_to = 2;

-- Count how many people live in Lethbridge.
SELECT COUNT(city)
FROM employee
WHERE city IN ('Lethbridge');

-- Count how many orders were made from the USA.
SELECT COUNT(billing_country)
FROM invoice
WHERE billing_country IN ('USA')


-- Find the largest order total amount.

SELECT total FROM invoice
WHERE total = (SELECT MAX(total) FROM invoice);

-- Find the smallest order total amount.
SELECT total FROM invoice
WHERE total = (SELECT MIN(total) FROM invoice);

-- Find all orders bigger than $5.
SELECT * FROM invoice
WHERE total > 5;

-- Count how many orders were smaller than $5.

SELECT * FROM invoice
WHERE total < 5;

-- Get the total sum of the orders.
SELECT sum(total) FROM invoice

-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.

SELECT invoice.invoice_id, invoice_line.unit_price 
FROM invoice
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
WHERE unit_price > 0.99;

-- Get the invoice_date, customer first_name and last_name, and total from all invoices.
SELECT invoice.invoice_date, customer.first_name, customer.last_name, invoice.total 
FROM invoice
JOIN customer ON invoice.customer_id = customer.customer_id


-- Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers. Note that support reps are on the employee table.
SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name 
FROM customer
JOIN employee ON customer.support_rep_id = employee.employee_id

-- Get the album title and the artist name from all albums.
SELECT album.title, artist.name
FROM album
JOIN artist ON album.artist_id = artist.artist_id



