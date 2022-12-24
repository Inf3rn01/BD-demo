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

CREATE TABLE Accounting(
  id serial PRIMARY KEY,
  eventID INTEGER NOT NULL,
  income INTEGER NOT NULL,
  costs INTEGER NOT NULL,
  FOREIGN KEY (eventID) REFERENCES Event(id) ON DELETE CASCADE
);

CREATE TABLE Share(
  id PRIMARY KEY,
  accountingID  INTEGER NOT NULL,
  memberID INTEGER NOT NULL,
  part INTEGER,
  FOREIGN KEY (accountingID) REFERENCES Accounting(id) on DELETE CASCADE,
  FOREIGN KEY (memberID) REFERENCES Gang_members(id) on DELETE CASCADE
);

CREATE TABLE Rank(
id PRIMARY KEY,
ranks VARCHAR(256) NOT NULL
);

CREATE TABLE Gang_members(
  id PRIMARY KEY,
  name VARCHAR(256) NOT NULL,
  surname VARCHAR(256) NOT NULL,
  rankID INTEGER NOT NULL,
  FOREIGN KEY (rankID) REFERENCES Rank(id) ON DELETE CASCADE
);

CREATE TABLE Territory(
  id PRIMARY KEY,
  title VARCHAR (256) NOT NULL
);

CREATE TABLE Gangs(
  id PRIMARY KEY,
  gangs_title VARCHAR (256) NOT NULL,
  district INTEGER NOT NULL,
  FOREIGN KEY (district) REFERENCES Territory(id) ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS users(
id INTEGER NOT NULL PRIMARY KEY,
login VARCHAR(50) NOT NULL UNIQUE,
password VARCHAR(50) NOT NULL
);