create database moviedb;
use moviedb;

#QUESTION 1   Write a SQL query to find the actors who were cast in the movie 'Annie Hall'. Return actor first name, last name and role.

Solution-
Step 1 - create actor table from the dataset given using the create table command.
step 2- insert the values associated to it using insert into command.
step 3- create movie table and insert its assigned values.
step 4- create movie_cast table and insert its assigned values.
step 5- check whether the tables has been created and its values has been provided appropriately or not using select command for each table.
step 6- execute the query

CREATE TABLE actors (
	act_id  varchar(50) NOT NULL,
	act_fname  varchar(50) NOT NULL,
	act_lname  varchar(50) NOT NULL,
	act_gender  varchar(50) NOT NULL
); 

INSERT INTO actors (act_id, act_fname, act_lname, act_gender) VALUES
('101', 'James', 'Stewart', 'M'),
('102', 'Deborah', 'Kerr', 'F'),
('103', 'Peter', 'OToole', 'M'),
('104', 'Robert', 'De Niro', 'M'),
('105', 'F. Murray', 'Abraham', 'M'),
('106', 'Harrison', 'Ford', 'M'),
('107', 'Nicole', 'Kidman', 'F'),
('108', 'Stephen', 'Baldwin', 'M'),
('109', 'Jack', 'Nicholson', 'M'),
('110', 'Mark', 'Wahlberg', 'M'),
('111', 'Woody', 'Allen', 'M'),
('112', 'Claire', 'Danes', 'F'),
('113', 'Tim', 'Robbins', 'M'),
('114', 'Kevin', 'Spacey', 'M'),
('115', 'Kate', 'Winslet', 'F'),
('116', 'Robin', 'Williams', 'M'),
('117', 'Jon', 'Voight', 'M'),
('118', 'Ewan', 'McGregor', 'M'),
('119', 'Christian', 'Bale', 'M'),
('120', 'Maggie', 'Gyllenhaal', 'F'),
('121', 'Dev', 'Patel', 'M'),
('122', 'Sigourney', 'Weaver', 'F'),
('123', 'David', 'Aston', 'M'),
('124', 'Ali', 'Astin', 'F');

select * from actors; 

CREATE TABLE movie (
  mov_id int NOT NULL,
  mov_title varchar(50) NOT NULL,
  mov_year int NOT NULL,
  mov_time int NOT NULL,
  mov_lang  varchar(20) NOT NULL,
  mov_dt_rel date NOT NULL,
  mov_rel_country varchar(30) NOT NULL);


INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES
(901, 'Vertigo', 1958, 128, 'English', '1958-08-24', 'UK'),
(902, 'The Innocents', 1961, 100, 'English', '1962-02-19', 'SW'),
(903, 'Lawrence of Arabia', 1962, 216, 'English', '1962-12-11', 'UK'),
(904, 'The Deer Hunter', 1978, 183, 'English', '1979-03-08', 'UK'),
(905, 'Amadeus', 1984, 160, 'English', '1985-01-07', 'UK'),
(906, 'Blade Runner', 1982, 117, 'English', '1982-09-09', 'UK'),
(907, 'Eyes Wide Shut', 1999, 159, 'English', '0000-00-00', 'UK'),
(908, 'The Usual Suspects', 1995, 106, 'English', '1995-08-25', 'UK'),
(909, 'Chinatown', 1974, 130, 'English', '1974-08-09', 'UK'),
(910, 'Boogie Nights', 1997, 155, 'English', '1998-02-16', 'UK'),
(911, 'Annie Hall', 1977, 93, 'English', '1977-04-20', 'USA'),
(912, 'Princess Mononoke', 1997, 134, 'Japanese', '2001-10-19', 'UK'),
(913, 'The Shawshank Redemption', 1994, 142, 'English', '1995-02-17', 'UK'),
(914, 'American Beauty', 1999, 122, 'English', '0000-00-00', 'UK'),
(915, 'Titanic', 1997, 194, 'English', '1998-01-23', 'UK'),
(916, 'Good Will Hunting', 1997, 126, 'English', '1998-06-03', 'UK'),
(917, 'Deliverance', 1972, 109, 'English', '1982-10-05', 'UK'),
(918, 'Trainspotting', 1996, 94, 'English', '1996-02-23', 'UK'),
(919, 'The Prestige', 2006, 130, 'English', '2006-11-10', 'UK'),
(920, 'Donnie Darko', 2001, 113, 'English', '0000-00-00', 'UK'),
(921, 'Slumdog Millionaire', 2008, 120, 'English', '2009-01-09', 'UK'),
(922, 'Aliens', 1986, 137, 'English', '1986-08-29', 'UK'),
(923, 'Beyond the Sea', 2004, 118, 'English', '2004-11-26', 'UK'),
(924, 'Avatar', 2009, 162, 'English', '2009-12-17', 'UK'),
(925, 'Braveheart', 1995, 178, 'English', '1995-09-08', 'UK'),
(926, 'Seven Samurai', 1954, 207, 'Japanese', '1954-04-26', 'JP'),
(927, 'Spirited Away', 2001, 125, 'Japanese', '2003-09-12', 'UK'),
(928, 'Back to the Future', 1985, 116, 'English', '1985-12-04', 'UK');

select * from movie;


CREATE TABLE movie_cast (
  act_id int NOT NULL,
  mov_id int NOT NULL,
  role varchar(30) NOT NULL
)
INSERT INTO movie_cast (act_id, mov_id, role) VALUES
(101, 901, 'John Scottie Ferguson'),
(102, 902, 'Miss Giddens'),
(103, 903, 'T.E. Lawrence'),
(104, 904, 'Michael'),
(105, 905, 'Antonio Salieri'),
(106, 906, 'Rick Deckard'),
(107, 907, 'Alice Harford'),
(108, 908, 'McManus'),
(110, 910, 'Eddie Adams'),
(111, 911, 'Alvy Singer'),
(112, 912, 'San'),
(113, 913, 'Andy Dufresne'),
(114, 914, 'Lester Burnham'),
(115, 915, 'Rose DeWitt Bukater'),
(116, 916, 'Sean Maguire'),
(117, 917, 'Ed'),
(118, 918, 'Renton'),
(120, 920, 'Elizabeth Darko'),
(121, 921, 'Older Jamal'),
(122, 922, 'Ripley'),
(114, 923, 'Bobby Darin'),
(109, 909, 'J.J. Gittes'),
(119, 919, 'Alfred Borden');

select * from movie_cast;

Execution 
select act_fname, act_lname, role 
from  actors inner join movie_cast on actors.act_id = movie_cast.act_id
inner join movie on movie.mov_id = movie_cast.mov_id 
where mov_title='annie hall';


 QUESTION 2-
 From the following table, write SQL query to find the director who directed the movie that casted a role for'Eyes Wide Shut'. Return director first name , last name and movie title.
 
 solution- 
 Step 1 - create director table from the dataset given using the create table command.
step 2- insert the values associated to it using insert into command.
step 3- create movie_direction table and insert its assigned values.
step 4- create movie_cast table and insert its assigned values.
step 5- create movie table and insert its assigned values.
step 6- check whether the tables has been created and its values has been provided appropriately or not using select command for each table.
step 7- execute the query

 
 
CREATE TABLE director(
	dir_id int NOT NULL,
	dir_fname varchar(20) NOT NULL,
	dir_lname varchar(20) NOT NULL
    );
    

INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES
(201, 'Alfred', 'Hitchcock'),
(202, 'Jack', 'Clayton'),
(203, 'David', 'Lean'),
(204, 'Michael', 'Cimino'),
(205, 'Milos', 'Forman'),
(206, 'Ridley', 'Scott'),
(207, 'Stanley', 'Kubrick'),
(208, 'Bryan', 'Singer'),
(209, 'Roman', 'Polanski'),
(210, 'Paul', 'Thomas Anderson'),
(211, 'Woody', 'Allen'),
(212, 'Hayao', 'Miyazaki'),
(213, 'Frank', 'Darabont'),
(214, 'Sam', 'Mendes'),
(215, 'James', 'Cameron'),
(216, 'Gus', 'Van Sant'),
(217, 'John', 'Boorman'),
(218, 'Danny', 'Boyle'),
(219, 'Christopher', 'Nolan'),
(220, 'Richard', 'Kelly'),
(221, 'Kevin', 'Spacey'),
(222, 'Andrei', 'Tarkovsky'),
(223, 'Peter', 'Jackson');

select * from director;


CREATE TABLE movie_direction (
  dir_id int NOT NULL,
  mov_id int NOT NULL
);

INSERT INTO movie_direction (dir_id, mov_id) VALUES
(201, 901),
(202, 902),
(203, 903),
(204, 904),
(205, 905),
(206, 906),
(207, 907),
(208, 908),
(209, 909),
(210, 910),
(211, 911),
(212, 912),
(213, 913),
(214, 914),
(215, 915),
(215, 922),
(216, 916),
(217, 917),
(218, 918),
(218, 921),
(219, 919),
(220, 920),
(221, 923);

select * from movie_direction;


CREATE TABLE movie_cast (
  act_id int NOT NULL,
  mov_id int NOT NULL,
  role varchar(30) NOT NULL
)
INSERT INTO movie_cast (act_id, mov_id, role) VALUES
(101, 901, 'John Scottie Ferguson'),
(102, 902, 'Miss Giddens'),
(103, 903, 'T.E. Lawrence'),
(104, 904, 'Michael'),
(105, 905, 'Antonio Salieri'),
(106, 906, 'Rick Deckard'),
(107, 907, 'Alice Harford'),
(108, 908, 'McManus'),
(110, 910, 'Eddie Adams'),
(111, 911, 'Alvy Singer'),
(112, 912, 'San'),
(113, 913, 'Andy Dufresne'),
(114, 914, 'Lester Burnham'),
(115, 915, 'Rose DeWitt Bukater'),
(116, 916, 'Sean Maguire'),
(117, 917, 'Ed'),
(118, 918, 'Renton'),
(120, 920, 'Elizabeth Darko'),
(121, 921, 'Older Jamal'),
(122, 922, 'Ripley'),
(114, 923, 'Bobby Darin'),
(109, 909, 'J.J. Gittes'),
(119, 919, 'Alfred Borden');

select * from movie_cast;

CREATE TABLE movie (
  mov_id int NOT NULL,
  mov_title varchar(50) NOT NULL,
  mov_year int NOT NULL,
  mov_time int NOT NULL,
  mov_lang  varchar(20) NOT NULL,
  mov_dt_rel date NOT NULL,
  mov_rel_country varchar(30) NOT NULL);


INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES
(901, 'Vertigo', 1958, 128, 'English', '1958-08-24', 'UK'),
(902, 'The Innocents', 1961, 100, 'English', '1962-02-19', 'SW'),
(903, 'Lawrence of Arabia', 1962, 216, 'English', '1962-12-11', 'UK'),
(904, 'The Deer Hunter', 1978, 183, 'English', '1979-03-08', 'UK'),
(905, 'Amadeus', 1984, 160, 'English', '1985-01-07', 'UK'),
(906, 'Blade Runner', 1982, 117, 'English', '1982-09-09', 'UK'),
(907, 'Eyes Wide Shut', 1999, 159, 'English', '0000-00-00', 'UK'),
(908, 'The Usual Suspects', 1995, 106, 'English', '1995-08-25', 'UK'),
(909, 'Chinatown', 1974, 130, 'English', '1974-08-09', 'UK'),
(910, 'Boogie Nights', 1997, 155, 'English', '1998-02-16', 'UK'),
(911, 'Annie Hall', 1977, 93, 'English', '1977-04-20', 'USA'),
(912, 'Princess Mononoke', 1997, 134, 'Japanese', '2001-10-19', 'UK'),
(913, 'The Shawshank Redemption', 1994, 142, 'English', '1995-02-17', 'UK'),
(914, 'American Beauty', 1999, 122, 'English', '0000-00-00', 'UK'),
(915, 'Titanic', 1997, 194, 'English', '1998-01-23', 'UK'),
(916, 'Good Will Hunting', 1997, 126, 'English', '1998-06-03', 'UK'),
(917, 'Deliverance', 1972, 109, 'English', '1982-10-05', 'UK'),
(918, 'Trainspotting', 1996, 94, 'English', '1996-02-23', 'UK'),
(919, 'The Prestige', 2006, 130, 'English', '2006-11-10', 'UK'),
(920, 'Donnie Darko', 2001, 113, 'English', '0000-00-00', 'UK'),
(921, 'Slumdog Millionaire', 2008, 120, 'English', '2009-01-09', 'UK'),
(922, 'Aliens', 1986, 137, 'English', '1986-08-29', 'UK'),
(923, 'Beyond the Sea', 2004, 118, 'English', '2004-11-26', 'UK'),
(924, 'Avatar', 2009, 162, 'English', '2009-12-17', 'UK'),
(925, 'Braveheart', 1995, 178, 'English', '1995-09-08', 'UK'),
(926, 'Seven Samurai', 1954, 207, 'Japanese', '1954-04-26', 'JP'),
(927, 'Spirited Away', 2001, 125, 'Japanese', '2003-09-12', 'UK'),
(928, 'Back to the Future', 1985, 116, 'English', '1985-12-04', 'UK');

select * from movie;

Execution-
select dir_fname, dir_lname, mov_title
 from director inner join movie_direction on director.dir_id = movie_direction.dir_id 
 inner join movie on movie_direction.mov_id = movie.mov_id 
 inner join movie_cast on movie.mov_id = movie_cast.mov_id 
 where mov_title = 'eyes wide shut';

QUESTION 3-
Write a SQL query to find who directed a movie that casted a role as ‘Sean Maguire’. Return director first name, last name and movie title.

solution- 
Here we require director , movie_direction , movie  , movie_cast tables for the excustion


SELECT dir_fname, dir_lname, mov_title
FROM  director 
JOIN movie_direction 
  ON director.dir_id=movie_direction.dir_id
JOIN movie 
  ON movie_direction.mov_id=movie.mov_id
JOIN movie_cast 
  ON movie_cast.mov_id=movie.mov_id
  WHERE role='Sean Maguire';
  
  
QUESTION 4  
Write a SQL query to find the actors who have not acted in any movie between 1990 and 2000 (Begin and end values are included.). Return actor first name, last name, movie title and release year. 

Solution-
Here we require actors  , movie_cast , movie tables for the execution

select act_fname, act_lname, mov_title, mov_year
from actors
left join movie_cast on actors.act_id = movie_cast.act_id 
inner join movie on movie_cast.mov_id = movie.mov_id
where mov_year not between 1990 and 2000;



Question 5
Write a SQL query to find the directors with the number of genres of movies. Group the result set on director first name, last name and generic title. Sort the result-set in ascending order by director first name and last name. Return director first name, last name and number of genres of movies.

Solution-
Here we require director, movie_direction, movie_genres, genres for the execution 

SELECT dir_fname,dir_lname, gen_title,count(gen_title)
FROM director
Natural join movie_direction
Natural join movie_genres
Natural Join genres
GROUP BY dir_fname, dir_lname,gen_title
ORDER BY dir_fname,dir_lname;









