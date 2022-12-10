drop table if exists Event;
drop table if exists Gang_members;
drop table if exists Territory;
drop table if exists Accounting;
drop table if exists Share;
drop table if exists Gangs;
drop table if exists Rank;

CREATE TABLE Event(
  id PRIMARY KEY,
  title VARCHAR (256) NOT NULL,
  data DATE
);
insert INTO Event (title, data)  VALUES ("War", "2015-5-07");
insert INTO Event (title, data)  VALUES ("Rob", "2014-12-10");
insert INTO Event (title, data)  VALUES ("Party", "2014-14-10");
insert INTO Event (title, data)  VALUES ("Meetings", "2015-1-06");
insert INTO Event (title, data)  VALUES ("Theft", "2014-10-10");

CREATE TABLE Accounting(
  id serial PRIMARY KEY,
  eventId INTEGER NOT NULL,
  income INTEGER NOT NULL,
  costs INTEGER NOT NULL,
  FOREIGN KEY (eventId) REFERENCES Event(id) ON DELETE CASCADE
);
INSERT INTO Accounting (eventId, income, costs) VALUES (1, 153417, 245123);
INSERT INTO Accounting (eventId, income, costs) VALUES (2, 459186, 278436);
INSERT INTO Accounting (eventId, income, costs) VALUES (3, 0, 304376);
INSERT INTO Accounting (eventId, income, costs) VALUES (4, 0, 10012);
INSERT INTO Accounting (eventId, income, costs) VALUES (5, 2783569, 184563);

CREATE TABLE Share(
  id PRIMARY KEY,
  accountingId  INTEGER NOT NULL,
  memberId INTEGER NOT NULL,
  part INTEGER,
  FOREIGN KEY (accountingId) REFERENCES Accounting(id) on DELETE CASCADE,
  FOREIGN KEY (memberId) REFERENCES Gang_members(id) on DELETE CASCADE
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

CREATE TABLE Rank(
id PRIMARY KEY,
rank VARCHAR(256) NOT NULL
);
INSERT INTO Rank(rank) VALUES ("Student");
INSERT INTO Rank(rank) VALUES ("Genin");
INSERT INTO Rank(rank) VALUES ("Chunin");
INSERT INTO Rank(rank) VALUES ("Jonin");
INSERT INTO Rank(rank) VALUES ("Sannin");
INSERT INTO Rank(rank) VALUES ("Anbu");
INSERT INTO Rank(rank) VALUES ("Kage");

CREATE TABLE Gang_members(
  id PRIMARY KEY,
  name VARCHAR(256) NOT NULL,
  surname VARCHAR(256) NOT NULL,
  rank_id INTEGER NOT NULL,
  FOREIGN KEY (rank_id) REFERENCES Rank(id) ON DELETE CASCADE
);
INSERT INTO Gang_members (name, surname, rank_id) VALUES ("Nedji","Hyuga", 2);
INSERT INTO Gang_members (name, surname, rank_id) VALUES ("Kaneki","Ken", 3);
INSERT INTO Gang_members (name, surname, rank_id) VALUES ("Touka","Kirishima", 4);
INSERT INTO Gang_members (name, surname, rank_id) VALUES ("Orochimaru","Yamata", 5);
INSERT INTO Gang_members (name, surname, rank_id) VALUES ("Levi","Akerman", 6);
INSERT INTO Gang_members (name, surname, rank_id) VALUES ("Juuzou","Suzuya", 1);
INSERT INTO Gang_members (name, surname, rank_id) VALUES ("Eren","Yeager", 3);
INSERT INTO Gang_members (name, surname, rank_id) VALUES ("Jiraya","Ogata", 5);
INSERT INTO Gang_members (name, surname, rank_id) VALUES ("Itachi","Uchiha", 6);
INSERT INTO Gang_members (name, surname, rank_id) VALUES ("Naruto","Uzumaki", 7);

CREATE TABLE Territory(
  id PRIMARY KEY,
  title VARCHAR (256) NOT NULL
);
INSERT INTO Territory (title) VALUES("Mondstadt");
INSERT INTO Territory (title) VALUES("Sumeru");
INSERT INTO Territory (title) VALUES("Snowy");
INSERT INTO Territory (title) VALUES("Inazuma");

CREATE TABLE Gangs(
  id PRIMARY KEY,
  gangs_title VARCHAR (256) NOT NULL,
  district INTEGER NOT NULL,
  FOREIGN KEY (district) REFERENCES Territory(id) ON UPDATE CASCADE
);
INSERT INTO Gangs (gangs_title, district) VALUES("Anteiku", 1);
INSERT INTO Gangs (gangs_title, district) VALUES("Arasaka", 2);
INSERT INTO Gangs (gangs_title, district) VALUES("Paradise", 3);
INSERT INTO Gangs (gangs_title, district) VALUES("Akatsuki", 4);