--simply getting a feel for artist table
select *
from artist

--step1- Add 3 new artists to the artist table. (It already exists.)
INSERT INTO artist (name)
VALUES (Shrek),
       (Donkey);

--step2- Select 10 artists in reverse alphabetical order.
select *
from artist
order by name DESC
limit 10;

--step3- Select 5 artists in alphabetical order.
select *
from artist
order by name
limit 5;

--step4- Select all artists that start with the word ‘Black’.
select *
from artist
where name like 'Black%';


--step5- Select all artists that contain the word ‘Black’.
select *
from artist
where name like '%Black%';