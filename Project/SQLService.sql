CREATE DATABASE OpaFramework
GO
Use OpaFramework
GO
CREATE TABLE USERS (
name varchar(255),
lastname varchar(255),
password varchar(255),
age tinyint,
notify bit,
codPais char(3) ,
codDepartamento char(2) ,
codCiudad char(5) ,
Ip	varchar(20)
)



--------------------------
SELECT * INTO pais FROM coonfie.dbo.pais 
SELECT * INTO departamentos FROM coonfie.dbo.departamentos 

SELECT codpais as [key],nombre as [value] FROM pais
SELECT coddepartamento AS [key],nombredepartamento AS [value] FROM departamentos WHERE codpais = @codPais
SELECT codciudad as [key] , nombreciudad as [value] FROM ciudades WHERE coddepartamento = 17 and codpais = @codPais

SELECT * FROM pais
SELECT * FROM ciudades where codpais = '097'
select * from departamentos where codpais = '097'

SELECT * INTO ciudades FROM coonfie.dbo.ciudades 
select distinct pais.codpais from pais
inner join departamentos on pais.codpais = departamentos.codpais
DELETE FROM pais WHERE codpais NOT IN ('097','169','199','211','239','245','249','275','493','589')
---------------------------
SELECT * FROM departamentos

INSERT INTO Users VALUES ('Sergio','Arboleda',22,1) , ('Jhoana','Andrea',20,3), ('Juliana','Arboleda',22,4)
				        ,('Matt','Bellamy',37,7)