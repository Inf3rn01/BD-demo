INSERT INTO Event (title, data)  VALUES ("War", "2015-5-07");
INSERT INTO Event (title, data)  VALUES ("Rob", "2014-12-10");
INSERT INTO Event (title, data)  VALUES ("Party", "2014-14-10");
INSERT INTO Event (title, data)  VALUES ("Meetings", "2015-1-06");
INSERT INTO Event (title, data)  VALUES ("Theft", "2014-10-10");

INSERT INTO Accounting (eventID, income, costs) VALUES (1, 153417, 245123);
INSERT INTO Accounting (eventID, income, costs) VALUES (2, 459186, 278436);
INSERT INTO Accounting (eventID, income, costs) VALUES (3, 0, 304376);
INSERT INTO Accounting (eventID, income, costs) VALUES (4, 0, 10012);
INSERT INTO Accounting (eventID, income, costs) VALUES (5, 2783569, 184563);

INSERT INTO Share (accountingID, memberID, part) VALUES (1, 10, 30683);
INSERT INTO Share (accountingID, memberID, part) VALUES (1, 5, 30683);
INSERT INTO Share (accountingID, memberID, part) VALUES (2, 3, 30683);
INSERT INTO Share (accountingID, memberID, part) VALUES (2, 2, 30683);
INSERT INTO Share (accountingID, memberID, part) VALUES (3, 1, 30683);
INSERT INTO Share (accountingID, memberID, part) VALUES (3, 6, 114794);
INSERT INTO Share (accountingID, memberID, part) VALUES (4, 4, 114794);
INSERT INTO Share (accountingID, memberID, part) VALUES (4, 8, 114794);
INSERT INTO Share (accountingID, memberID, part) VALUES (5, 9, 114794);
INSERT INTO Share (accountingID, memberID, part) VALUES (5, 7, 695892);

INSERT INTO Rank(rank) VALUES ("Student");
INSERT INTO Rank(rank) VALUES ("Genin");
INSERT INTO Rank(rank) VALUES ("Chunin");
INSERT INTO Rank(rank) VALUES ("Jonin");
INSERT INTO Rank(rank) VALUES ("Sannin");
INSERT INTO Rank(rank) VALUES ("Anbu");
INSERT INTO Rank(rank) VALUES ("Kage");

INSERT INTO Gang_members (name, surname, rankID) VALUES ("Nedji","Hyuga", 2);
INSERT INTO Gang_members (name, surname, rankID) VALUES ("Kaneki","Ken", 3);
INSERT INTO Gang_members (name, surname, rankID) VALUES ("Touka","Kirishima", 4);
INSERT INTO Gang_members (name, surname, rankID) VALUES ("Orochimaru","Yamata", 5);
INSERT INTO Gang_members (name, surname, rankID) VALUES ("Levi","Akerman", 6);
INSERT INTO Gang_members (name, surname, rankID) VALUES ("Juuzou","Suzuya", 1);
INSERT INTO Gang_members (name, surname, rankID) VALUES ("Eren","Yeager", 3);
INSERT INTO Gang_members (name, surname, rankID) VALUES ("Jiraya","Ogata", 5);
INSERT INTO Gang_members (name, surname, rankID) VALUES ("Itachi","Uchiha", 6);
INSERT INTO Gang_members (name, surname, rankID) VALUES ("Naruto","Uzumaki", 7);

INSERT INTO Territory (title) VALUES("Mondstadt");
INSERT INTO Territory (title) VALUES("Sumeru");
INSERT INTO Territory (title) VALUES("Snowy");
INSERT INTO Territory (title) VALUES("Inazuma");

INSERT INTO Gangs (gangs_title, district) VALUES("Anteiku", 1);
INSERT INTO Gangs (gangs_title, district) VALUES("Arasaka", 2);
INSERT INTO Gangs (gangs_title, district) VALUES("Paradise", 3);
INSERT INTO Gangs (gangs_title, district) VALUES("Akatsuki", 4);

INSERT INTO users (login, password) VALUES("log", "pas");