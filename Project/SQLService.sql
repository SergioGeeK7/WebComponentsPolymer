CREATE DATABASE OpaFramework
GO
Use OpaFramework
GO
CREATE TABLE Countries
(
	IdCountries int identity not null primary key,
	name varchar(255)
)
GO
CREATE TABLE Departments
(
	IdDepartments int identity not null primary key,
	IdCountries int references Countries (IdCountries),
	name varchar(255)
)
GO
CREATE TABLE Users
(
	IdUsers int identity not null primary key,
	name varchar(255),
	lastName varchar(255),
	age smallint,
	IdCountries int references Departments (IdDepartments)
)

INSERT INTO Countries VALUES ('CO'),('US'),('EN')
INSERT INTO Departments VALUES (1,'Antioquia') , (1,'Meta') , (1,'Caqueta') , (2,'Labor') , (2,'Defense') , (3,'NewCastle'), (3,'Manchester')
INSERT INTO Users VALUES ('Sergio','Arboleda',22,1) , ('Jhoana','Andrea',20,3), ('Juliana','Arboleda',22,4)
				        ,('Matt','Bellamy',37,7)