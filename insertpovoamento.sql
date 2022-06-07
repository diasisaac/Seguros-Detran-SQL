INSERT INTO `acidente` VALUES
(1,'2009-01-01','Rua Nova'),
(2,'2009-03-25','Rua Bela Vista'),
(3,'2012-07-13','Rua Duque de Caxias'),
(4,'2010-12-31','Avenida Norte'),
(5,'2011-01-01','Avenida Norte'),
(6,'2011-02-08','Avenida Norte'),
(7,'2016-05-13','Rua da Aurora'),
(8,'2013-06-23','Avenida Sul'),
(9,'2009-11-03','Avenida Boa Viagem'),
(10,'2020-03-14','Avenida Guararapes'),
(11,'2017-04-24','Rua Castro Alves'),
(12,'2015-05-25','Avenida Norte'),
(13,'2014-08-11','Rua da Hora'),
(14,'2019-10-03','Avenida Norte'),
(15,'2019-10-25','Avenida das Americas'),
(16,'2017-07-17','Avenida Recife'),
(17,'2016-09-13','Rua da Aurora'),
(18,'2011-06-29','Rua Amazonas'),
(19,'2010-12-18','Rua Nova'),
(20,'2019-03-16','Avenida Boa Viagem'),
(21,'2019-02-21','Avenida Duarte Coelho'),
(22,'2019-06-28','Rua Imperial'),
(23,'2019-09-06','Rua Dom Bosco'),
(24,'2019-05-29','Rua do Pombal'),
(25,'2019-12-18','Rua Isaac Buril');



INSERT INTO `carro` VALUES
(1234,'Chevrolet Onix',2012),
(1587,'Honda HR-V',2015),
(2422,'Volkswagen Up!',2014),
(3569,'Fiat Toro',2020),
(4002,'BMW I3',2019),
(5023,'Hyundai HB20',2015),
(6985,'Toyota Hilux',2021),
(7489,'Jeep Compass',2019),
(7548,'Toyota Corolla',2018),
(8042,'Ranger Rover',2011),
(8571,'Ford Focus',2013),
(9284,'Renault Kwid',2019);


INSERT INTO `participou` VALUES
(1,1234,1,500),
(2,9284,1,500),
(3,8571,1,500),
(1,7489,2,800),
(20,7489,2,100),
(20,4002,3,100),
(20,6985,9,100);


INSERT INTO `pessoa` VALUES 
(1,'John Smith','Rua Bela Vista'),
(2,'Lucas Romeiro','Rua Amazonas'),
(3,'Isaac Silva','Rua Duque De Caxias'),
(4,'Alan Turing','Rua Castro Alves '),
(5,'Dimas Cassimiro','Rua Rui Barbosa'),
(6,'Yukihiro Matsumoto','Avenida Guararapes'),
(7,'Priscilla Kelly','Avenida Boa Viagem'),
(8,'Leonhard Euler','Avenida Sul'),
(9,'Edsger Dijkstra','Rua Rui Barbosa'),
(10,'Clarisse Sieckenius','Rua Nova'),
(11,'Linus Torvalds','Rua da Aurora'),
(12,'Elliot Alderson','Avenida Norte'),
(13,'Richard Stallman','Rua Duque De Caxias'),
(14,'Donald Knuth','Avenida Boa Viagem'),
(15,'Niklaus Wirth','Avenida Sul'),
(16,'Ken Thompson','Rua Bela Vista'),
(17,'Von Neumann','Rua Nova'),
(18,'Ada Lovelace','Rua Rui Barbosa'),
(19,'Katherine Johnson','Avenida Norte'),(20,'Grace Hopper','Avenida Norte');



INSERT INTO `possui` VALUES 
('1',1234),('2',7489),
('3',4002),('4',7548),
('5',7489),('7',4002),
('9',6985),('1',8571),
('1',9284);



