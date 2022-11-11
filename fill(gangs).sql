insert INTO Event (title, data)  values ("War", "2015-5-07");
insert INTO Event (title, data)  values ("Rob", "2014-12-10");
insert INTO Event (title, data)  values ("Party", "2014-14-10");
insert INTO Event (title, data)  values ("Meetings", "2015-1-06");
insert INTO Event (title, data)  values ("Theft", "2014-10-10");

INSERT INTO Accounting (eventId, income, costs) VALUES (1, 153417, 245123);
INSERT INTO Accounting (eventId, income, costs) VALUES (2, 459186, 278436);
INSERT INTO Accounting (eventId, income, costs) VALUES (3, 0, 304376);
INSERT INTO Accounting (eventId, income, costs) VALUES (4, 0, 10012);
INSERT INTO Accounting (eventId, income, costs) VALUES (5, 2783569, 184563);

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

INSERT INTO Territory (title) VALUES("Mondstadt");
INSERT INTO Territory (title) VALUES("Sumeru");
INSERT INTO Territory (title) VALUES("Snowy");
INSERT INTO Territory (title) VALUES("Inazuma");

INSERT INTO Gangs (gangs_title, district) VALUES("Anteiku", 1);
INSERT INTO Gangs (gangs_title, district) VALUES("Arasaka", 2);
INSERT INTO Gangs (gangs_title, district) VALUES("Paradise", 3);
INSERT INTO Gangs (gangs_title, district) VALUES("Akatsuki", 4);
