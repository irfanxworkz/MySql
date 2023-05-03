CREATE TABLE tailorDetails(
srNo int not null,
nameOfTailor varchar(30),
primary key(srNo)
);

INSERT INTO tailordetails VALUES(1,'Attu');
INSERT INTO tailordetails VALUES(2,'Mukesh');
INSERT INTO tailordetails VALUES(3,'Jay');
INSERT INTO tailordetails VALUES(4,'Ramakanth');
INSERT INTO tailordetails VALUES(5,'Surya');
INSERT INTO tailordetails VALUES(6,null);
INSERT INTO tailordetails VALUES(7,null);

SELECT * FROM tailordetails;

CREATE TABLE customerDetails(
srNo_pk int not null,
customerName varchar(50),
dressType varchar(30),
customerCode_fk int,
primary key(srNo_pk),
foreign key(customerCode_fk) references tailordetails(srNo)
);

INSERT INTO customerDetails VALUES(1,'Katik','Trousers',1);
INSERT INTO customerDetails VALUES(2,'Rahul','Suit',2);
INSERT INTO customerDetails VALUES(3,'Abhishek','Shirt',3);
INSERT INTO customerDetails VALUES(4,'Vikas','Pant',4);
INSERT INTO customerDetails VALUES(5,'Dheeraj','Shervani',5);
INSERT INTO customerdetails(srNo_pk,customerName) VALUES(6,'Karan');
INSERT INTO customerdetails(srNo_pk,customerName) VALUES(7,'Nadeem');

SELECT * FROM customerdetails;

SELECT * FROM customerdetails INNER JOIN tailordetails on customerCode_fk=srNo;

SELECT * FROM customerdetails LEFT JOIN tailordetails on customerCode_fk=srNo;

SELECT * FROM customerdetails LEFT JOIN tailordetails on customerCode_fk=srNo where srNo is NULL;

SELECT * FROM customerdetails RIGHT JOIN tailordetails on customerCode_fk=srNo;

SELECT * FROM customerdetails RIGHT JOIN tailordetails on customerCode_fk=srNo WHERE srNo is NULL;

SELECT * FROM customerdetails FULL JOIN tailordetails on customerCode_fk=srNo;

SELECT * FROM customerdetails INNER JOIN tailordetails on customerCode_fk=srNo WHERE srNo is NULL;