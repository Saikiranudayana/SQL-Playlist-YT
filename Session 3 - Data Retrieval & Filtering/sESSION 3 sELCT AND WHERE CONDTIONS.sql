-- THIS QUREY RETIVERS AL THE INFORMATION



-- TRY RETRIVING ALL THE DEATILS FORM THE movie_cast

SELECT * FROM MOVIE_CAST;

-- TRY RETRVIE ALL THE DAT FROM THE DIRECTORS

SELECT * FROM directors;




SELECT MOVIE_TITLE,release_year FROM movies;

SELECT * FROM MOVIES;


-- RETRIVE ONLY MOVIE_ID ,MOVIE_TITLE , DIRECOTR _ID


SELECT MOVIE_ID, MOVIE_TITLE,DIRECTOR_ID FROM MOVIES;



-- RETREVING ONLY UNIQUE DATA ONLY FROM MOVIES
SELECT DISTINCT DIRECTOR_ID FROM MOVIES;

SELECT * FROM MOVIES
WHERE DIRECTOR_ID = 33;



-- MOVIE RELASED AFTER COVID 

SELECT * FROM MOVIES
WHERE RELEASE_YEAR>=2020;

-- MOVIE BEFORE 2010

SELECT * FROM MOVIES
WHERE RELEASE_YEAR<=2010;


SELECT * FROM MOVIES 
WHERE director_id <>30;


SELECT * FROM MOVIES;

SELECT * FROM directors;


-- I WNAT RETIEVE ALL THE RAJMOULI FILIMS RELASED IN 2010


SELECT * FROM MOVIES
WHERE DIRECTOR_ID = 33 OR RELEASE_YEAR=2010;




SELECT * FROM MOVIES
WHERE NOT director_id = 33;

select * FROM MOVIES;


-- ONLY RETIRVE DAT OF 2009,2011,2012,2016
SELECT * FROM MOVIES
WHERE release_year = 2009 
OR release_year = 2011 
OR release_year = 2012
OR release_year = 2016;

SELECT * FROM MOVIES 
WHERE release_year IN (2009,2011,2012,2016);

SELECT * FROM MOVIES 
WHERE release_year nOT IN (2009,2011,2012,2016);

-- NEED TO SEE ALL MOVIE BETWEEN 2010- 2015

SELECT * FROM MOVIES 
WHERE RELEASE_YEAR>=2010 AND RELEASE_YEAR<=2015;

SELECT * FROM MOVIES 
WHERE RELEASE_YEAR  BETWEEN 2010 AND 2015;

SELECT * FROM MOVIES 
WHERE director_id= 33;

-- TO SEE ALL THE BAHUBALI MOVIES
SELECT * FROM MOVIES
WHERE MOVIE_TITLE = "Baahubali: The Beginning" 
OR MOVIE_TITLE = "Baahubali 2: The Conclusion";



-- USE LIKE FUNCTION %Baahubali%

select * from movies
where movie_title like '%Baahubali%';



select * from movies 
where movie_title like 'A%';

-- movies ends with A 

select * from movies 
where movie_title like '%A';

select * from movies 
where movie_title like '__A%';

select * from movies
where box_records is null;

select * from movies;

select movie_title, release_year from movies
order by release_year asc;

select movie_title, release_year from movies
order by release_year dESC;


select movie_title, release_year from movies
order by movie_title;


select movie_title, release_year from movies
order by release_year ASC,movie_title DESC;

SELECT * FROM MOVIES
limit 20;


-- GIVE ME RECENT  TOP 10 MOVIES 

SELECT MOVIE_TITLE,RELEASE_YEAR FROM MOVIES
ORDER BY RELEASE_YEAR DESC
LIMIT 1 OFFSET 1;













































