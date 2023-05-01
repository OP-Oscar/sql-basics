--step1- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(200),
    product_price INTEGER,
    quantity INTEGER
);

--step2- Add 5 orders to the orders table.
INSERT INTO orders ( person_id, product_name,
                    product_price, quantity)
    VALUES(1, 'tooth-brush', 5, 2),
          (2, 'knife', 10, 1),
          (3, 'flowers', 8, 6),
          (4, 'dress', 20, 1),
          (5, 'fertilizer', 14, 1),
          (6, 'plants', 45, 20);

INSERT INTO orders ( person_id, product_name,
                    product_price, quantity)
    VALUES(5, 'radio', 50, 1)


--step 2-2- Make orders for at least two different people.
--DONE

--step 2-3- person_id should be different for different people.
--DONE

--step3- Select all the records from the orders table.
SELECT *
FROM orders;

--step5- Calculate the total number of products ordered.
SELECT count(quantity) as total_orders
FROM orders;

--step5- Calculate the total order price.
SELECT sum(product_price) as total_order_price
FROM orders; 

--step6- Calculate the total order price by a single person_id.
SELECT person_id, sum(product_price) as total_order_price
FROM orders
GROUP BY person_id;