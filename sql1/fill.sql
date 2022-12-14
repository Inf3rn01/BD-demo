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

INSERT INTO Rank(ranks) VALUES ("Student");
INSERT INTO Rank(ranks) VALUES ("Genin");
INSERT INTO Rank(ranks) VALUES ("Chunin");
INSERT INTO Rank(ranks) VALUES ("Jonin");
INSERT INTO Rank(ranks) VALUES ("Sannin");
INSERT INTO Rank(ranks) VALUES ("Anbu");
INSERT INTO Rank(ranks) VALUES ("Kage");

INSERT INTO Gang_members (name, surname, ranksID) VALUES ("Nedji","Hyuga", 2);
INSERT INTO Gang_members (name, surname, ranksID) VALUES ("Kaneki","Ken", 3);
INSERT INTO Gang_members (name, surname, ranksID) VALUES ("Touka","Kirishima", 4);
INSERT INTO Gang_members (name, surname, ranksID) VALUES ("Orochimaru","Yamata", 5);
INSERT INTO Gang_members (name, surname, ranksID) VALUES ("Levi","Akerman", 6);
INSERT INTO Gang_members (name, surname, ranksID) VALUES ("Juuzou","Suzuya", 1);
INSERT INTO Gang_members (name, surname, ranksID) VALUES ("Eren","Yeager", 3);
INSERT INTO Gang_members (name, surname, ranksID) VALUES ("Jiraya","Ogata", 5);
INSERT INTO Gang_members (name, surname, ranksID) VALUES ("Itachi","Uchiha", 6);
INSERT INTO Gang_members (name, surname, ranksID) VALUES ("Naruto","Uzumaki", 7);

INSERT INTO Territory (title) VALUES("Mondstadt");
INSERT INTO Territory (title) VALUES("Sumeru");
INSERT INTO Territory (title) VALUES("Snowy");
INSERT INTO Territory (title) VALUES("Inazuma");

INSERT INTO Gangs (gangs_title, district) VALUES("Anteiku", 1);
INSERT INTO Gangs (gangs_title, district) VALUES("Arasaka", 2);
INSERT INTO Gangs (gangs_title, district) VALUES("Paradise", 3);
INSERT INTO Gangs (gangs_title, district) VALUES("Akatsuki", 4);

INSERT INTO users (login, password,ranksID) VALUES("log1", "pas1",2);
INSERT INTO users (login, password,ranksID) VALUES("log2", "pas2",3);
INSERT INTO users (login, password,ranksID) VALUES("log3", "pas3",4);
INSERT INTO users (login, password,ranksID) VALUES("log4", "pas4",5);
INSERT INTO users (login, password,ranksID) VALUES("log5", "pas5",6);
INSERT INTO users (login, password,ranksID) VALUES("log6", "pas6",1);
INSERT INTO users (login, password,ranksID) VALUES("log7", "pas7",3);
INSERT INTO users (login, password,ranksID) VALUES("log8", "pas8",5);
INSERT INTO users (login, password,ranksID) VALUES("log9", "pas9",6);
INSERT INTO users (login, password,ranksID) VALUES("log10", "pas10",7);