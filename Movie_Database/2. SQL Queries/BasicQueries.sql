/*
1. From the following table, write a SQL query to find the name and year of the movies. Return movie title, movie release year.

Sample table: movie

 mov_id |                     mov_title                      | mov_year | mov_time |    mov_lang     | mov_dt_rel | mov_rel_country
--------+----------------------------------------------------+----------+----------+-----------------+------------+-----------------
    901 | Vertigo                                            |     1958 |      128 | English         | 1958-08-24 | UK
    902 | The Innocents                                      |     1961 |      100 | English         | 1962-02-19 | SW
    903 | Lawrence of Arabia                                 |     1962 |      216 | English         | 1962-12-11 | UK
    904 | The Deer Hunter                                    |     1978 |      183 | English         | 1979-03-08 | UK
    905 | Amadeus                                            |     1984 |      160 | English         | 1985-01-07 | UK
    906 | Blade Runner                                       |     1982 |      117 | English         | 1982-09-09 | UK
    907 | Eyes Wide Shut                                     |     1999 |      159 | English         |            | UK
    908 | The Usual Suspects                                 |     1995 |      106 | English         | 1995-08-25 | UK
    909 | Chinatown                                          |     1974 |      130 | English         | 1974-08-09 | UK
    910 | Boogie Nights                                      |     1997 |      155 | English         | 1998-02-16 | UK
......
    925 | Braveheart                                         |     1995 |      178 | English         | 1995-09-08 | UK
*/


/*
2. From the following table, write a SQL query to find when the movie 'American Beauty' released. Return movie release year.

Sample table: movie

 mov_id |                     mov_title                      | mov_year | mov_time |    mov_lang     | mov_dt_rel | mov_rel_country
--------+----------------------------------------------------+----------+----------+-----------------+------------+-----------------
    901 | Vertigo                                            |     1958 |      128 | English         | 1958-08-24 | UK
    902 | The Innocents                                      |     1961 |      100 | English         | 1962-02-19 | SW
    903 | Lawrence of Arabia                                 |     1962 |      216 | English         | 1962-12-11 | UK
    904 | The Deer Hunter                                    |     1978 |      183 | English         | 1979-03-08 | UK
    905 | Amadeus                                            |     1984 |      160 | English         | 1985-01-07 | UK
    906 | Blade Runner                                       |     1982 |      117 | English         | 1982-09-09 | UK
    907 | Eyes Wide Shut                                     |     1999 |      159 | English         |            | UK
    908 | The Usual Suspects                                 |     1995 |      106 | English         | 1995-08-25 | UK
    909 | Chinatown                                          |     1974 |      130 | English         | 1974-08-09 | UK
    910 | Boogie Nights                                      |     1997 |      155 | English         | 1998-02-16 | UK
......
    925 | Braveheart
*/


/*
3. From the following table, write a SQL query to find the movie that was released in 1999. Return movie title.

Sample table: movie

 mov_id |                     mov_title                      | mov_year | mov_time |    mov_lang     | mov_dt_rel | mov_rel_country
--------+----------------------------------------------------+----------+----------+-----------------+------------+-----------------
    901 | Vertigo                                            |     1958 |      128 | English         | 1958-08-24 | UK
    902 | The Innocents                                      |     1961 |      100 | English         | 1962-02-19 | SW
    903 | Lawrence of Arabia                                 |     1962 |      216 | English         | 1962-12-11 | UK
    904 | The Deer Hunter                                    |     1978 |      183 | English         | 1979-03-08 | UK
    905 | Amadeus                                            |     1984 |      160 | English         | 1985-01-07 | UK
    906 | Blade Runner                                       |     1982 |      117 | English         | 1982-09-09 | UK
    907 | Eyes Wide Shut                                     |     1999 |      159 | English         |            | UK
    908 | The Usual Suspects                                 |     1995 |      106 | English         | 1995-08-25 | UK
    909 | Chinatown                                          |     1974 |      130 | English         | 1974-08-09 | UK
    910 | Boogie Nights                                      |     1997 |      155 | English         | 1998-02-16 | UK
......
    925 | Braveheart                                         |     1995 |      178 | English         | 1995-09-08 | UK
*/


/*
4. From the following table, write a SQL query to find those movies, which were released before 1998. Return movie title.

Sample table: movie

 mov_id |                     mov_title                      | mov_year | mov_time |    mov_lang     | mov_dt_rel | mov_rel_country
--------+----------------------------------------------------+----------+----------+-----------------+------------+-----------------
    901 | Vertigo                                            |     1958 |      128 | English         | 1958-08-24 | UK
    902 | The Innocents                                      |     1961 |      100 | English         | 1962-02-19 | SW
    903 | Lawrence of Arabia                                 |     1962 |      216 | English         | 1962-12-11 | UK
    904 | The Deer Hunter                                    |     1978 |      183 | English         | 1979-03-08 | UK
    905 | Amadeus                                            |     1984 |      160 | English         | 1985-01-07 | UK
    906 | Blade Runner                                       |     1982 |      117 | English         | 1982-09-09 | UK
    907 | Eyes Wide Shut                                     |     1999 |      159 | English         |            | UK
    908 | The Usual Suspects                                 |     1995 |      106 | English         | 1995-08-25 | UK
    909 | Chinatown                                          |     1974 |      130 | English         | 1974-08-09 | UK
    910 | Boogie Nights                                      |     1997 |      155 | English         | 1998-02-16 | UK
......
    925 | Braveheart                                         |     1995 |      178 | English         | 1995-09-08 | UK
*/


/*
5. From the following tables, write a SQL query to find the name of all reviewers and movies together in a single list.

Sample table: movie

 mov_id |                     mov_title                      | mov_year | mov_time |    mov_lang     | mov_dt_rel | mov_rel_country
--------+----------------------------------------------------+----------+----------+-----------------+------------+-----------------
    901 | Vertigo                                            |     1958 |      128 | English         | 1958-08-24 | UK
    902 | The Innocents                                      |     1961 |      100 | English         | 1962-02-19 | SW
    903 | Lawrence of Arabia                                 |     1962 |      216 | English         | 1962-12-11 | UK
    904 | The Deer Hunter                                    |     1978 |      183 | English         | 1979-03-08 | UK
    905 | Amadeus                                            |     1984 |      160 | English         | 1985-01-07 | UK
    906 | Blade Runner                                       |     1982 |      117 | English         | 1982-09-09 | UK
    907 | Eyes Wide Shut                                     |     1999 |      159 | English         |            | UK
    908 | The Usual Suspects                                 |     1995 |      106 | English         | 1995-08-25 | UK
    909 | Chinatown                                          |     1974 |      130 | English         | 1974-08-09 | UK
    910 | Boogie Nights                                      |     1997 |      155 | English         | 1998-02-16 | UK
......
    925 | Braveheart                                         |     1995 |      178 | English         | 1995-09-08 | UK
    

Sample table: reviewer

 rev_id |            rev_name
--------+--------------------------------
   9001 | Righty Sock
   9002 | Jack Malvern
   9003 | Flagrant Baronessa
   9004 | Alec Shaw
   9005 |
   9006 | Victor Woeltjen
   9007 | Simon Wright
   9008 | Neal Wruck
   9009 | Paul Monks
   9010 | Mike Salvati
...
   9020 | Richard Adams
*/


/*
6. From the following table, write a SQL query to find all reviewers who have rated seven or more stars to their rating. Return reviewer name.

Sample table: reviewer

 rev_id |            rev_name
--------+--------------------------------
   9001 | Righty Sock
   9002 | Jack Malvern
   9003 | Flagrant Baronessa
   9004 | Alec Shaw
   9005 |
   9006 | Victor Woeltjen
   9007 | Simon Wright
   9008 | Neal Wruck
   9009 | Paul Monks
....
   9020 | Richard Adams


Sample table: rating

 mov_id | rev_id | rev_stars | num_o_ratings
--------+--------+-----------+---------------
    901 |   9001 |      8.40 |        263575
    902 |   9002 |      7.90 |         20207
    903 |   9003 |      8.30 |        202778
    906 |   9005 |      8.20 |        484746
    924 |   9006 |      7.30 |
    908 |   9007 |      8.60 |        779489
    909 |   9008 |           |        227235
    910 |   9009 |      3.00 |        195961
....
    923 |   9020 |      6.70 |         13091
*/


/*
7. From the following tables, write a SQL query to find the movies without any rating. Return movie title.

Sample table: movie

 mov_id |                     mov_title                      | mov_year | mov_time |    mov_lang     | mov_dt_rel | mov_rel_country
--------+----------------------------------------------------+----------+----------+-----------------+------------+-----------------
    901 | Vertigo                                            |     1958 |      128 | English         | 1958-08-24 | UK
    902 | The Innocents                                      |     1961 |      100 | English         | 1962-02-19 | SW
    903 | Lawrence of Arabia                                 |     1962 |      216 | English         | 1962-12-11 | UK
    904 | The Deer Hunter                                    |     1978 |      183 | English         | 1979-03-08 | UK
    905 | Amadeus                                            |     1984 |      160 | English         | 1985-01-07 | UK
    906 | Blade Runner                                       |     1982 |      117 | English         | 1982-09-09 | UK
    907 | Eyes Wide Shut                                     |     1999 |      159 | English         |            | UK
    908 | The Usual Suspects                                 |     1995 |      106 | English         | 1995-08-25 | UK
    909 | Chinatown                                          |     1974 |      130 | English         | 1974-08-09 | UK
    910 | Boogie Nights                                      |     1997 |      155 | English         | 1998-02-16 | UK
......
    925 | Braveheart                                         |     1995 |      178 | English         | 1995-09-08 | UK
    
    
Sample table: rating

 mov_id | rev_id | rev_stars | num_o_ratings
--------+--------+-----------+---------------
    901 |   9001 |      8.40 |        263575
    902 |   9002 |      7.90 |         20207
    903 |   9003 |      8.30 |        202778
    906 |   9005 |      8.20 |        484746
    924 |   9006 |      7.30 |
    908 |   9007 |      8.60 |        779489
    909 |   9008 |           |        227235
    910 |   9009 |      3.00 |        195961
.....
    923 |   9020 |      6.70 |         13091
*/


/*
8. From the following table, write a SQL query to find the movies with ID 905 or 907 or 917. Return movie title.

Sample table: movie

 mov_id |                     mov_title                      | mov_year | mov_time |    mov_lang     | mov_dt_rel | mov_rel_country
--------+----------------------------------------------------+----------+----------+-----------------+------------+-----------------
    901 | Vertigo                                            |     1958 |      128 | English         | 1958-08-24 | UK
    902 | The Innocents                                      |     1961 |      100 | English         | 1962-02-19 | SW
    903 | Lawrence of Arabia                                 |     1962 |      216 | English         | 1962-12-11 | UK
    904 | The Deer Hunter                                    |     1978 |      183 | English         | 1979-03-08 | UK
    905 | Amadeus                                            |     1984 |      160 | English         | 1985-01-07 | UK
    906 | Blade Runner                                       |     1982 |      117 | English         | 1982-09-09 | UK
    907 | Eyes Wide Shut                                     |     1999 |      159 | English         |            | UK
    908 | The Usual Suspects                                 |     1995 |      106 | English         | 1995-08-25 | UK
    909 | Chinatown                                          |     1974 |      130 | English         | 1974-08-09 | UK
    910 | Boogie Nights                                      |     1997 |      155 | English         | 1998-02-16 | UK
......
    925 | Braveheart                                         |     1995 |      178 | English         | 1995-09-08 | UK
*/


/*
9. From the following table, write a SQL query to find the movie titles that contain the word 'Boogie Nights'. Sort the result-set in ascending order by movie year. Return movie ID, movie title and movie release year.

Sample table: movie

 mov_id |                     mov_title                      | mov_year | mov_time |    mov_lang     | mov_dt_rel | mov_rel_country
--------+----------------------------------------------------+----------+----------+-----------------+------------+-----------------
    901 | Vertigo                                            |     1958 |      128 | English         | 1958-08-24 | UK
    902 | The Innocents                                      |     1961 |      100 | English         | 1962-02-19 | SW
    903 | Lawrence of Arabia                                 |     1962 |      216 | English         | 1962-12-11 | UK
    904 | The Deer Hunter                                    |     1978 |      183 | English         | 1979-03-08 | UK
    905 | Amadeus                                            |     1984 |      160 | English         | 1985-01-07 | UK
    906 | Blade Runner                                       |     1982 |      117 | English         | 1982-09-09 | UK
    907 | Eyes Wide Shut                                     |     1999 |      159 | English         |            | UK
    908 | The Usual Suspects                                 |     1995 |      106 | English         | 1995-08-25 | UK
    909 | Chinatown                                          |     1974 |      130 | English         | 1974-08-09 | UK
    910 | Boogie Nights                                      |     1997 |      155 | English         | 1998-02-16 | UK
......
    925 | Braveheart                                         |     1995 |      178 | English         | 1995-09-08 | UK
*/


/*
10. From the following table, write a SQL query to find those actors with the first name 'Woody' and the last name 'Allen'. Return actor ID.

Sample table: actor

 act_id |      act_fname       |      act_lname       | act_gender
--------+----------------------+----------------------+------------
    101 | James                | Stewart              | M
    102 | Deborah              | Kerr                 | F
    103 | Peter                | OToole               | M
    104 | Robert               | De Niro              | M
    105 | F. Murray            | Abraham              | M
    106 | Harrison             | Ford                 | M
    107 | Nicole               | Kidman               | F
    108 | Stephen              | Baldwin              | M
    109 | Jack                 | Nicholson            | M
    110 | Mark                 | Wahlberg             | M
....
    124 | Ali                  | Astin                | F
*/
