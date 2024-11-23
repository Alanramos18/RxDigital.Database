USE RxDigital
GO
--EXEC TopMedicamentos @TOPRANK = 2
CREATE OR ALTER PROC TopMedicamentos
	@TOPRANK NVARCHAR(2)
AS
DECLARE @CadenaSQL NVARCHAR(MAX);
SELECT @CadenaSQL = 'SELECT TOP ' + @TOPRANK + ' m.nombre_comercial,
	m.presentacion,
	m.concentracion,
	count(rm.id_medicamento) AS ''Total Recetado''
FROM admin.Receta_Medicamento rm
JOIN admin.Medicamento m ON rm.id_medicamento = m.id_medicamento
GROUP BY rm.id_medicamento, m.nombre_comercial, m.presentacion,	m.concentracion ORDER BY ''Total Recetado'' DESC;'
EXEC sp_executesql @CadenaSQL;