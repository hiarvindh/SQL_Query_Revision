USE movie_database;
/*
1. From the following tables, write a SQL query to find all reviewers whose ratings contain
   a NULL value. Return reviewer name.
Table References: reviewer, rating
*/
SELECT r.rev_name
FROM reviewer r
INNER JOIN rating USING(rev_id)
WHERE rev_stars IS NULL;

/*
2. From the following tables, write a SQL query to find out who was cast in the movie
   'Annie Hall'. Return actor first name, last name and role.
Table References: actor, movie_cast, movie
*/
SELECT act_fname, act_lname, role
FROM actor
JOIN movie_cast 
ON actor.act_id = movie_cast.act_id
JOIN movie 
ON movie_cast.mov_id = movie.mov_id AND movie.mov_title = 'Annie Hall';

/*
3. From the following tables, write a SQL query to find the director who directed a movie
   that featured a role in 'Eyes Wide Shut'. Return director first name, last name and
   movie title.
Table References: director, movie_direction, movie_cast, movie
*/
SELECT d.dir_fname, d.dir_lname, m.mov_title
FROM director d
JOIN movie_direction md
ON d.dir_id = md.dir_id
JOIN movie m
ON m.mov_id = md.mov_id
JOIN movie_cast mc
ON m.mov_id = mc.mov_id
WHERE m.mov_title = 'Eyes Wide Shut';

/*
4. From the following tables, write a SQL query to find the director of a movie that cast
   a role as Sean Maguire. Return director first name, last name and movie title.
Table References: director, movie_direction, movie_cast, movie
*/
SELECT dir_fname, dir_lname, mov_title
FROM director d
JOIN movie_direction md
ON md.dir_id = d.dir_id
JOIN movie m
ON m.mov_id = md.mov_id
JOIN movie_cast mc
ON mc.mov_id = m.mov_id
WHERE mc.role = 'Sean Maguire';

/*
5. From the following tables, write a SQL query to find out which actors have not appeared
   in any movies between 1990 and 2000 (begin and end values are included). Return actor
   first name, last name, movie title and release year.
Table References: actor, movie_cast, movie
*/
SELECT a.act_fname, a.act_lname, m.mov_title, m.mov_year
FROM actor a
JOIN movie_cast mc
ON a.act_id = mc.act_id
JOIN movie m
ON mc.mov_id = m.mov_id
WHERE m.mov_year NOT BETWEEN 1990 AND 2000;

/*
6. From the following tables, write a SQL query to find the directors who have directed films
   in a variety of genres. Group the result set on director first name, last name and generic
   title. Sort the result-set in ascending order by director first name and last name. Return
   director first name, last name and number of genres movies.
Table References: director, movie_direction, genres, movie_genres, movie
*/
SELECT dir_fname, dir_lname, gen_title, COUNT(gen_title) AS count
FROM director
NATURAL JOIN movie_direction
NATURAL JOIN movie_genres
NATURAL JOIN genres
GROUP BY dir_fname, dir_lname, gen_title
ORDER BY dir_fname, dir_lname;

/*
7. From the following tables, write a SQL query to find the movies with year and genres.
   Return movie title, movie year and generic title.
Table References: movie, genres, movie_genres
*/
SELECT mov_title, mov_year, gen_title
FROM movie
NATURAL JOIN movie_genres
NATURAL JOIN genres;

/*
8. From the following tables, write a SQL query to find all the movies with year, genres, and 
   name of the director. 
Table References: movie, genres, movie_genres, director, movie_direction
*/
SELECT movie.mov_title, movie.mov_year, genres.gen_title, director.dir_fname, director.dir_lname
FROM movie
NATURAL JOIN movie_genres
NATURAL JOIN genres
NATURAL JOIN movie_direction
NATURAL JOIN director;

/*
9. From the following tables, write a SQL query to find the movies released before 1st
   January 1989. Sort the result-set in descending order by date of release. Return movie
   title, release year, date of release, duration, and first and last name of the director.
Table References: movie, director, movie_direction
*/
SELECT movie.mov_title, mov_year, mov_dt_rel, mov_time, dir_fname, dir_lname
FROM movie
JOIN movie_direction
ON movie.mov_id = movie_direction.mov_id
JOIN director
ON movie_direction.dir_id = director.dir_id
WHERE mov_dt_rel < '1989-01-01'
ORDER BY mov_dt_rel DESC;

/*
10. From the following tables, write a SQL query to calculate the average movie length and
    count the number of movies in each genre. Return genre title, average time and number
    of movies for each genre.
Table References: movie, genres, movie_genres
*/
SELECT gen_title, AVG(mov_time), COUNT(gen_title)
FROM movie
NATURAL JOIN movie_genres
NATURAL JOIN genres
GROUP BY gen_title;

/*
11. From the following tables, write a SQL query to find movies with the shortest duration.
    Return movie title, movie year, director first name, last name, actor first name, last
    name and role.
Table References: movie, actor, director, movie_direction, movie_cast
*/
SELECT mov_title, mov_year, dir_fname, dir_lname, act_fname, act_lname, role
FROM movie
NATURAL JOIN movie_direction
NATURAL JOIN movie_cast
NATURAL JOIN director
NATURAL JOIN actor
WHERE mov_time = (SELECT MIN(mov_time) FROM movie);

/*
12. From the following table, write a SQL query to find the years in which a movie received
    a rating of 3 or 4. Sort the result in increasing order on movie year. Return movie year.
Table References: movie, rating
*/
SELECT DISTINCT mov_year
FROM movie
JOIN rating
ON movie.mov_id = rating.mov_id
WHERE rev_stars = 3 OR rev_stars = 4
ORDER BY mov_year;

/*
13. From the following tables, write a SQL query to get the reviewer name, movie title, and
    stars in an order that reviewer name will come first, then by movie title, and lastly by
    number of stars. Return reviewer name, movie title, review stars.
Table References: movie, rating, reviewer
*/
SELECT r.rev_name, m.mov_title, t.rev_stars
FROM movie m
JOIN rating t 
ON m.mov_id = t.mov_id
JOIN reviewer r 
ON t.rev_id = r.rev_id
WHERE r.rev_name IS NOT NULL
ORDER BY r.rev_name, m.mov_title, t.rev_stars;

/*
14. From the following table, write a SQL query to find those movies that have at least one
    rating and received the most stars. Sort the result-set on movie title. Return movie title
    and maximum review stars.
Table References: movie, rating
*/
SELECT mov_title, MAX(rev_stars) AS max
FROM movie
INNER JOIN rating USING(mov_id)
GROUP BY mov_title
HAVING MAX(rev_stars) > 0
ORDER BY mov_title;

/*
15. From the following table, write a SQL query to find out which movies have received
    ratings. Return movie title, director first name, director last name and review stars.
Table References: movie, rating, movie_direction, director
*/
SELECT movie.mov_title, director.dir_fname, director.dir_lname, rating.rev_stars
FROM movie
JOIN movie_direction USING(mov_id)
JOIN director USING(dir_id)
LEFT JOIN rating USING(mov_id)
WHERE rev_stars IS NOT NULL;

/*
16. From the following table, write a SQL query to find movies in which one or more actors
    have acted in more than one film. Return movie title, actor first and last name, and
    the role.
Table References: movie, actor, movie_cast
*/
SELECT movie.mov_title, actor.act_fname, actor.act_lname, movie_cast.role
FROM movie
JOIN movie_cast
ON movie_cast.mov_id = movie.mov_id
JOIN actor
ON movie_cast.act_id = actor.act_id
WHERE actor.act_id IN (
	SELECT act_id
    FROM movie_cast
    GROUP BY act_id
    HAVING COUNT(*) >= 2
);


/*
17. From the following tables, write a SQL query to find the actor whose first name is
    'Claire' and last name is 'Danes'. Return director first name, last name, movie title,
    actor first name and last name, role.
Table References: movie, movie_cast, actor, director, movie_direction
*/
SELECT director.dir_fname, director.dir_lname, movie.mov_title, actor.act_fname, actor.act_lname, movie_cast.role
FROM director
JOIN movie_direction
ON director.dir_id = movie_direction.dir_id
JOIN movie
ON movie_direction.mov_id = movie.mov_id
JOIN movie_cast
ON movie.mov_id = movie_cast.mov_id
JOIN actor
ON actor.act_id = movie_cast.act_id
WHERE actor.act_fname = 'Claire' AND actor.act_lname = 'Danes';

/*
18. From the following table, write a SQL query to find for actors whose films have been
    directed by them. Return actor first name, last name, movie title and role.
Table References: actor, movie_cast, director, movie_direction, movie
*/
SELECT a.act_fname, a.act_lname, m.mov_title, mc.role
FROM actor a
JOIN movie_cast mc ON a.act_id = mc.act_id
JOIN movie m ON mc.mov_id = m.mov_id
JOIN movie_direction md ON m.mov_id = md.mov_id
JOIN director d ON md.dir_id = d.dir_id
WHERE a.act_fname = d.dir_fname AND a.act_lname = d.dir_lname;

/*
19. From the following tables, write a SQL query to find the cast list of the movie
    'Chinatown'. Return first name, last name.
Table References: movie, movie_cast, actor
*/
SELECT actor.act_fname, actor.act_lname
FROM actor
JOIN movie_cast
ON actor.act_id = movie_cast.act_id
JOIN movie
ON movie.mov_id = movie_cast.mov_id
WHERE movie.mov_title = 'Chinatown';

/*
20. From the following tables, write a SQL query to find those movies where actor's first
    name is 'Harrison' and last name is 'Ford'. Return movie title.
Table References: movie, movie_cast, actor
*/
SELECT movie.mov_title
FROM movie
JOIN movie_cast
ON movie.mov_id = movie_cast.mov_id
JOIN actor
ON actor.act_id = movie_cast.act_id
WHERE actor.act_fname = 'Harrison' AND actor.act_lname = 'Ford';

/*
21. From the following tables, write a SQL query to find the highest-rated movies. Return
    movie title, movie year, review stars and releasing country.
Table References: movie, rating
*/
SELECT mov_title, mov_year, rev_stars, mov_rel_country
FROM movie
NATURAL JOIN rating
WHERE rev_stars = (
	SELECT MAX(rev_stars)
    FROM rating
);

/*
22. From the following tables, write a SQL query to find the highest-rated 'Mystery Movies'.
    Return the title, year, and rating.
Table References: movie, genres, movie_genres, rating
*/


/*
23. From the following tables, write a SQL query to find the years when most of the 'Mystery
    Movies' were produced. Count the number of generic title and compute their average rating.
    Group the result set on movie release year, generic title. Return movie year, generic
    title, number of generic title and average rating.
Table References: movie, genres, movie_genres, rating
*/


/*
24. From the following tables, write a query in SQL to generate a report, which contain the
    fields movie title, name of the female actor, year of the movie, role, movie genres, the
    director, date of release, and rating of that movie.
Table References: movie, actor, movie_cast, genres, movie_genres, director, movie_direction, rating
*/
