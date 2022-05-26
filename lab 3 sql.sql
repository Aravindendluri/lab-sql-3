select count(distinct last_name) as "  Number of last names"
from sakila.actor;
select count(distinct language_id) as "Number of different languages"
from sakila.film;
select count(rating) as  "number_of_rating_PG_13"
from sakila.film
where rating = 'PG-13';

select title, length, release_year
from sakila.film
where release_year = 2006
order by length desc 
limit 10;
select datediff(max(last_update), min(rental_date)) as operating_days
from sakila.rental;
select *, date_format(rental_date, '%M') as 'month',
date_format(rental_date, '%W') as 'weekday' from sakila.rental
limit 20;
select * , date_format(rental_date, '%M') as 'month',
date_format(rental_date, '%W') as 'weekday',
case
when date_format(rental_date, '%W') > 5 then 'weekend' else 'workday' end as day_type
from sakila.rental;


select max(rental_date) from sakila.rental;
select count(rental_date), date_format(rental_date, '%M') as 'month',  date_format(rental_date, '%Y') as 'year' from sakila.rental
where  date_format(rental_date, '%M') = 'February' and date_format(rental_date, '%Y')=2006;

