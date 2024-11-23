USE RxDigital
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
