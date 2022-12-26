drop table if exists Event;
drop table if exists Gang_members;
drop table if exists Territory;
drop table if exists Accounting;
drop table if exists Share;
drop table if exists Gangs;
drop table if exists Rank;

CREATE TABLE Event(
  id INTEGER PRIMARY KEY,
  title VARCHAR (256) NOT NULL,
  data VARCHAR(100) NOT NULL
);

CREATE TABLE Accounting(
  id INTEGER PRIMARY KEY,
  eventID INTEGER NOT NULL,
  income INTEGER NOT NULL,
  costs INTEGER NOT NULL,
  FOREIGN KEY (eventID) REFERENCES Event(id) ON DELETE CASCADE
);

CREATE TABLE Share(
  id INTEGER PRIMARY KEY,
  accountingID  INTEGER NOT NULL,
  memberID INTEGER NOT NULL,
  part INTEGER,
  FOREIGN KEY (accountingID) REFERENCES Accounting(id) on DELETE CASCADE,
  FOREIGN KEY (memberID) REFERENCES Gang_members(id) on DELETE CASCADE
);

CREATE TABLE Rank(
  id INTEGER PRIMARY KEY,
  ranks VARCHAR(256) NOT NULL
);

CREATE TABLE Gang_members(
  id INTEGER PRIMARY KEY,
  name VARCHAR(256) NOT NULL,
  surname VARCHAR(256) NOT NULL,
  ranksID INTEGER NOT NULL,
  FOREIGN KEY (ranksID) REFERENCES Rank(id) ON DELETE CASCADE
);

CREATE TABLE Territory(
  id INTEGER PRIMARY KEY,
  title VARCHAR (256) NOT NULL
);

CREATE TABLE Gangs(
  id INTEGER PRIMARY KEY,
  gangs_title VARCHAR (256) NOT NULL,
  district INTEGER NOT NULL,
  FOREIGN KEY (district) REFERENCES Territory(id) ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Users(
  id INTEGER NOT NULL PRIMARY KEY,
  login VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(50) NOT NULL,
  ranksID INTEGER NOT NULL,
  FOREIGN KEY (ranksID) REFERENCES Rank(id) ON DELETE CASCADE
);