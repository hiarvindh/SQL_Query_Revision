DROP TABLES IF EXISTS actor, director, movie_direction, movie_cast, movie, reviewer, genres, movie_genres, rating;
CREATE TABLE actor (
    act_id INTEGER NOT NULL,
    act_fname CHAR(20),
    act_lname CHAR(20),
    act_gender CHAR(1),
    CONSTRAINT pk_actor PRIMARY KEY(act_id)
);
CREATE TABLE director (
    dir_id INTEGER NOT NULL,
    dir_fname CHAR(20),
    dir_lname CHAR(20),
    CONSTRAINT pk_director PRIMARY KEY(dir_id)
);