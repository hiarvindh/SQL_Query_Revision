USE movie_database;
/*
1. Write a SQL query to find the actors who played a role in the movie 'Annie Hall'.
   Return all the fields of actor table.
Table References: actor, movie_cast, movie
*/
SELECT *
FROM actor
WHERE act_id IN (
	SELECT act_id
    FROM movie_cast
    WHERE mov_id IN (
		SELECT mov_id
        FROM movie
        WHERE mov_title = 'Annie Hall'
	)
);

/*
2. From the following tables, write a SQL query to find the director of a film that cast
   a role in 'Eyes Wide Shut'. Return director first name, last name.
Table References: director, movie_direction, movie, movie_cast
*/
SELECT dir_fname, dir_lname
FROM director
WHERE dir_id IN (
	SELECT dir_id
    FROM movie_direction
    WHERE mov_id IN (
		SELECT mov_id
        FROM movie
        WHERE mov_title = 'Eyes Wide Shut' and mov_id IN (
			SELECT mov_id
            FROM movie_cast
		)
	)
);

/*
3. From the following table, write a SQL query to find those movies that have been released
   in countries other than the United Kingdom. Return movie title, movie year, movie time,
   and date of release, releasing country.
Table References: movie
*/
SELECT mov_title, mov_year, mov_time, mov_dt_rel AS date_of_release, mov_rel_country AS releasing_country
FROM movie
WHERE mov_rel_country NOT IN ('UK');

/*
4. From the following tables, write a SQL query to find for movies whose reviewer is unknown.
   Return movie title, year, release date, director first name, last name,
   actor first name, last name.
Table References: movie, actor, director, movie_direction, movie_cast, reviewer, rating
*/
SELECT mov_title, mov_year, mov_dt_rel, dir_fname, dir_lname, 
       act_fname, act_lname
FROM movie a, movie_direction b, director c, rating d, reviewer e, actor f, movie_cast g
WHERE a.mov_id=b.mov_id AND b.dir_id=c.dir_id AND a.mov_id=d.mov_id AND d.rev_id=e.rev_id AND a.mov_id=g.mov_id AND g.act_id=f.act_id AND e.rev_name IS NULL;

/*
5. From the following tables, write a SQL query to find those movies directed by the director
   whose first name is Woddy and last name is Allen. Return movie title.
Table References: movie, director, movie_direction
*/
SELECT mov_title
FROM movie
WHERE mov_id IN (
	SELECT mov_id
    FROM movie_direction
    WHERE dir_id IN (
		SELECT dir_id
        FROM director
        WHERE dir_fname = 'Woody' AND dir_lname = 'Allen'
	)
);

/*
6. From the following tables, write a SQL query to determine those years in which there was
   at least one movie that received a rating of at least three stars. Sort the result-set in
   ascending order by movie year. Return movie year.
Table References: movie, rating
*/
SELECT DISTINCT mov_year
FROM movie
WHERE mov_id IN (
	SELECT mov_id
    FROM rating
    WHERE rev_stars >= 3.0
)
ORDER BY mov_year;

/*
7. From the following table, write a SQL query to search for movies that do not have any
   ratings. Return movie title.
Table References: movie, rating
*/
SELECT DISTINCT mov_title
FROM movie
WHERE mov_id IN (
	SELECT mov_id
    FROM movie
    WHERE mov_id NOT IN (
		SELECT mov_id
	)
);

/*
8. From the following table, write a SQL query to find those reviewers who have not given a
   rating to certain films. Return reviewer name.
Table References: reviewer, rating
*/


/*
9. From the following tables, write a SQL query to find movies that have been reviewed by a
   reviewer and received a rating. Sort the result-set in ascending order by reviewer name,
   movie title, review Stars. Return reviewer name, movie title, review Stars.
Table References: reviewer, rating, movie
*/


/*
10. From the following table, write a SQL query to find movies that have been reviewed by a
    reviewer and received a rating. Group the result set on reviewer’s name, movie title.
    Return reviewer’s name, movie title.
Table References: reviewer, rating, movie
*/


/*
11. From the following tables, write a SQL query to find those movies, which have received
    highest number of stars. Group the result set on movie title and sorts the result-set
    in ascending order by movie title. Return movie title and maximum number of review
    stars.
Table References: rating, movie
*/


/*
12. From the following tables, write a SQL query to find all reviewers who rated the movie
    'American Beauty'. Return reviewer name.
Table References: reviewer, rating, movie
*/


/*
13. From the following table, write a SQL query to find the movies that have not been reviewed
    by any reviewer body other than 'Paul Monks'. Return movie title.
Table References: reviewer, rating, movie
*/


/*
14. From the following table, write a SQL query to find the movies with the lowest ratings.
    Return reviewer name, movie title, and number of stars for those movies.
Table References: reviewer, rating, movie
*/


/*
15. From the following tables, write a SQL query to find the movies directed by 'James Cameron'.
    Return movie title.
Table References: director, movie_direction, movie
*/


/*
16. Write a query in SQL to find the movies in which one or more actors appeared in more than
    one film.
Table References: movie, movie_cast
*/