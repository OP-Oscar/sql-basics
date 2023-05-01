--step1- creating person table
CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INTEGER,
    height_cm INTEGER,
    city VARCHAR(100),
    favorite_color VARCHAR(100)
);

--step2- inserting 5 people to DB
INSERT INTO person 
      (name, age, height_cm, city, favorite_color)
VALUES('Oscar', 45, 177, 'Houston', 'gray'),
      ('Chucky', 21, 177, 'Hackensack', 'red'),
      ('Carolina', 26, 260, 'SomeCity', 'rose'),
      ('Rose', 30, 177, 'Sacramento', 'blue'),
      ('Groot', 8, 300, 'Mars', 'red'),
      ('Wall-e', 200, 177, 'Space', 'green');

--step3- select all people in person table by height from tallest to shortest
SELECT *
FROM person
ORDER BY height_cm DESC;

--step4- Select all the people in the person table by height from shortest to tallest.
SELECT *
FROM person
ORDER BY height_cm ASC;

--step5- Select all the people in the person table by age from oldest to youngest.
SELECT *
FROM person
ORDER BY age DESC;

--step6- Select all the people in the person table older than age 20.
SELECT *
FROM person
WHERE age > 20;

--step7- Select all the people in the person table that are exactly 18.
SELECT *
FROM person
WHERE age =18;

--step8- Select all the people in the person table that are less than 20 and older than 30.
SELECT *
FROM person
WHERE age BETWEEN 20 AND 30;

--step9- Select all the people in the person table that are not 27 (use not equals).
SELECT *
FROM person
WHERE age <> 27;

--step10-Select all the people in the person table where their favorite color is not red.
SELECT *
FROM person
WHERE favorite_color <> 'red';

--step11- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT *
FROM person
WHERE favorite_color not in ('red','blue');

--step12- Select all the people in the person table where their favorite color is orange or green.
SELECT *
FROM person
WHERE favorite_color  in ('orange','green');

--step13-Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT *
FROM person
WHERE favorite_color  in ('orange','green', 'blue');

--step14-Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT *
FROM person
WHERE favorite_color  in ('yellow', 'purple');