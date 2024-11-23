USE RxDigital
GO

CREATE OR ALTER PROC ObtenerRecetas
	@Dni_paciente CHAR(8)
AS
	SELECT 
		r.codigo_receta as 'CodigoReceta',
		r.fecha_emision as 'FechaEmision',
		r.expiracion as 'Fecha de Vencimiento',
		r.diagnostico,
		m.nombre_comercial,
		m.concentracion,
		r.indicaciones as 'Comentario',
		e.descripcion as 'Estado'
	FROM admin.Receta r
	JOIN admin.Receta_Medicamento rm ON rm.codigo_receta = r.codigo_receta
	JOIN admin.Medicamento m ON m.id_medicamento = rm.id_medicamento
	JOIN admin.Estado e ON r.id_estado = e.id_estado
	WHERE r.dni_paciente = @Dni_paciente;
GO

--EXEC ConsultarRecetas @Desde = '2024-09-30', @Hasta = '2024-12-22'
CREATE OR ALTER PROC ConsultarRecetas
	@Desde DATE,
	@Hasta DATE
AS
	SELECT
		r.codigo_receta AS 'Codigo Receta',
		r.fecha_emision AS 'Fecha Emision',
		p.apellido + p.nombre AS 'Nombre del paciente',
		u.apellido + u.nombre AS 'Recetado por',
		e.descripcion AS 'Estado de Receta'
	FROM admin.Receta r
	JOIN admin.Paciente p ON r.dni_paciente = p.dni
	JOIN admin.Medico m ON r.matricula = m.matricula
	JOIN admin.Usuario u ON u.id_usuario = m.id_usuario
	JOIN admin.Estado e ON e.id_estado = r.id_estado
	WHERE r.fecha_emision >= @Desde AND
	r.fecha_emision <= @Hasta;
GO

--EXEC BuscarReceta @CODIGO_RECETA = 'AA-008'
--EXEC BuscarReceta @CODIGO_RECETA = 'AA-123'
CREATE OR ALTER PROC BuscarReceta
	@CODIGO_RECETA CHAR(8)
AS
SELECT 
p.apellido + ', ' + p.nombre AS 'Nombre Paciente',
p.dni,
os.nombre AS 'Obra Social',
os.plan_social,
p.numero_afiliado,
u.apellido + ', ' + u.nombre AS 'Nombre Medico',
r.matricula,
es.descripcion AS 'Especialidad',
r.diagnostico,
coalesce(r.indicaciones, ''),
r.fecha_emision,
r.expiracion,
e.descripcion AS 'Estado',
coalesce(r.motivo_rechazo, '') AS 'Motivo de Rechazo'
FROM admin.Receta r
JOIN admin.Paciente p ON p.dni = r.dni_paciente
JOIN admin.ObraSocial os ON os.id_obra_social = p.id_obra_social
JOIN admin.Medico m ON m.matricula = r.matricula
JOIN admin.Especialidad es ON es.id_especialidad = m.id_especialidad
JOIN admin.Usuario u ON u.id_usuario = m.id_usuario
JOIN admin.Estado e ON e.id_estado = r.id_estado
WHERE r.codigo_receta = @CODIGO_RECETA;

SELECT
med.nombre_comercial,
med.presentacion,
med.concentracion,
rm.indicaciones,
med.id_medicamento
FROM admin.Receta r
JOIN admin.Receta_Medicamento rm ON rm.codigo_receta = r.codigo_receta
JOIN admin.Medicamento med ON med.id_medicamento = rm.id_medicamento
WHERE r.codigo_receta = @CODIGO_RECETA;
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
