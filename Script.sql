

create table Reviewer (
rID integer,
name varchar(30) not null,
primary key (rID));


create table Movie (
mID integer,
title varchar (30) not null,
year date,
director varchar (30),
primary key (mID));

create table Rating (
rID integer,
mID integer,
stars integer,
ratingdate date,
primary key (rID, mID, ratingdate),
constraint reviewerID foreign key (rID) references Reviewer(rID),
constraint movieID foreign key (mID) references Movie(mID)
);

alter table Movie 
add constraint doublon unique (title, year);

select name
from reviewer
where rID=205;

select * from movie;

select title from movie order by title;

select title from movie where (director='Steven Spielberg');

select title from movie where director is null;

create view v_detail_evaluations as
select ratingDate, stars, rating.rID, name, rating.mID, title, year, director
from movie
inner join rating on movie.mID = rating.mID
inner join reviewer on reviewer.rID = rating.rID;

select * from v_detail_evaluations
order by year;

select year
from v_detail_evaluations
where stars=4 or stars=5
order by year;

select name
from v_detail_evaluations
where title='Gone with the Wind';

select name, title, stars
from v_detail_evaluations
where director=name;

select name, title, stars, ratingdate
from movie
inner join rating on movie.mID = rating.mID
inner join reviewer on reviewer.rID = rating.rID
order by stars;

select title 
from movie
where mID not IN (select mID from v_detail_evaluations
			where name = 'Chris Jackson');
			
select * from v_detail_evaluations order by name;

select  vde1.name, vde2.title
from v_detail_evaluations vde1
join v_detail_evaluations vde2
on vde1.rid = vde2.rid and vde1.mID = vde2.mID
where (vde1.ratingdate > vde2.ratingdate
and vde1.stars > vde2.stars);

select name, title, stars
from v_detail_evaluations
where stars=(select min(stars) from rating);

select title, max(stars)
from v_detail_evaluations
group by title;

select name
from v_detail_evaluations
where mID=(select count(mid)
			from 