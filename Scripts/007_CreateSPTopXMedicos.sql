USE RxDigital
GO
--EXEC TopMedicos @TOPRANK = 2
CREATE OR ALTER PROC TopMedicos
	@TOPRANK NVARCHAR(2)
AS
DECLARE @CadenaSQL NVARCHAR(MAX);
SELECT @CadenaSQL = 'SELECT TOP ' + @TOPRANK + ' r.matricula, u.apellido + '', '' + u.nombre AS ''Nombre Medico'', count(r.matricula) AS ''Total Recetas''
FROM admin.Receta r
JOIN admin.Medico m ON m.matricula = r.matricula
JOIN admin.Usuario u ON u.id_usuario = m.id_usuario
GROUP BY r.matricula, u.apellido + '', '' + u.nombre ORDER BY ''Total Recetas'' DESC;'
EXEC sp_executesql @CadenaSQL;