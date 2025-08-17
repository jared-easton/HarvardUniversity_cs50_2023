select title t from movies m
join stars s on s.movie_id = m.id
join people p on p.id = s.person_id
where p.name = "Johnny Depp"
and t in
(select title t from movies m
join stars s on s.movie_id = m.id
join people p on p.id = s.person_id
where p.name = "Helena Bonham Carter");
