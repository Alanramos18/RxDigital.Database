USE RxDigital
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