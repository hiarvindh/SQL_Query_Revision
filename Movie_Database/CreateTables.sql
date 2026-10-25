USE movie_database;
CREATE TABLE IF NOT EXISTS actor (
	act_id INTEGER NOT NULL,
    act_fname CHAR(20),
    act_lname CHAR(20),
    act_gender CHAR(1),
    CONSTRAINT actor_pk PRIMARY KEY(act_id)
);
CREATE TABLE IF NOT EXISTS director (
	dir_id INTEGER NOT NULL,
    dir_fname CHAR(20),
    dir_lname CHAR(20),
    CONSTRAINT director_pk PRIMARY KEY(dir_id)
);
CREATE TABLE IF NOT EXISTS movie (
	mov_id INTEGER NOT NULL,
    mov_title CHAR(50),
    mov_year INTEGER,
    mov_time INTEGER,
    mov_lang CHAR(50),
    mov_dt_rel DATE,
    mov_rel_country CHAR(5),
    CONSTRAINT movie_pk PRIMARY KEY(mov_id)
);
CREATE TABLE IF NOT EXISTS reviewer (
	rev_id INTEGER NOT NULL,
    rev_name CHAR(30),
    CONSTRAINT reviewer_pk PRIMARY KEY(rev_id)
);
CREATE TABLE IF NOT EXISTS genres (
	gen_id INTEGER NOT NULL,
    gen_title CHAR(20),
    CONSTRAINT genres_pk PRIMARY KEY(gen_id)
);
CREATE TABLE IF NOT EXISTS movie_direction (
	dir_id INTEGER,
    mov_id INTEGER,
    CONSTRAINT fk_md_director FOREIGN KEY(dir_id) REFERENCES director(dir_id),
    CONSTRAINT fk_md_movie FOREIGN KEY(mov_id) REFERENCES movie(mov_id)
);
CREATE TABLE IF NOT EXISTS movie_cast (
	act_id INTEGER,
    mov_id INTEGER,
    role CHAR(30),
    CONSTRAINT fk_mc_actor FOREIGN KEY(act_id) REFERENCES actor(act_id),
    CONSTRAINT fk_mc_movie FOREIGN KEY(mov_id) REFERENCES movie(mov_id)
);
CREATE TABLE IF NOT EXISTS movie_genres (
	mov_id INTEGER,
    gen_id INTEGER,
    CONSTRAINT fk_mg_movie FOREIGN KEY(mov_id) REFERENCES movie(mov_id),
    CONSTRAINT fk_mg_genres FOREIGN KEY(gen_id) REFERENCES genres(gen_id)
);
CREATE TABLE IF NOT EXISTS rating (
	mov_id INTEGER,
    rev_id INTEGER,
    rev_stars INTEGER,
    num_o_ratings INTEGER,
    CONSTRAINT fk_r_movie FOREIGN KEY(mov_id) REFERENCES movie(mov_id),
    CONSTRAINT fk_r_reviewer FOREIGN KEY(rev_id) REFERENCES reviewer(rev_id)
);