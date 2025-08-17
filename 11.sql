select title t from movies m
join ratings r on r.movie_id = m.id
join stars s on s.movie_id = m.id
join people p on s.person_id = p.id
where p.name = "Chadwick Boseman"
order by r.rating desc
limit 5;
