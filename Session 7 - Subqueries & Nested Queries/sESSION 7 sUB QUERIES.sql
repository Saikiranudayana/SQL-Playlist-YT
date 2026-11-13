-- Session 7 Sub queries & nested queries

-- find the movies released afer t he avergar relase year

select Avg(release_year) from movies;

select movie_title,release_year 
from movies
where release_year > (select Avg(release_year) from movies)
order by release_year asc;


-- using directors table find al the movies directed by directors who have more than one movie

select movie_title,director_id
from movies
where director_id in (
select director_id
from movies
group by director_id
Having count(*) >1);



-- scalar subquery
select movie_title,release_year 
,(select Avg(release_year) from movies) as avergae_year
from movies;



--  dispalyin total no of movies fro each director

select * from directors;


select director_name,
(select count(*) from movies
where movies.director_id = directors.director_id) as total_movies
from directors;


-- find movies releed after the average realse year  of the smae langua
select *
from movies as m1
where release_year >
(select avg(release_year) from movies as m2
where m1.director_id = m2.director_id);




 -- in condiotions
select movie_title,director_id,release_year
from movies
where director_id in 
(select director_id from movies 
where director_id in (33,4,5,7,8));

-- Exists 

-- to sse dire movie is pren is 
select * from directors;

insert into directors 
value ( 54,'Sai','Japan')
;

select 
d.director_name 
from directors as d
where not exists
(select 1 from movies as m 
where m.director_id = d.director_id);

-- any 
select * from box_office;


select movie_id,gross_collection_inr
from box_office
WHERE territory = 'Overseas' 
AND gross_collection_inr > ANY(select gross_collection_inr from box_office
where territory = 'india');

SELECT * FROM BOX_OFFICE;




