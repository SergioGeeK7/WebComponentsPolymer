ALTER PROCEDURE getAsociados (@page int=1,@name varchar(max)='',@size decimal(18,2)=5.0,@ordenar varchar(5)='ASC',@ordenarPor varchar(max)='id')
AS
declare	@nroPag int

SELECT @nroPag = CEILING(COUNT(0)/@size) FROM nits
SELECT @nroPag as pages,* 
FROM 
(SELECT ROW_NUMBER()OVER(PARTITION BY 'a' ORDER BY idnits DESC) as id ,nit as cedula , nombreintegrado as 'nombre',telefono1 as 'telefono' ,direccion , email from nits WHERE nits.nombreintegrado like ('%'+@name+'%')) q
WHERE q.id between  (@page-1) * @size + 1  and @page * @size
ORDER BY 
    CASE WHEN @ordenarPor = 'id' AND @ordenar = 'DESC' THEN id END DESC,
	CASE WHEN @ordenarPor = 'id' AND @ordenar = 'ASC'  THEN id END ASC,
	CASE WHEN @ordenarPor = 'nombre' AND @ordenar = 'ASC'  THEN id END ASC,
	CASE WHEN @ordenarPor = 'nombre' AND @ordenar = 'DESC'  THEN id END DESC,
	CASE WHEN @ordenarPor = 'telefono' AND @ordenar = 'ASC'  THEN id END ASC,
	CASE WHEN @ordenarPor = 'telefono' AND @ordenar = 'DESC'  THEN id END DESC,
	CASE WHEN @ordenarPor = 'direccion' AND @ordenar = 'ASC'  THEN id END ASC,
	CASE WHEN @ordenarPor = 'direccion' AND @ordenar = 'DESC'  THEN id END DESC,
	CASE WHEN @ordenarPor = 'email' AND @ordenar = 'ASC'  THEN id END ASC,
	CASE WHEN @ordenarPor = 'email' AND @ordenar = 'DESC'  THEN id END DESC,
	CASE WHEN @ordenarPor = 'cedula' AND @ordenar = 'ASC'  THEN id END ASC,
	CASE WHEN @ordenarPor = 'cedula' AND @ordenar = 'DESC'  THEN id END DESC,
	id;

-------------------------------------------------------------
getAsociados 1,'carlos',5,'ASC','nombre'