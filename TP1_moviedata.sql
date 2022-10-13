
insert into movies(id_movie,title_movie,year_movie,director_movie) values
	(101, 'Gone with the Wind', to_date('1939','yyyy'), 'Victor Fleming'),
	(102, 'Star Wars', to_date('1977','yyyy'), 'George Lucas'),
	(103, 'The Sound of Music', to_date('1965','yyyy'), 'Robert Wise'),
	(104, 'E.T.', to_date('1982','yyyy'), 'Steven Spielberg'),
	(105, 'Titanic', to_date('1997','yyyy'), 'James Cameron'),
	(106, 'Snow White', to_date('1937','yyyy'), null),
	(107, 'Avatar', to_date('2009','yyyy'), 'James Cameron'),
	(108, 'Raiders of the Lost Ark', to_date('1981','yyyy'), 'Steven Spielberg')
;


insert into reviewers(id_reviewer,name_reviewer) values
    (201, 'Sarah Martinez'),
    (202, 'Daniel Lewis'),
    (203, 'Brittany Harris'),
    (204, 'Mike Anderson'),
    (205, 'Chris Jackson'),
    (206, 'Elizabeth Thomas'),
    (207, 'James Cameron'),
    (208, 'Ashley White')
   ;
  
  
INSERT INTO ratings(id_reviewer,id_movie,stars_rating,date_rating) values
    (201, 101, 2, to_date('22-01-2011', 'dd-mm-yyyy')),
    (201, 101, 4, to_date('27-01-2011', 'dd-mm-yyyy')),
    (202, 106, 4, to_date('04-02-2021', 'dd-mm-yyyy')),
    (203, 103, 2, to_date('20-01-2011', 'dd-mm-yyyy')),
    (203, 108, 4, to_date('12-01-2011', 'dd-mm-yyyy')),
    (203, 108, 2, to_date('30-01-2011', 'dd-mm-yyyy')),
    (204, 101, 3, to_date('09-01-2011', 'dd-mm-yyyy')),
    (205, 103, 3, to_date('27-01-2011', 'dd-mm-yyyy')),
    (205, 104, 2, to_date('22-01-2011', 'dd-mm-yyyy')),
    (205, 108, 4, to_date('27-01-2012', 'dd-mm-yyyy')),
    (206, 107, 3, to_date('15-01-2011', 'dd-mm-yyyy')),
    (206, 106, 5, to_date('19-01-2011', 'dd-mm-yyyy')),
    (207, 107, 5, to_date('20-01-2011', 'dd-mm-yyyy')),
    (208, 104, 3, to_date('02-01-2011', 'dd-mm-yyyy')),
    (203, 102, 3, to_date('27-01-2011', 'dd-mm-yyyy')),
    (203, 101, 2, to_date('27-02-2011', 'dd-mm-yyyy')),
    (203, 104, 2, to_date('27-03-2011', 'dd-mm-yyyy')),
    (203, 105, 2, to_date('27-04-2011', 'dd-mm-yyyy')),
    (203, 106, 4, to_date('27-05-2011', 'dd-mm-yyyy')),
    (203, 107, 5, to_date('27-06-2011', 'dd-mm-yyyy'))
   ;

