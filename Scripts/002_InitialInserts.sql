USE RxDigital
GO

-- Insert ObraSocial
INSERT INTO admin.ObraSocial (id_obra_social, nombre, plan_social)
VALUES (1, 'Obra Social A', 'Plan Básico');

INSERT INTO admin.ObraSocial (id_obra_social, nombre, plan_social)
VALUES (2, 'Obra Social B', 'Plan Completo');

INSERT INTO admin.ObraSocial (id_obra_social, nombre, plan_social)
VALUES (3, 'Obra Social C', 'Plan Familiar');

INSERT INTO admin.ObraSocial (id_obra_social, nombre, plan_social)
VALUES (4, 'Obra Social D', 'Plan Estándar');

INSERT INTO admin.ObraSocial (id_obra_social, nombre, plan_social)
VALUES (5, 'Obra Social E', 'Plan Premium');

-- Insert Localidad
INSERT INTO admin.Localidad VALUES ('Villa Sarmiento', 'Argentina', 'Buenos Aires');
INSERT INTO admin.Localidad VALUES ('Moron', 'Argentina', 'Buenos Aires');
INSERT INTO admin.Localidad VALUES ('Ramos Mejia', 'Argentina', 'Buenos Aires');
INSERT INTO admin.Localidad VALUES ('Villa Urquiza', 'Argentina', 'Ciudad Autonoma de Buenos Aires');

-- Insert Paciente
INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, fecha_inscripcion, email, id_obra_social, sexo, celular, telefono_fijo, habilitado, numero_afiliado, calle, numero, id_localidad)
VALUES (12345678, 'Juan', 'Pérez', '1985-04-23', '2023-01-01', 'juan.perez@example.com', 1, 'M', '3412345678', '42123456', 1, 'OS-123456', 'Calle Falsa', 123, 1);

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, fecha_inscripcion, email, id_obra_social, sexo, celular, telefono_fijo, habilitado, numero_afiliado, calle, numero, id_localidad)
VALUES (23456789, 'María', 'García', '1990-11-15', '2023-05-20', 'maria.garcia@example.com', 2, 'F', '3412345679', '42123457', 1, 'OS-234567', 'Avenida Siempre Viva', 456, 2);

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, fecha_inscripcion, email, id_obra_social, sexo, celular, telefono_fijo, habilitado, numero_afiliado, calle, numero, id_localidad)
VALUES (34567890, 'Carlos', 'López', '1982-08-12', '2022-09-30', 'carlos.lopez@example.com', 3, 'M', '3412345680', '42123458', 1, 'OS-345678', 'Pasaje Sin Nombre', 789, 3);

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, fecha_inscripcion, email, id_obra_social, sexo, celular, telefono_fijo, habilitado, numero_afiliado, calle, numero, id_localidad)
VALUES (45678901, 'Laura', 'Martínez', '1975-02-05', '2021-03-15', 'laura.martinez@example.com', 4, 'F', '3412345681', '42123459', 0, 'OS-456789', 'Calle de las Flores', 101, 4);

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, fecha_inscripcion, email, id_obra_social, sexo, celular, telefono_fijo, habilitado, numero_afiliado, calle, numero, id_localidad)
VALUES (56789012, 'Ana', 'Gómez', '1995-10-22', '2022-07-10', 'ana.gomez@example.com', 5, 'F', '3412345682', '42123460', 1, 'OS-567890', 'Boulevard San Juan', 1020, 1);


-- Insert Medicamento
INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Amoxicilina', 'Cápsulas', 500, 'Antibiótico'); -- id 1

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Ibuprofeno', 'Tabletas', 200, 'Antiinflamatorio no esteroideo'); -- id 2

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Paracetamol', 'Tabletas', 500, 'Analgésico de uso común'); -- id 3

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Cetirizina', 'Tabletas', 10, 'Antihistamínico para alergias'); -- id 4

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Clonazepam', 'Tabletas', 2, 'Ansiolítico y anticonvulsivo'); -- id 5

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Aspirina', 'Tabletas', 100, 'Analgésico y antipirético'); -- id 6

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Metformina', 'Tabletas', 850, 'Tratamiento de la diabetes tipo 2'); -- id 7

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Loratadina', 'Tabletas', 10, 'Antihistamínico para alergias'); -- id 8

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Omeprazol', 'Cápsulas', 20, 'Inhibidor de la bomba de protones para reflujo'); -- id 9

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Losartán', 'Tabletas', 50, 'Antihipertensivo'); -- id 10

-- Insert Receta
INSERT INTO admin.Receta (codigo_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-000', 1, 1239, 12345678, NULL, 'Infección bacteriana', 'Tomar cada 8 horas', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta (codigo_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-001', 2, 1239, 12345678, NULL, 'Dolor y fiebre', 'Tomar cada 6 horas', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta (codigo_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-002', 3, 1239, 34567890, NULL, 'Dolor de cabeza', 'Tomar cada 12 horas', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta (codigo_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-003', 4, 1239, 34567890, NULL, 'Alergias estacionales', 'Tomar una vez al día', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta (codigo_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-004', 5, 1239, 45678901, NULL, 'Ansiedad', 'Tomar antes de dormir', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta (codigo_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-005', 6, 1239, 45678901, NULL, 'Dolor y fiebre', 'Tomar cada 8 horas', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta (codigo_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-006', 7, 1239, 56789012, NULL, 'Diabetes tipo 2', 'Tomar una vez al día con las comidas', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta (codigo_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-007', 8, 1239, 56789012, NULL, 'Alergias estacionales', 'Tomar una vez al día', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta (codigo_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-008', 9, 1239, 56789012, NULL, 'Reflujo gástrico', 'Tomar antes del desayuno', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta (codigo_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-009', 10, 1239, 56789012, NULL, 'Hipertensión', 'Tomar una vez al día', '2024-10-28', '2024-11-19', 1);