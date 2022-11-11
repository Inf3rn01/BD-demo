drop table if exists Event;
drop table if exists Gang_members;
drop table if exists Territory;
drop table if exists Accounting;
drop table if exists Share;
drop table if exists Gangs;

CREATE TABLE Event(
  id_events serial PRIMARY KEY,
  name varchar (256) not null,
  data date
);
  
CREATE TABLE Accounting(
  id_accouting serial PRIMARY KEY,
  eventId integer NOT NULL,
  income integer NOT NULL,
  costs integer NOT NULL,
  foreign key (eventId) references Event(id_events)
);
  
CREATE TABLE Share(
  id_share serial PRIMARY KEY,
  accountingId integer NOT NULL,
  memberId integer NOT NULL,
  part integer
  foreign key (accountingId) references Accouting(id_accouting),
  foreign key (memberId) references Gang_members(id_member)
);

CREATE TABLE Gang_members(
  id_member serial PRIMARY KEY,
  name varchar(256) not null,
  surname varchar(256) not null,
  rank varchar (256) NOT NULL
);

CREATE TABLE Territory(
  id_district serial PRIMARY KEY,
  title varchar (256) not null
);

CREATE TABLE Gangs(
  id_gangs_name serial PRIMARY KEY,
  gangs_name varchar (256) not null,
  district integer NOT NULL,
  foreign key (district) references Territory(id_district)
);
