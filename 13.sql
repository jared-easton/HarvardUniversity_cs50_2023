select distinct name from people p
join stars s on s.person_id = p.id
join movies m on m.id = s.movie_id
where m.id in
(select m.id from movies m
join stars s on s.movie_id = m.id
join people p on p.id = s.person_id
where p.name = "Kevin Bacon" and p.birth = "1958")
and p.name != "Kevin Bacon";
