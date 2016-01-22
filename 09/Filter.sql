ALTER PROCEDURE getAsociados (@page int=1,@name varchar(max)='',@size decimal(18,2)=5.0 )
AS
declare	@nroPag int

SELECT @nroPag = CEILING(COUNT(0)/@size) FROM nits
SELECT @nroPag as pages,* 
FROM 
(SELECT ROW_NUMBER()OVER(PARTITION BY 'a' ORDER BY idnits DESC) nro ,nit as cedula , nombreintegrado as 'nombre',telefono1 as 'telefono' ,direccion , email from nits) q
WHERE q.nro between  (@page-1) * @size + 1  and @page * @size and q.nombre like ('%'+@name+'%')