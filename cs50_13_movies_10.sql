select distinct name
from people p
join directors d on d.person_id = p.id
join movies m on m.id = d.movie_id
join ratings r on r.movie_id = m.id
where rating >= 9.0;
