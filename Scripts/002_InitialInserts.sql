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

-- Insert Paciente
INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, id_obra_social, nacionalidad, sexo, celular, telefono_fijo, numero_afiliado)
VALUES (12345678, 'Juan', 'Pérez', '05-15-1985', 2, 'Argentina', 'M', '1123456789', NULL, 'A12345');

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, id_obra_social, nacionalidad, sexo, celular, telefono_fijo, numero_afiliado)
VALUES (87654321, 'María', 'González', '09-22-1990', 1, 'Argentina', 'F', '1198765432', '45001234', 'B98765');


INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, id_obra_social, nacionalidad, sexo, celular, telefono_fijo, numero_afiliado)
VALUES (34567890, 'Carlos', 'Ramírez', '01-12-1978', 3, 'Argentina', 'M', '1109876543', '45006789', 'C34567');

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, id_obra_social, nacionalidad, sexo, celular, telefono_fijo, numero_afiliado)
VALUES (56789012, 'Ana', 'López', '07-14-1995', 4, 'Argentina', 'F', '1165432109', NULL, 'D56789');

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, id_obra_social, nacionalidad, sexo, celular, telefono_fijo, numero_afiliado)
VALUES (67890123, 'Pedro', 'Martínez', '03-10-1980', 1, 'Argentina', 'M', '1198765433', '40005678', 'E67890');

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, id_obra_social, nacionalidad, sexo, celular, telefono_fijo, numero_afiliado)
VALUES (78901234, 'Lucía', 'Fernández', '11-21-1988', 2, 'Bolivia', 'F', '1134567890', '40009876', 'F78901');

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, id_obra_social, nacionalidad, sexo, celular, telefono_fijo, numero_afiliado)
VALUES (89012345, 'Ricardo', 'Gómez', '04-18-1992', 3, 'Venezuela', 'M', '1101234567', '49001234', 'G89012');

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, id_obra_social, nacionalidad, sexo, celular, telefono_fijo, numero_afiliado)
VALUES (90123456, 'Sofía', 'Sánchez', '06-29-1984', 4, 'Perú', 'F', '1123456709', '43001234', 'H90123');

INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, id_obra_social, nacionalidad, sexo, celular, telefono_fijo, numero_afiliado)
VALUES (12309876, 'Martín', 'Silva', '08-23-1996', 1, 'Argentina', 'M', '1143210987', 'NULL', 'I12309');
        
INSERT INTO admin.Paciente (dni, nombre, apellido, fecha_nacimiento, id_obra_social, nacionalidad, sexo, celular, telefono_fijo, numero_afiliado)
VALUES (32109876, 'Camila', 'Rojas', '02-15-1991', 2, 'Colombia', 'F', '1190321456', '46001234', 'J32109');
        

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
INSERT INTO admin.Receta (id_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, expiracion, id_estado)
VALUES (1, 1, 1234, 12345678, NULL, 'Infección bacteriana', 'Tomar cada 8 horas', '2024-11-19', 1);

INSERT INTO admin.Receta (id_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, expiracion, id_estado)
VALUES (2, 2, 1234, 12345678, NULL, 'Dolor y fiebre', 'Tomar cada 6 horas', '2024-11-19', 1);

INSERT INTO admin.Receta (id_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, expiracion, id_estado)
VALUES (3, 3, 5678, 87654321, NULL, 'Dolor de cabeza', 'Tomar cada 12 horas', '2024-11-19', 1);

INSERT INTO admin.Receta (id_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, expiracion, id_estado)
VALUES (4, 4, 5678, 34567890, NULL, 'Alergias estacionales', 'Tomar una vez al día', '2024-11-19', 1);

INSERT INTO admin.Receta (id_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, expiracion, id_estado)
VALUES (5, 5, 1234, 56789012, NULL, 'Ansiedad', 'Tomar antes de dormir', '2024-11-19', 1);

INSERT INTO admin.Receta (id_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, expiracion, id_estado)
VALUES (6, 6, 1234, 67890123, NULL, 'Dolor y fiebre', 'Tomar cada 8 horas', '2024-11-19', 1);

INSERT INTO admin.Receta (id_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, expiracion, id_estado)
VALUES (7, 7, 5678, 78901234, NULL, 'Diabetes tipo 2', 'Tomar una vez al día con las comidas', '2024-11-19', 1);

INSERT INTO admin.Receta (id_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, expiracion, id_estado)
VALUES (8, 8, 5678, 89012345, NULL, 'Alergias estacionales', 'Tomar una vez al día', '2024-11-19', 1);

INSERT INTO admin.Receta (id_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, expiracion, id_estado)
VALUES (9, 9, 1234, 90123456, NULL, 'Reflujo gástrico', 'Tomar antes del desayuno', '2024-11-19', 1);

INSERT INTO admin.Receta (id_receta, id_medicamento, matricula, dni_paciente, matricula_farmaceutico, diagnostico, indicaciones, expiracion, id_estado)
VALUES (10, 10, 5678, 12309876, NULL, 'Hipertensión', 'Tomar una vez al día', '2024-11-19', 1);