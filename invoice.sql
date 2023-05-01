--getting familiar with table
select *
from invoice
limit 10;


--step1- Count how many orders were made from the USA.
select count(*)
from invoice
where billing_country = 'USA';

--step2- Find the largest order total amount.
select *
from invoice
order by total DESC
limit 1;

--step3- Find the smallest order total amount.
select *
from invoice
order by total ASC
limit 1;

--step4- Find all orders bigger than $5.
select *
from invoice
where total > 5;

--step5- Count how many orders were smaller than $5.
select count(*) as orders_smaller_then_5
from invoice
where total < 5;

--step6- Count how many orders were in CA, TX, or AZ (use IN).
select count(*) as orders_from_TX_CA_AZ
from invoice
where billing_state in ('TX', 'CA', 'AZ');

--step7- Get the average total of the orders.
select AVG(total) as average_of_orders
from invoice;

--step8- Get the total sum of the orders.
select sum(total) as total_sum_orders
from invoice;

--step9- Update the invoice with an invoice_id of 5 to have a total order amount of 24.
update invoice
set total = 24
where invoice_id = 5;

--step10- Delete the invoice with an invoice_id of 1.
-- delete from invoice where invoice_id = 1;
-- command did not work because it is a safety net since data exists in other tables

-- solution would be to delete accross all tables but this may impact other tables negatively