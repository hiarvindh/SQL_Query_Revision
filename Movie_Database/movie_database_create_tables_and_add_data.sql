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
CREATE TABLE movie (
    mov_id INTEGER NOT NULL,
    mov_title CHAR(50),
    mov_year INTEGER,
    mov_time INTEGER,
    mov_lang CHAR(50),
    mov_dt_rel DATE,
    mov_rel_country CHAR(5),
    CONSTRAINT pk_movie PRIMARY KEY(mov_id)
);
CREATE TABLE reviewer (
    rev_id INTEGER NOT NULL,
    rev_name CHAR(30),
    CONSTRAINT pk_reviewer PRIMARY KEY(rev_id)
);
CREATE TABLE genres (
    gen_id INTEGER NOT NULL,
    gen_title CHAR(20),
    CONSTRAINT pk_genres PRIMARY KEY(gen_id)
);
CREATE TABLE movie_direction (
    dir_id INTEGER,
    mov_id INTEGER,
    CONSTRAINT fk_md_director FOREIGN KEY(dir_id) REFERENCES director(dir_id),
    CONSTRAINT fk_m_director FOREIGN KEY(mov_id) REFERENCES movie(mov_id)
);
