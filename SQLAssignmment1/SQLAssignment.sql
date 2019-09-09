1.select * from film f inner join film_category fc on f.film_id=fc.film_id
 and rating="PG-13" inner join category c on c.category_id=fc.category_id and c.name="comedy";

 2.select f.*,count(r.rental_id) as rental_count from rental r 
 inner join inventory i on r.inventory_id=i.inventory_id 
 inner join film f on f.film_id=i.film_id
 inner join film_category fc on f.film_id=fc.film_id  
 inner join category ca on ca.category_id=fc.category_id 
 and ca.name="horror" group by f.film_id order by rental_count desc limit 3;

3.select  distinct c.* from customer c inner join address a on a.address_id=c.address_id
 inner join city ci on a.city_id=ci.city_id inner join country cou on ci.country_id=cou.country_id 
 and cou.country="India" inner join rental r on c.customer_id=r.customer_id 
 inner join inventory i on r.inventory_id=i.inventory_id 
 inner join film_category fc on fc.film_id=i.film_id  
 inner join category ca on ca.category_id=fc.category_id and ca.name="sports";


4. select * from actor where first_name="SEAN" and last_name="WILLIAMS";
select  distinct c.* from customer c inner join address a on a.address_id=c.address_id
 inner join city ci on a.city_id=ci.city_id inner join country cou on ci.country_id=cou.country_id 
 and cou.country="Canada" inner join rental r on c.customer_id=r.customer_id 
 inner join inventory i on r.inventory_id=i.inventory_id 
 inner join film_actor fa on i.film_id=fa.film_id inner join actor ac on fa.actor_id=ac.actor_id
 where ac.first_name="NICK" and ac.last_name="WAHLBERG";

 5.select a.first_name,a.last_name,count(f.film_id) as Number_of_movies_acted from actor a inner join film_actor fa
 on a.actor_id=fa.actor_id  and a.first_name="SEAN" and last_name="WILLIAMS"
 inner join film f on fa.film_id=f.film_id group by a.first_name,a.last_name;

