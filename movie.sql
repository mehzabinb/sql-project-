# create database and then use
create database Cinema;
use Cinema;

#1 create table of actor
create table actor(act_id int primary key,act_fname varchar(20),act_lname varchar(20), act_gender varchar(20));
desc actor;

#2 create table of director
create table director(dir_id int primary key,dir_fname varchar(20),dir_lname varchar(20));
desc director;

#3 create table of movie
create table movie(mov_id int primary key,mov_title varchar(20),mov_year int,mov_time int,mov_lang varchar(20),
mov_dt_rel date,mov_rel_country varchar(20));
desc movie;

#4 create table of genres
create table genres(gen_id int primary key,gen_title varchar(20));
desc genres;

#5 create table of reviewer
create table reviewer(rev_id int primary key,rev_name varchar(20));
desc reviewer;

#6 create table of movie_cast who refered foreign key from actor_table and movie table
create table movie_cast(act_id int,foreign key(act_id) references actor(act_id),
mov_id int,foreign key(mov_id) references movie(mov_id),role varchar(20));
desc movie_cast;

#7 create table of movie_direction is refered foreign key from director and movie
create table movie_direction(dir_id int,foreign key(dir_id) references director(dir_id),mov_id int,
foreign key(mov_id) references movie(mov_id));
desc movie_direction;

#8 create table of movie_genres is refred foreign key from movie and genres
create table movie_genres(mov_id int,foreign key(mov_id)references movie(mov_id),
gen_id int,foreign key(gen_id)references genres(gen_id));
desc movie_genres;

#9 create table of rating is refred from movie and reviewer
create table rating(mov_id int,foreign key(mov_id)references movie(mov_id),rev_id int,
foreign key(rev_id)references reviewer(rev_id),rev_stars int,num_o_ratings int);
desc rating;

#---- values of actor table
insert into actor values(1,'Sharukh','Khan','Male');
insert into actor values
(2,'Salman','Khan','Male'),(3,'Ajay','Devgan','Male'),
(4,'Rani','Mukerji','Female'),(5,'Deepika','Padukon','Female'),(6,'Ranveer','Singh','Male'),
(7,'Allu','Arjun','Male'),(8,'Dwayne','jhonson','Male'),(9,'jennifer','Lawrence','Female'),(10,'Amitabh','Bachchan','Male');
select * from actor;

#---values of director table
insert into director values(1,'Rohit','Shetty'),(2,'Siddharth','Anand'),(3,'Gopi','Puthran'),
(4,'Farah','Khan'),(5,'David','Dhawan'),
(6,'Sanjay','leela bhansali'),(7,'Ramesh','Sippy'),(8,'Jake','Kasdan'),
(9,'David O','Russell'),(10,'Om','Raut'),(11,'Karan','Johar'),(12,'Yash','Chopra'),
(13,'Bandreddi','Sukumar');
insert into director values(14,'Ali Abbas','Zafar');
select * from director;

#---values of movie table
insert into movie values(1,'Sultan',2016,170,'Hindi','2016-07-06','India');
insert into movie values(2,'Pathaan',2023,146,'Hindi','2023-01-25','India'),
(3,'Singham Return',2014,146,'Hindi','2014-08-15','India'),
(4,'Simmba',2019,131,'Hindi','2019-01-25','India'),
(5,'Mardaani 2',2019,105,'Hindi','2019-12-13','India'),
(6,'Bajirao Mastani',2015,158,'Hindi','2015-12-18','India'),
(7,'Pushpa:The Rise',2021,179,'Hindi','2021-12-17','India'),
(8,'Happy New Year',2014,180,'Hindi','2014-10-24','India'),
(9,'Partner',2007,155,'Hindi','2007-07-20','India'),
(10,'Jumanji:Welcome to the Jungle',2017,119,'English','2017-12-20','United States'),
(11,'Sholay',1975,204,'Hindi','1975-08-15','India'),(12,'American Hustle',2013,138,'English','2013-12-13','United States');
select * from movie;

#---values of genres
insert into genres values(1,'Romance'),(2,'Action'),(3,'Thriller'),(4,'Drama'),(5,'Historical'),(6,'Crime'),(7,'Adventure'),(8,'Horror'),(9,'Comedy'),(10,'Crime Film'),
(11,'Fantasy');
select * from genres;

#--values of reviewer
insert into reviewer values(1,'Prakash'),(2,'Suraj'),(3,'Amit'),(4,'Tausif'),(5,'Jhon'),(6,'Steave'),(7,'Pihu'),(8,'Zoya'),(9,'Vijay'),(10,'Altaf'),
(11,'David'),(12,'Monty'),(13,'Aryan'),(14,'Michel');

# values of movie_cast
insert into movie_cast values(1,2,'Hero');
insert into movie_cast values(2,1,'Hero'),(3,3,'Hero'),(4,5,'Heroine'),(5,2,'Heroine'),(6,6,'Hero'),(5,6,'Heroine'),(7,7,'Hero'),(1,8,'Hero'),(2,9,'Hero'),(8,10,'Hero'),
(9,12,'Heroine'),(10,11,'Hero');
select * from movie_cast;

# values of movie_direction
insert into movie_direction values(1,3),(1,4),(2,2),(3,5),(4,8),(5,9),(6,6),(7,11),(8,10),(9,12),(13,7),(14,1);
select * from movie_direction;

#--values of movie
insert into movie_genres values
(1,1),(1,2),(1,4),
(2,2),(2,7),(2,3),(2,10),(2,4),
(3,1),(3,2),(3,4),
(4,2),(4,4),(4,9),
(5,2),(5,3),(5,4),
(6,1),(6,2),(6,4),
(7,2),(7,3),(7,4),(7,10),
(8,1),(8,2),(8,4),(8,9),(8,10),
(9,1),(9,9),
(10,11),(10,7),(10,3),(10,2),
(11,2),(11,3),(11,4),(11,7),
(12,3),(12,4),(12,9),(12,10);
select * from movie_genres;

# values of rating

insert into rating values(1,2,4,996);
insert into rating values(2,1,4,95596),(3,3,4,127),(4,4,4,446),
(5,7,5,2292),(6,14,4,582),(7,10,4,55198),(8,5,4,616),(9,9,4,120),(10,6,5,168),(11,8,5,926),(12,11,4,203);
select * from rating;

#---display all table
select * from actor;
select * from director;
select * from movie;
select * from genres;
select * from movie_cast;
select * from movie_direction;
select * from movie_genres;
select * from rating;




