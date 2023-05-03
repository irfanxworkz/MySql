create database movie;
use movie;
drop database shop;

CREATE TABLE movieDetails(
srNo int not null unique,
movieName varchar(50),
primary key(srNo)
);

INSERT INTO movieDetails VALUES(1,'kgf'),
                               (2,'kgf2'),
                               (3,'kurukhetra'),
							   (4,null),
							   (5,'barjari'),
                               (6,null),
							   (7,'ramachari'),
                               (8,'robert');

SELECT * FROM movieDetails;

CREATE TABLE movieUpdates(
srNo_pk int not null unique,
movieLanguage varchar(30),
movieBudget varchar(30),
movieNo_fk int,
primary key(srNo_pk),
foreign key(movieNo_fk) references movieDetails(srNo)
);

INSERT INTO movieUpdates VALUES(1,'hindi','100cr',1);
INSERT INTO movieUpdates VALUES(2,'kannada','25cr',2);
INSERT INTO movieUpdates VALUES(3,'tamil','39cr',3);
INSERT INTO movieUpdates VALUES(4,'kannada','80cr',4);
INSERT INTO movieUpdates VALUES(5,'hindi','50cr',5);
INSERT INTO movieUpdates(srNo_pk,movieLanguage) VALUES(6,'kannada');
INSERT INTO movieUpdates(srNo_pk,movieLanguage) VALUES(7,'hindi');
INSERT INTO movieUpdates(srNo_pk,movieLanguage) VALUES(8,'english');

SELECT * FROM movieUpdates;

SELECT * FROM movieUpdates INNER JOIN movieDetails on movieNo_fk=srNo;

SELECT * FROM movieUpdates LEFT JOIN movieDetails on movieNo_fk=srNo;

SELECT * FROM movieUpdates LEFT JOIN movieDetails on movieNo_fk=srNo where srNo is NULL;

SELECT * FROM movieUpdates RIGHT JOIN movieDetails on movieNo_fk=srNo;

SELECT * FROM movieUpdates RIGHT JOIN movieDetails on movieNo_fk=srNo WHERE srNo is NULL;

SELECT * FROM movieUpdates FULL JOIN movieDetails on movieNo_fk=srNo;

SELECT * FROM movieUpdates INNER JOIN movieDetails on movieNo_fk=srNo WHERE srNo is NULL;