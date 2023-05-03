CREATE TABLE serviceStation(
srNo int not null,
serviceType varchar(45),
primary key(srNo)
);

INSERT INTO serviceStation VALUES(1,'oilChange');
INSERT INTO serviceStation VALUES(2,'stitching');
INSERT INTO serviceStation VALUES(3,'dressing');
INSERT INTO serviceStation VALUES(4,'makeover');
INSERT INTO serviceStation VALUES(5,'driving');
INSERT INTO serviceStation VALUES(6,'cooking');
INSERT INTO serviceStation VALUES(7,'serve');
INSERT INTO serviceStation VALUES(8,'billing');
INSERT INTO serviceStation VALUES(9,'receptionist');
INSERT INTO serviceStation VALUES(10,'suggestor');

SELECT * FROM serviceStation;

CREATE TABLE customerRecords(
srNo_pk int not null,
carBrand varchar(50),
customerName varchar(40),
customerNumber int,
carIssue varchar(23),
receivedDate date,
returnedDate date,
maintananceDays int,
mechanicName varchar(50),
mechanicPhone long,
cost double,
serviceType_fk int,
primary key(srNo_pk),
foreign key(serviceType_fk) references serviceStation(srNo)
);

SELECT * FROM customerRecords;

INSERT INTO customerRecords VALUES(1,'KIA','Karan',200,'Tyre puncture','2006-04-09','2006-05-07',26,'Sodi',9697765544,890.80,1);
INSERT INTO customerRecords VALUES(2,'Ford','Abhishek',500,'Door damage','2006-04-09','2006-05-07',20,'Shaanu',6798865233,278.90,2);
INSERT INTO customerRecords VALUES(3,'Eritica','Arpita',690,'Scratch','2006-04-09','2006-05-07',26,'Tappu',6789543267,834.50,3);
INSERT INTO customerRecords VALUES(4,'BMW','Darshan',290,'Tyre puncture','2006-04-09','2006-05-07',26,'Sodi',367267823,1000.56,4);
INSERT INTO customerRecords VALUES(5,'Renault','Sagar',678,'Alteration','2006-04-09','2006-05-07',35,'Gogi',678925673,1500.89,5);
INSERT INTO customerRecords VALUES(6,'Tata Motors','Bindu',389,'Service','2006-04-09','2006-05-07',30,'Abhi',9697765544,28938,6);
INSERT INTO customerRecords VALUES(7,'Mahindra','Vikas',167,'Alteration','2006-04-09','2006-05-07',67,'Wilson',9697765544,18926,1);
INSERT INTO customerRecords VALUES(8,'Maruti','Vimal',900,'Scratch','2006-04-09','2006-05-07',70,'Jacky',9697765544,789,2);
INSERT INTO customerRecords VALUES(9,'SuzukiForce Motors','Dattatraya',1890,'Alteration','2006-04-09','2006-05-07',35,'Irfan',9697765544,670,7);
INSERT INTO customerRecords VALUES(10,'ICML','MarutiRao',567,'Tyre puncture','2006-05-09','2006-06-07',12,'Dinakar',9697765544,1002,8);
INSERT INTO customerRecords VALUES(11,'Maruti','Anusuya',234,'Alteration','2006-05-09','2006-06-07',45,'Darshan',9697765544,1920,9);
INSERT INTO customerRecords VALUES(12,'Premier','Prabhakar',567,'Scratch','2006-05-09','2006-06-07',27,'Sagar',9697765544,2001,10);
INSERT INTO customerRecords VALUES(13,'Reva','Jayalaxmi',789,'Alteration','2006-05-09','2006-06-07',34,'Pintu',9697765544,1728,1);
INSERT INTO customerRecords VALUES(14,'Sipani Motors','Annapoorna',935,'Tyre puncture','2006-05-09','2006-06-07',67,'Ajay',9697765544,178,2);
INSERT INTO customerRecords VALUES(15,'Standard','Anitha',490,'Alteration','2006-05-09','2006-06-07',30,'Amitabh',9697765544,1289,4);
INSERT INTO customerRecords VALUES(16,'Esemka','Shubhangi',690,'Tyre puncture','2006-05-09','2006-06-07',56,'Jam',9697765544,1027,5);
INSERT INTO customerRecords VALUES(17,'Timor','Shobha',1000,'Alteration','2006-05-09','2006-06-07',23,'Sam',9697765544,1021,3);
INSERT INTO customerRecords VALUES(18,'Plasan','Vittal',5678,'Tyre puncture','2006-05-09','2006-06-07',70,'Harry',9697765544,12898,8);
INSERT INTO customerRecords VALUES(19,'Kaiser','Suresh',2357,'Alteration','2006-05-09','2006-06-07',121,'Kiran',9697765544,8912,9);
INSERT INTO customerRecords VALUES(20,'Abarth','Vikram',7889,'Scratch','2006-06-09','2006-07-07',56,'Ashok',9697765544,1782,10);
INSERT INTO customerRecords VALUES(21,'Casalina','Praveen',783,'Tyre puncture','2006-06-09','2006-07-07',93,'Prateek',9697765544,128983,4);
INSERT INTO customerRecords VALUES(22,'Cizeta','Parveen',678,'Scratch','2006-06-09','2006-07-07',150,'Rakesh',9697765544,2638,6);
INSERT INTO customerRecords VALUES(23,'DR','Likhitha',925,'Tyre puncture','2006-06-09','2006-07-07',50,'Tirumala',9697765544,890.27283,7);
INSERT INTO customerRecords VALUES(24,'Giannini','Ramya',169,'Alteration','2006-06-09','2006-07-07',36,'Shri',9697765544,237823,1);
INSERT INTO customerRecords VALUES(25,'Ferrari','Abhilasha',105,'Tyre puncture','2006-06-09','2006-07-07',27,'Annesh',9697765544,7827,2);
INSERT INTO customerRecords VALUES(26,'Grecav','Jamuna',200,'Scratch','2006-06-09','2006-07-07',20,'Ganesh',9697765544,3772,4);
INSERT INTO customerRecords VALUES(27,'Pagani','Swathi',3967,'Alteration','2006-06-09','2006-07-07',21,'Gajanan',9697765544,1892,6);
INSERT INTO customerRecords VALUES(28,'RUF','Suchitra',671,'Tyre puncture','2006-06-09','2006-07-07',52,'Sangmesh',9697765544,12899,9);
INSERT INTO customerRecords VALUES(29,'ASA','Keerthana',502,'Scratch','2006-06-09','2006-07-07',71,'Vinayak',9697765544,1893,2);
INSERT INTO customerRecords VALUES(30,'Covini','Kumuda',2046,'Service','2006-06-09','2006-07-07',81,'Ravi',9697765544,78262,10);

SELECT * FROM customerRecords where srNo_pk=1;

SELECT * FROM customerRecords LEFT JOIN serviceStation on serviceType_fk=srNo;

SELECT SUM(cost) FROM customerrecords where receivedDate='2006-04-09';
SELECT SUM(cost) FROM customerrecords where receivedDate='2006-05-09';
SELECT SUM(cost) FROM customerrecords where receivedDate='2006-06-09';

SELECT SUM(cost) FROM customerrecords;

SELECT AVG(cost) FROM customerrecords where receivedDate='2006-04-09';
SELECT AVG(cost) FROM customerrecords where receivedDate='2006-05-09';
SELECT AVG(cost) FROM customerrecords where receivedDate='2006-06-09';

SELECT customerName FROM customerrecords where customerName like 'A%';

SELECT MIN(cost) FROM customerrecords WHERE receivedDate='2006-04-09';
SELECT MIN(cost) FROM customerrecords WHERE receivedDate='2006-05-09';
SELECT MIN(cost) FROM customerrecords WHERE receivedDate='2006-06-09';