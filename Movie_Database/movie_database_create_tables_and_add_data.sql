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
CREATE TABLE movie_cast (
    act_id INTEGER,
    mov_id INTEGER,
    role CHAR(30),
    CONSTRAINT fk_mc_act FOREIGN KEY(act_id) REFERENCES actor(act_id),
    CONSTRAINT fk_mc_mov FOREIGN KEY(mov_id) REFERENCES movie(mov_id)
);
CREATE TABLE movie_genres (
    mov_id INTEGER,
    gen_id INTEGER,
    CONSTRAINT fk_mg_mov FOREIGN KEY(mov_id) REFERENCES movie(mov_id),
    CONSTRAINT fk_mg_gen FOREIGN KEY(gen_id) REFERENCES genres(gen_id)
);
CREATE TABLE rating (
    mov_id INTEGER,
    rev_id INTEGER,
    rev_stars INTEGER,
    num_o_ratings INTEGER,
    CONSTRAINT fk_r_mov FOREIGN KEY(mov_id) REFERENCES movie(mov_id),
    CONSTRAINT fk_r_rev FOREIGN KEY(rev_id) REFERENCES reviewer(rev_id)
);
INSERT INTO actor VALUES
    (101, 'James', 'Stewart', 'M'),
    (102, 'Deborah', 'Kerr', 'F'),
    (103, 'Peter', 'OToole', 'M'),
    (104, 'Robert', 'De Niro', 'M'),
    (105, 'F. Murray', 'Abraham', 'M'),
    (106, 'Harrison', 'Ford', 'M'),
    (107, 'Nicole', 'Kidman', 'F'),
    (108, 'Stephen', 'Baldwin', 'M'),
    (109, 'Jack', 'Nicholson', 'M'),
    (110, 'Mark', 'Wahlberg', 'M'),
    (111, 'Woody', 'Allen', 'M'),
    (112, 'Claire', 'Danes', 'F'),
    (113, 'Tim', 'Robbins', 'M'),
    (114, 'Kevin', 'Spacey', 'M'),
    (115, 'Kate', 'Winslet', 'F'),
    (116, 'Robin', 'Williams', 'M'),
    (117, 'Jon', 'Voight', 'M'),
    (118, 'Ewan', 'McGregor', 'M'),
    (119, 'Christian', 'Bale', 'M'),
    (120, 'Maggie', 'Gyllenhaal', 'F'),
    (121, 'Dev', 'Patel', 'M'),
    (122, 'Sigourney', 'Weaver', 'F'),
    (123, 'David', 'Aston', 'M'),
    (124, 'Ali', 'Astin', 'F');