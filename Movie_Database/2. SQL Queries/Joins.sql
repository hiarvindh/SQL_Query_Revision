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


/*
6. From the following tables, write a SQL query to find the directors who have directed films
   in a variety of genres. Group the result set on director first name, last name and generic
   title. Sort the result-set in ascending order by director first name and last name. Return
   director first name, last name and number of genres movies.
Table References: director, movie_direction, genres, movie_genres, movie
*/


/*
7. From the following tables, write a SQL query to find the movies with year and genres.
   Return movie title, movie year and generic title.
Table References: movie, genres, movie_genres
*/


/*
8. From the following tables, write a SQL query to find all the movies with year, genres,
   and name of the director. Return movie title, movie year, generic title, director first
   name and last name.
Table References: movie, genres, movie_genres, director, movie_direction
*/


/*
9. From the following tables, write a SQL query to find the movies released before 1st
   January 1989. Sort the result-set in descending order by date of release. Return movie
   title, release year, date of release, duration, and first and last name of the director.
Table References: movie, director, movie_direction
*/


/*
10. From the following tables, write a SQL query to calculate the average movie length and
    count the number of movies in each genre. Return genre title, average time and number
    of movies for each genre.
Table References: movie, genres, movie_genres
*/


/*
11. From the following tables, write a SQL query to find movies with the shortest duration.
    Return movie title, movie year, director first name, last name, actor first name, last
    name and role.
Table References: movie, actor, director, movie_direction, movie_cast
*/


/*
12. From the following table, write a SQL query to find the years in which a movie received
    a rating of 3 or 4. Sort the result in increasing order on movie year. Return movie year.
Table References: movie, rating
*/


/*
13. From the following tables, write a SQL query to get the reviewer name, movie title, and
    stars in an order that reviewer name will come first, then by movie title, and lastly by
    number of stars. Return reviewer name, movie title, review stars.
Table References: movie, rating, reviewer
*/


/*
14. From the following table, write a SQL query to find those movies that have at least one
    rating and received the most stars. Sort the result-set on movie title. Return movie title
    and maximum review stars.
Table References: movie, rating
*/


/*
15. From the following table, write a SQL query to find out which movies have received
    ratings. Return movie title, director first name, director last name and review stars.
Table References: movie, rating, movie_direction, director
*/


/*
16. From the following table, write a SQL query to find movies in which one or more actors
    have acted in more than one film. Return movie title, actor first and last name, and
    the role.
Table References: movie, actor, movie_cast
*/


/*
17. From the following tables, write a SQL query to find the actor whose first name is
    'Claire' and last name is 'Danes'. Return director first name, last name, movie title,
    actor first name and last name, role.
Table References: movie, movie_cast, actor, director, movie_direction
*/


/*
18. From the following table, write a SQL query to find for actors whose films have been
    directed by them. Return actor first name, last name, movie title and role.
Table References: actor, movie_cast, director, movie_direction, movie
*/


/*
19. From the following tables, write a SQL query to find the cast list of the movie
    'Chinatown'. Return first name, last name.
Table References: movie, movie_cast, actor
*/


/*
20. From the following tables, write a SQL query to find those movies where actor's first
    name is 'Harrison' and last name is 'Ford'. Return movie title.
Table References: movie, movie_cast, actor
*/


/*
21. From the following tables, write a SQL query to find the highest-rated movies. Return
    movie title, movie year, review stars and releasing country.
Table References: movie, rating
*/


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
