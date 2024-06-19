-- Retrieve the name of all customer where customer city and branch city are same and
-- customer has an account with that branch.

select c1 from (SELECT customer.cname as c1
FROM dbms24.customer
INNER JOIN dbms24.branch
ON customer.city = branch.bcity )
inner join (SELECT customer.cname as c2
FROM dbms24.customer
INNER JOIN dbms24.deposit
ON customer.cname = deposit.cname) on c1 = c2 ;