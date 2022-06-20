use batch59;

use sakila;

select * from country, city where city.country_id = country.country_id;