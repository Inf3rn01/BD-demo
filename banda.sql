drop table if exists Event;
drop table if exists Gang_members;
drop table if exists Territory;
drop table if exists Accounting;
drop table if exists Share;
drop table if exists Gangs;

CREATE TABLE Event(
  id_events serial PRIMARY KEY,
  title varchar (256) not null,
  data date
);
insert INTO Event (title, data)  values ("War", "2015-5-07");
insert INTO Event (title, data)  values ("Rob", "2014-12-10");
insert INTO Event (title, data)  values ("Party", "2014-14-10");
insert INTO Event (title, data)  values ("Meetings", "2015-1-06");
insert INTO Event (title, data)  values ("Theft", "2014-10-10");

CREATE TABLE Accounting(
  id_accounting serial PRIMARY KEY,
  eventId integer NOT NULL,
  income integer NOT NULL,
  costs integer NOT NULL,
  FOREIGN KEY (eventId) references Event(id_events)
);
INSERT INTO Accounting (eventId, income, costs) VALUES (1, 153417, 245123);
INSERT INTO Accounting (eventId, income, costs) VALUES (2, 459186, 278436);
INSERT INTO Accounting (eventId, income, costs) VALUES (3, 0, 304376);
INSERT INTO Accounting (eventId, income, costs) VALUES (4, 0, 10012);
INSERT INTO Accounting (eventId, income, costs) VALUES (5, 2783569, 184563);

CREATE TABLE Share(
  id_share serial PRIMARY KEY,
  accountingId integer NOT NULL,
  memberId integer NOT NULL,
  part integer,
  FOREIGN KEY (accountingId) references Accounting(id_accounting),
  FOREIGN KEY (memberId) references Gang_members(id_member)
);
INSERT INTO Share (accountingId, memberId, part) VALUES (1, 10, 30683);
INSERT INTO Share (accountingId, memberId, part) VALUES (1, 5, 30683);
INSERT INTO Share (accountingId, memberId, part) VALUES (2, 3, 30683);
INSERT INTO Share (accountingId, memberId, part) VALUES (2, 2, 30683);
INSERT INTO Share (accountingId, memberId, part) VALUES (3, 1, 30683);
INSERT INTO Share (accountingId, memberId, part) VALUES (3, 6, 114794);
INSERT INTO Share (accountingId, memberId, part) VALUES (4, 4, 114794);
INSERT INTO Share (accountingId, memberId, part) VALUES (4, 8, 114794);
INSERT INTO Share (accountingId, memberId, part) VALUES (5, 9, 114794);
INSERT INTO Share (accountingId, memberId, part) VALUES (5, 7, 695892);

CREATE TABLE Gang_members(
  id_member serial PRIMARY KEY,
  name varchar(256) not null,
  surname varchar(256) not null,
  rank varchar (256) NOT NULL
);
INSERT INTO Gang_members (name, surname, rank) VALUES ("Nedji","Hyuga", "Genin");
INSERT INTO Gang_members (name, surname, rank) VALUES ("Kaneki","Ken","Chunin");
INSERT INTO Gang_members (name, surname, rank) VALUES ("Touka","Kirishima","Jonin");
INSERT INTO Gang_members (name, surname, rank) VALUES ("Orochimaru","Yamata","Sannin");
INSERT INTO Gang_members (name, surname, rank) VALUES ("Levi","Akerman","Anbu");
INSERT INTO Gang_members (name, surname, rank) VALUES ("Juuzou","Suzuya","student");
INSERT INTO Gang_members (name, surname, rank) VALUES ("Eren","Yeager","Chunin");
INSERT INTO Gang_members (name, surname, rank) VALUES ("Jiraya","Ogata","Sannin");
INSERT INTO Gang_members (name, surname, rank) VALUES ("Itachi","Uchiha","Anbu");
INSERT INTO Gang_members (name, surname, rank) VALUES ("Naruto","Uzumaki","Kage");

CREATE TABLE Territory(
  id_district serial PRIMARY KEY,
  title varchar (256) not null
);
INSERT INTO Territory (title) VALUES("Mondstadt");
INSERT INTO Territory (title) VALUES("Sumeru");
INSERT INTO Territory (title) VALUES("Snowy");
INSERT INTO Territory (title) VALUES("Inazuma");

CREATE TABLE Gangs(
  id_gangs_name serial PRIMARY KEY,
  gangs_title varchar (256) not null,
  district integer NOT NULL,
  FOREIGN KEY (district) references Territory(id_district)
);
INSERT INTO Gangs (gangs_title, district) VALUES("Anteiku", 1);
INSERT INTO Gangs (gangs_title, district) VALUES("Arasaka", 2);
INSERT INTO Gangs (gangs_title, district) VALUES("Paradise", 3);
INSERT INTO Gangs (gangs_title, district) VALUES("Akatsuki", 4);