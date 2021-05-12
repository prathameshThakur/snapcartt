BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "cart" (
	"image"	text,
	"team"	text,
	"qty"	integer,
	"price"	integer,
	"subtotal"	integer,
	"id"	INTEGER,
	"uid"	text
);
CREATE TABLE IF NOT EXISTS "users" (
	"id"	SERIAL NOT NULL,
	"username"	text NOT NULL,
	"password"	text NOT NULL,
	"fname"	text,
	"lname"	text,
	"email"	text,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "shirts" (
	"id"	SERIAL NOT NULL,
	"team"	text,
	"image"	text,
	"price"	integer,
	"onsale"	integer,
	"onsaleprice"  integer,
	"kind"	text,
	"continent"	text,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "purchases" (
	"uid"	text,
	"team"	text,
	"image"	text,
	"quantity"	integer,
	"id"	INTEGER,
	"date"	date NOT NULL DEFAULT CURRENT_DATE
);
INSERT INTO "users" ("id","username","password","fname","lname","email") VALUES (10,'liomessi10','barcelona','Lio','Messi','lmessi@fcbarca.com'),
 (11,'thakur','12345678','P','T','prathamesh272000@gmail.com');
INSERT INTO "shirts" ("id","team","image","price","onsale","onsaleprice","kind","continent") VALUES (1,'Argentina','argentina.png',89.0,0,89.0,'national','americas'),
 (2,'Brazil','brasil.jpg',89.0,0,89.0,'national','americas'),
 (3,'Peru','peru.jpg',79.0,1,69.0,'national','americas'),
 (4,'France','france.jpg',89.0,0,89.0,'national','europe'),
 (5,'Mexico','mexico.jpg',79.0,0,79.0,'national','americas'),
 (6,'Spain','spain.jpg',79.0,0,79.0,'national','europe'),
 (7,'Senegal','senegal.jpg',79.0,0,79.0,'national','africa'),
 (8,'Belgium','belgium.png',89.0,1,79.0,'national','europe'),
 (9,'Colombia','colombia.jpg',69.0,0,69.0,'national','americas'),
 (10,'Costa Rica','costarica.jpg',69.0,0,69.0,'national','americas'),
 (11,'Croatia','croacia.jpg',79.0,1,69.0,'national','europe'),
 (12,'Egypt','egypt.jpg',79.0,1,69.0,'national','africa'),
 (13,'England','england.jpg',79.0,0,79.0,'national','europe'),
 (14,'Germany','germany.png',79.0,1,69.0,'national','europe'),
 (15,'Iceland','iceland.jpg',79.0,0,79.0,'national','europe'),
 (16,'Sweden','sweden.jpg',79.0,0,79.0,'national','europe'),
 (17,'Uruguay','uruguay.png',79.0,1,69.0,'national','americas'),
 (18,'River Plate','rp.png',79.0,0,79.0,'club','americas'),
 (19,'Boca Juniors','bj.jpg',69.0,1,9.99,'club','americas'),
 (20,'FC Barcelona','fcb.jpg',89.0,0,89.0,'club','europe'),
 (21,'Real Madrid','rm.png',89.0,0,89.0,'club','europe'),
 (22,'Juventus','juv.jpg',79.0,0,79.0,'club','europe'),
 (23,'Milan','mil.png',79.0,1,59.0,'club','europe'),
 (24,'Manchester City','mc.jpg',79.0,0,79.0,'club','europe'),
 (25,'Manchester United','mu.png',79.0,1,69.0,'club','europe'),
 (26,'Flamengo','fla.png',59.0,0,59.0,'club','americas'),
 (27,'Corinthians','cor.png',69.0,0,69.0,'club','americas');
INSERT INTO "purchases" ("uid","team","image","quantity","id","date") VALUES ('7','Juventus','juv.jpg',1,22,'2018-12-13'),
 ('8','Argentina','argentina.png',2,1,'2018-12-13'),
 ('8','FC Barcelona','fcb.jpg',1,20,'2018-12-13'),
 ('8','FC Barcelona','fcb.jpg',1,20,'2018-12-13'),
 ('1','Argentina','argentina.png',1,1,'2018-12-13'),
 ('8','Colombia','colombia.jpg',2,9,'2018-12-13'),
 ('8','FC Barcelona','fcb.jpg',1,20,'2018-12-13'),
 ('8','Belgium','belgium.png',1,8,'2018-12-13'),
 ('8','Colombia','colombia.jpg',1,9,'2018-12-13'),
 ('10','Argentina','argentina.png',1,1,'2018-12-25'),
 ('10','FC Barcelona','fcb.jpg',1,20,'2018-12-25'),
 ('11','Boca Juniors','bj.jpg',2,19,'2021-05-10'),
 ('11','Argentina','argentina.png',4,1,'2021-05-10'),
 ('11','Brazil','brasil.jpg',1,2,'2021-05-10'),
 ('11','Boca Juniors','bj.jpg',1,19,'2021-05-10');
COMMIT;
