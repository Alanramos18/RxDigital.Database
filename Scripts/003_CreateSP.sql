USE RxDigital;
GO;

CREATE PROC ObtenerRecetas
	@Dni_paciente CHAR(8)
AS
	SELECT 
		r.codigo_receta,
		r.fecha_emision as 'Fecha emision',
		r.expiracion as 'Fecha de Vencimiento',
		r.diagnostico,
		m.nombre_comercial,
		m.concentracion
	FROM admin.Receta r
	JOIN admin.Medicamento m ON m.id_medicamento = r.id_medicamento
	WHERE r.dni_paciente = @Dni_paciente;