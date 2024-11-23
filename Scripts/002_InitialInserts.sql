USE RxDigital
GO

-- Insert ObraSocial
INSERT INTO admin.ObraSocial (nombre, plan_social)
VALUES ('Particular', 'Particular');

INSERT INTO admin.ObraSocial (nombre, plan_social)
VALUES ('Swiss Medical', 'Plan B�sico');

INSERT INTO admin.ObraSocial (nombre, plan_social)
VALUES ('Swiss Medical', 'Plan Premium');

INSERT INTO admin.ObraSocial (nombre, plan_social)
VALUES ('Osde', 'Plan Completo');

INSERT INTO admin.ObraSocial (nombre, plan_social)
VALUES ('Omint', 'Plan Familiar');

INSERT INTO admin.ObraSocial (nombre, plan_social)

VALUES 

('OSDE', 'Plan 210'),

('Swiss Medical', 'Plan Oro'),

('Galeno', 'Plan Azul'),

('Medif�', 'Plan Platinum'),

('PAMI', 'Cobertura B�sica');
 

-- Insert Paciente
INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, fecha_inscripcion, email, id_obra_social, sexo, celular, telefono_fijo, habilitado, numero_afiliado, domicilio, localidad, nacionalidad, provincia)
VALUES (12345678, 'Juan', 'P�rez', '1985-04-23', '2023-01-01', 'juan.perez@example.com', 1, 'M', '3412345678', '42123456', 1, 'OS-123456', 'Calle Falsa', 'Ramos Mejia', 'Argentino', 'Bs As');

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, fecha_inscripcion, email, id_obra_social, sexo, celular, telefono_fijo, habilitado, numero_afiliado, domicilio, localidad, nacionalidad, provincia)
VALUES (23456789, 'Mar�a', 'Garc�a', '1990-11-15', '2023-05-20', 'maria.garcia@example.com', 2, 'F', '3412345679', '42123457', 1, 'OS-234567', 'Avenida Siempre Viva', 'Ramos Mejia', 'Argentino', 'Bs As');

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, fecha_inscripcion, email, id_obra_social, sexo, celular, telefono_fijo, habilitado, numero_afiliado, domicilio, localidad, nacionalidad, provincia)
VALUES (34567890, 'Carlos', 'L�pez', '1982-08-12', '2022-09-30', 'carlos.lopez@example.com', 3, 'M', '3412345680', '42123458', 1, 'OS-345678', 'Pasaje Sin Nombre', 'Ramos Mejia', 'Argentino', 'Bs As');

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, fecha_inscripcion, email, id_obra_social, sexo, celular, telefono_fijo, habilitado, numero_afiliado, domicilio, localidad, nacionalidad, provincia)
VALUES (45678901, 'Laura', 'Mart�nez', '1975-02-05', '2021-03-15', 'laura.martinez@example.com', 4, 'F', '3412345681', '42123459', 0, 'OS-456789', 'Calle de las Flores', 'Ramos Mejia', 'Argentino', 'Bs As');

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, fecha_inscripcion, email, id_obra_social, sexo, celular, telefono_fijo, habilitado, numero_afiliado, domicilio, localidad, nacionalidad, provincia)
VALUES (56789012, 'Ana', 'G�mez', '1995-10-22', '2022-07-10', 'ana.gomez@example.com', 5, 'F', '3412345682', '42123460', 1, 'OS-567890', 'Boulevard San Juan', 'Ramos Mejia', 'Argentino', 'Bs As');

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, fecha_inscripcion, email, id_obra_social, sexo, celular, telefono_fijo, habilitado, numero_afiliado, domicilio, localidad, nacionalidad, provincia)
VALUES 
(25123456, 'Carlos', 'Ram�rez', '1974-02-10', '2023-11-15', 'carlosramirez@gmail.com', 1, 'M', '3415678912', '42678901', 1, 'OS-234567', 'Calle Francia 123', 'Santa Fe', 'Argentina', 'Santa Fe'),
 
(30678912, 'Laura', 'Guti�rrez', '1980-12-05', '2022-05-25', 'lauragutierrez@gmail.com', 2, 'F', '3419876543', '42256789', 1, 'OS-789654', '9 de Julio 567', 'Rafaela', 'Argentina', 'Santa Fe'),
 
(33876543, 'Gabriel', 'Herrera', '1992-03-15', '2024-01-20', 'gabrielherrera@gmail.com', 3, 'M', '3516782345', '42567890', 1, 'OS-123789', 'Laprida 890', 'C�rdoba', 'Argentina', 'C�rdoba'),
 
(41098765, 'Mar�a', 'Salinas', '1999-06-25', '2023-08-10', 'mariasalinas@gmail.com', 4, 'F', '1165436789', '42987654', 0, 'OS-901234', 'San Lorenzo 234', 'Bah�a Blanca', 'Argentina', 'Buenos Aires'),
 
(32001234, 'Juli�n', 'Medina', '1987-01-10', '2023-12-05', 'julianmedina@gmail.com', 5, 'M', '3416123456', '42245678', 1, 'OS-567123', 'Urquiza 890', 'Rosario', 'Argentina', 'Santa Fe'),
 
(31765432, 'Luciana', 'Quintero', '1985-10-15', '2024-02-15', 'lucianaquintero@gmail.com', 6, 'F', '2263456789', '43256789', 1, 'OS-789456', 'Maip� 123', 'Mar del Plata', 'Argentina', 'Buenos Aires'),
 
(33987654, 'Federico', 'N��ez', '1989-07-30', '2023-07-01', 'federiconunez@gmail.com', 7, 'M', '2212345678', '42156789', 1, 'OS-345901', 'Belgrano 345', 'C�rdoba', 'Argentina', 'C�rdoba'),
 
(35004567, 'Roc�o', 'M�ndez', '1993-09-18', '2023-09-15', 'rociomendez@gmail.com', 1, 'F', '3419871234', '42890123', 1, 'OS-901567', 'San Juan 678', 'Tucum�n', 'Argentina', 'Tucum�n'),
 
(30456789, 'Agust�n', 'Silva', '1983-04-25', '2023-06-20', 'agustinsilva@gmail.com', 2, 'M', '2616783456', '42767890', 1, 'OS-567890', 'Alem 456', 'Mendoza', 'Argentina', 'Mendoza'),
 
(36876543, 'Florencia', 'Ortiz', '1995-11-30', '2024-03-22', 'florenciaortiz@gmail.com', 3, 'F', '1167893456', '42901234', 1, 'OS-789012', 'Mitre 789', 'San Juan', 'Argentina', 'San Juan');

-- Insert Medicamento
INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Amoxicilina', 'C�psulas', 500, 'Antibi�tico'); -- id 1

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Ibuprofeno', 'Tabletas', 200, 'Antiinflamatorio no esteroideo'); -- id 2

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Paracetamol', 'Tabletas', 500, 'Analg�sico de uso com�n'); -- id 3

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Cetirizina', 'Tabletas', 10, 'Antihistam�nico para alergias'); -- id 4

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Clonazepam', 'Tabletas', 2, 'Ansiol�tico y anticonvulsivo'); -- id 5

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Aspirina', 'Tabletas', 100, 'Analg�sico y antipir�tico'); -- id 6

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Metformina', 'Tabletas', 850, 'Tratamiento de la diabetes tipo 2'); -- id 7

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Loratadina', 'Tabletas', 10, 'Antihistam�nico para alergias'); -- id 8

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Omeprazol', 'C�psulas', 20, 'Inhibidor de la bomba de protones para reflujo'); -- id 9

INSERT INTO admin.Medicamento (nombre_comercial, presentacion, concentracion, descripcion)
VALUES ('Losart�n', 'Tabletas', 50, 'Antihipertensivo');�--�id�10

-- Insert Receta
INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-000', 1818, 12345678, NULL, 'Infecci�n bacteriana', 'Tomar cada 8 horas', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-000', 'Tomar 5 dias');

INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-001', 1818, 12345678, NULL, 'Dolor y fiebre', 'Tomar cada 6 horas', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-001', 'Tomar 5 dias');

INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-002', 1818, 34567890, NULL, 'Dolor de cabeza', 'Tomar cada 12 horas', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-002', 'Tomar 5 dias');

INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-003', 1818, 34567890, NULL, 'Alergias estacionales', 'Tomar una vez al d�a', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-003', 'Tomar 5 dias');

INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-004', 1818, 45678901, NULL, 'Ansiedad', 'Tomar antes de dormir', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-004', 'Tomar 5 dias');

INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-005', 1818, 45678901, NULL, 'Dolor y fiebre', 'Tomar cada 8 horas', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-005', 'Tomar 5 dias');

INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-006', 1818, 56789012, NULL, 'Diabetes tipo 2', 'Tomar una vez al d�a con las comidas', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-006', 'Tomar 5 dias');

INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-007', 1818, 56789012, NULL, 'Alergias estacionales', 'Tomar una vez al d�a', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-007', 'Tomar 5 dias');

INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-008', 1818, 56789012, NULL, 'Reflujo g�strico', 'Tomar antes del desayuno', '2024-10-28', '2024-11-19', 1);

INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-008', 'Tomar 5 dias');
INSERT INTO admin.Receta_Medicamento VALUES (2, 'AA-008', 'Tomar 5 dias');
INSERT INTO admin.Receta_Medicamento VALUES (3, 'AA-008', 'Tomar 5 dias');

INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES ('AA-009', 1818, 56789012, NULL, 'Hipertensi�n', 'Tomar una vez al d�a', '2024-10-28', '2024-11-19',�1);


-- Recetas para Carlos Ram�rez
INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES 
('AA-101', 123123, 25123456, NULL, 'Gripe', 'Tomar un analg�sico cada 8 horas', '2024-10-20', '2024-11-01', 1),
('AA-102', 123123, 25123456, NULL, 'Hipertensi�n arterial', 'Tomar 1 comprimido por la ma�ana', '2024-10-22', '2025-01-22', 1),
('AA-103', 123123, 25123456, NULL, 'Dolor lumbar', 'Aplicar pomada 3 veces al d�a', '2024-10-25', '2024-12-25', 1),
('AA-104', 123123, 25123456, NULL, 'Infecci�n urinaria', 'Tomar un antibi�tico cada 12 horas', '2024-10-28', '2024-11-19', 1),
('AA-105', 123123, 25123456, NULL, 'Colesterol alto', 'Tomar una pastilla diaria', '2024-11-01', '2025-01-01', 3);



-- Recetas para Laura Guti�rrez
INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES 
('AA-206', 1818, 30678912, NULL, 'Amigdalitis', 'Hacer g�rgaras 3 veces al d�a', '2024-10-23', '2024-11-07', 1),
('AA-010', 1818, 30678912, NULL, 'Anemia leve', 'Tomar hierro 2 veces al d�a', '2024-10-24', '2024-12-24', 2),
('AA-020', 1818, 30678912, NULL, 'Alergia estacional', 'Aplicar spray nasal cada 12 horas', '2024-10-26', '2024-11-15', 3),
('AA-024', 1818, 30678912, NULL, 'Artritis leve', 'Aplicar crema antiinflamatoria', '2024-11-01', '2024-12-01', 1);

INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, motivo_rechazo, fecha_emision, expiracion, id_estado)
VALUES
('AA-023', 123123, 30678912, NULL, 'Migra�a cr�nica', 'Tomar analg�sico al inicio del dolor','El medicamento prescrito no es adecuado para el diagn�stico del paciente', '2024-10-30', '2024-12-01', 4);



-- Recetas para Gabriel Herrera
INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES 
('AA-027', 123123, 33876543, NULL, 'Asma leve', 'Usar inhalador cada 6 horas', '2024-10-25', '2024-12-25', 3),
('AA-011', 123123, 33876543, NULL, 'Infecci�n ocular', 'Aplicar gotas 3 veces al d�a', '2024-10-28', '2024-11-18', 3),
('AA-012', 123123, 33876543, NULL, 'Otitis media', 'Tomar antibi�tico cada 12 horas', '2024-10-30', '2024-11-20', 1),
('AA-015', 123123, 33876543, NULL, 'Tensi�n muscular', 'Realizar fisioterapia y tomar analg�sicos', '2024-11-01', '2024-12-01', 2),
('AA-016', 123123, 33876543, NULL, 'Acidez estomacal', 'Tomar anti�cidos despu�s de cada comida', '2024-11-05', '2024-12-05', 3);


-- Recetas para Mar�a Salinas
INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, fecha_emision, expiracion, id_estado)
VALUES 
('AA-048', 1818, 41098765, NULL, 'Gripe', 'Tomar paracetamol cada 8 horas', '2024-10-22', '2024-11-05', 1),
('AA-113', 1818, 41098765, NULL, 'Dolor de garganta', 'Hacer g�rgaras con agua tibia y sal', '2024-10-23', '2024-11-03', 3),
('AA-117', 1818, 41098765, NULL, 'Bronquitis leve', 'Tomar jarabe para la tos', '2024-10-29', '2024-11-19', 1),
('AA-021', 1818, 41098765, NULL, 'Dermatitis', 'Aplicar crema antihistam�nica', '2024-11-01', '2024-12-01', 1);

INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, motivo_rechazo, fecha_emision, expiracion, id_estado)
VALUES
('AA-314', 1818, 41098765, NULL, 'Otitis externa', 'Aplicar gotas antibi�ticas 2 veces al d�a','La receta esta vencida', '2024-10-27', '2024-11-10', 4);

-- Recetas para Juli�n Medina
INSERT INTO admin.Receta (codigo_receta, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, motivo_rechazo, fecha_emision, expiracion, id_estado)
VALUES 
('AA-069', 1818, 32001234, NULL, 'Colesterol alto', 'Tomar estatinas por la noche','El medicamento ya no se comercializa en el pais', '2024-10-20', '2025-01-20', 4),
('AA-518', 1818, 32001234, NULL, 'Dolor lumbar', 'Aplicar calor local y tomar antiinflamatorios','La dosis prescrita es incorrecta', '2024-10-25', '2024-11-15', 4);


INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-101', 'Tomar cada 8 horas por 3 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-102', 'Tomar cada 8 horas por 3 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (2, 'AA-102', 'Tomar cada 12 horas por 7 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (5, 'AA-103', 'Tomar una vez al d�a por 2 semanas');
INSERT INTO admin.Receta_Medicamento VALUES (5, 'AA-104', 'Tomar una vez al d�a por 2 semanas');
INSERT INTO admin.Receta_Medicamento VALUES (4, 'AA-104', 'Tomar una vez a la semana por 3 meses');
INSERT INTO admin.Receta_Medicamento VALUES (2, 'AA-004', 'Tomar cada 12 horas por 7 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (3, 'AA-005', 'Tomar cada 8 horas por 10 d�as');
 
INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-206', 'Tomar cada 8 horas por 3 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-010', 'Tomar cada 8 horas por 3 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (2, 'AA-020', 'Tomar cada 12 horas por 7 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (5, 'AA-024', 'Tomar una vez al d�a por 2 semanas');
INSERT INTO admin.Receta_Medicamento VALUES (3, 'AA-024', 'Tomar cada 8 horas por 10 d�as');
 
INSERT INTO admin.Receta_Medicamento VALUES (7, 'AA-023', 'Tomar una vez al d�a por una semana');
INSERT INTO admin.Receta_Medicamento VALUES (10, 'AA-023', 'Tomar cada 8 horas por 15 d�as');
 
 
INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-027', 'Tomar cada 8 horas por 3 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-011', 'Tomar cada 8 horas por 3 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (2, 'AA-012', 'Tomar cada 12 horas por 7 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (5, 'AA-015', 'Tomar una vez al d�a por 2 semanas');
INSERT INTO admin.Receta_Medicamento VALUES (3, 'AA-016', 'Tomar cada 8 horas por 10 d�as');
 
 
INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-048', 'Tomar cada 8 horas por 3 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (1, 'AA-113', 'Tomar cada 8 horas por 3 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (2, 'AA-117', 'Tomar cada 12 horas por 7 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (8, 'AA-117', 'Tomar una vez al mes por 3 meses');
INSERT INTO admin.Receta_Medicamento VALUES (5, 'AA-021', 'Tomar una vez al d�a por 2 semanas');
INSERT INTO admin.Receta_Medicamento VALUES (10, 'AA-021', 'Tomar cada 8 horas por 15 d�as');
 
INSERT INTO admin.Receta_Medicamento VALUES (10, 'AA-314', 'Tomar cada 8 horas por 15 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (9, 'AA-314', 'Tomar cada 8 horas por 20 d�as');
 
INSERT INTO admin.Receta_Medicamento VALUES (8, 'AA-069', 'Tomar una vez al mes por 3 meses');
INSERT INTO admin.Receta_Medicamento VALUES (10, 'AA-069', 'Tomar cada 8 horas por 15 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (9, 'AA-518', 'Tomar cada 8 horas por 20 d�as');
INSERT INTO admin.Receta_Medicamento VALUES (7, 'AA-518', 'Tomar una vez al d�a por una semana');