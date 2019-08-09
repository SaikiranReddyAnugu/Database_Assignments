1.select count(*) as Documentaries_with_Deleted_scenes from film f inner join film_category fc on f.film_id=fc.film_id
 and f.special_features  like '%deleted Scenes%' inner join category c on c.category_id=fc.category_id and c.name="Documentary";
 
2.select s.*,count(ca.name) as Count_of_sci_fi_movies from store s inner join staff st on s.manager_staff_id=st.staff_id 
and st.first_name="Jon" and st.last_name="Stephens" 
 inner join inventory i on s.store_id=i.store_id 
 inner join film f on f.film_id=i.film_id
 inner join film_category fc on f.film_id=fc.film_id  
 inner join category ca on ca.category_id=fc.category_id and ca.name="sci-fi" group by s.store_id;
 
3.select * from sales_by_film_category where category="Animation";
 
4.select ca.category_id,ca.name,count(r.rental_id) as Count_of_Rented from customer c
 inner join rental r on c.customer_id=r.customer_id and c.first_name="PATRICIA" and c.last_name="JOHNSON"
 inner join inventory i on r.inventory_id=i.inventory_id 
 inner join film f on f.film_id=i.film_id
 inner join film_category fc on f.film_id=fc.film_id  
 inner join category ca on ca.category_id=fc.category_id group by ca.category_id,ca.name order by Count_of_Rented desc limit 3;
 
 
5.select count(*) as Total_R_rated_movies from customer c
 inner join rental r on c.customer_id=r.customer_id and c.first_name="SUSAN" and c.last_name="WILSON"
 inner join inventory i on r.inventory_id=i.inventory_id 
 inner join film f on f.film_id=i.film_id where f.rating="R";