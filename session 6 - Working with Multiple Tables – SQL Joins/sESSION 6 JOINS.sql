-- Joining multiple tables

Select * from movies;

select * from directors;

SELECT MOVIES.MOVIE_TITLE,
MOVIES.RELEASE_YEAR,
directors.director_id FROM 
MOVIES 
INNER JOIN directors
ON MOVIES.director_id = directors.director_id;

-- INNER JOIN 
SELECT M.MOVIE_TITLE,M.RELEASE_YEAR,
B.GROSS_COLLECTION_INR  FROM 
MOVIES AS M
INNER JOIN BOX_OFFICE AS B
ON M.MOVIE_ID = B.MOVIE_ID;


SELECT * FROM MOVIE_CAST;
SELECT * FROM ACTORS;
-- HOME WORK
-- dISPALY ACOTRS BY JOINING THE MOVIE_CAST TABLE WEITH ACTORS AND MOVIE_ID MOVIE_CAST_ID;


-- LEFT JOIN 
SELECT M.MOVIE_TITLE,M.RELEASE_YEAR,
B.GROSS_COLLECTION_INR  FROM 
MOVIES AS M
LEFT JOIN BOX_OFFICE AS B
ON M.MOVIE_ID = B.MOVIE_ID;



-- RIGHT JOIN

SELECT * FROM 
box_office as b
right join movies as m 
on b.movie_id = m.movie_id;




-- full outer join 

select * from 
movies as m 
left join box_office as b
on m.movie_id = b.movie_id
union
SELECT * FROM 
box_office as b
right join movies as m 
on b.movie_id = m.movie_id;


-- cross join 

select * from genres;

select * from production_houses;

-- use across join teo know al the gere genr covered by this production houses

select * from
genres g
cross join production_houses p;

-- 459 rows

-- self join 

select * from movie_cast as m1 
inner join movie_cast as m2
on m1.movie_id = M2.MOVIE_ID;








-- qUESTION bASED ON JOINS

-- EXAMPLLE 1 DISPLAY MOVIES NAMES,DIRECTORS NAME ALSO 
SELECT *  FROM MOVIES;

SELECT * FROM directors;

SELECT M.MOVIE_TITLE,D.director_name FROM
MOVIES AS M 
INNER JOIN directors AS D 
ON M.DIRECTOR_ID = D.director_id;

SELECT * FROM MOVIES;
SELECT * FROM genres;

SELECT * FROM movie_genreS;
-- DISPALAY ALL THE MOVIES WITH THEIER GENERS

-- LEVEL- MODERATE

SELECT M.MOVIE_TITLE,G.genre_name FROM 
MOVIES AS M 
INNER JOIN movie_genres AS MG
ON M.MOVIE_ID = MG.movie_id
INNER JOIN genres AS G
ON MG.genre_id = G.genre_id;









