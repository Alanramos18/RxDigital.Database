-- Database creation
DROP DATABASE IF EXISTS RxDigital
GO

CREATE DATABASE RxDigital
GO

USE RxDigital
GO

-- Create admin schema
DROP SCHEMA IF EXISTS [admin]
GO
CREATE SCHEMA [admin]
GO

-- Create tables
CREATE TABLE admin.Rol (
	id_rol INT PRIMARY KEY,
	descripcion VARCHAR(13) NOT NULL
);

CREATE TABLE admin.Usuario (
	id_usuario VARCHAR(100) PRIMARY KEY,
	email VARCHAR(50) NOT NULL,
	contraseña VARCHAR(150) NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	estado INT NOT NULL,
	dni INT NOT NULL,
	id_rol INT NOT NULL,
	FOREIGN KEY (id_rol) REFERENCES admin.ROL(id_rol),

	NormalizedUserName char(100),
	AccessFailedCount int,
	ConcurrencyStamp char(100),
	EmailConfirmed bit,
	LockoutEnabled bit,
	LockoutEnd datetime,
	NormalizedEmail char(100),
	PhoneNumber char(100),
	PhoneNumberConfirmed bit,
	SecurityStamp char(100),
	TwoFactorEnabled bit,
	UserName char(100)
);

CREATE TABLE admin.Especialidad (
	id_especialidad INT IDENTITY(1,1) PRIMARY KEY,
	descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE admin.Medico (
	matricula INT PRIMARY KEY,
	id_usuario VARCHAR(100) NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES admin.Usuario(id_usuario)  ON DELETE CASCADE,
	id_especialidad INT NOT NULL,
	FOREIGN KEY (id_especialidad) REFERENCES admin.Especialidad(id_especialidad)
);

CREATE TABLE admin.Farmaceutico (
	matricula INT PRIMARY KEY,
	id_usuario VARCHAR(100) NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES admin.Usuario(id_usuario)  ON DELETE CASCADE
);

CREATE TABLE admin.Medicamento (
	id_medicamento INT IDENTITY(1,1) PRIMARY KEY,
	nombre_comercial VARCHAR(50),
	presentacion VARCHAR(50),
	concentracion VARCHAR(50),
	descripcion VARCHAR(50)
);

CREATE TABLE admin.ObraSocial (
	id_obra_social INT IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR(50),
	plan_social VARCHAR(50)
);

CREATE TABLE admin.Paciente (
	dni INT PRIMARY KEY,
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	fecha_nacimiento DATETIME,
	fecha_inscripcion DATETIME,
	email VARCHAR(50),
	id_obra_social INT,
	sexo CHAR(1) CHECK (sexo = 'M' OR sexo = 'F'),
	celular VARCHAR(15),
	telefono_fijo VARCHAR(8),
	nacionalidad NVARCHAR(50),
	provincia NVARCHAR(50),
	domicilio NVARCHAR(60),
	localidad NVARCHAR(60),
	habilitado BIT,
	FOREIGN KEY (id_obra_social) REFERENCES admin.ObraSocial(id_obra_social),
	numero_afiliado VARCHAR(50)
);

CREATE TABLE admin.Estado (
	id_estado INT IDENTITY(1,1) PRIMARY KEY,
	descripcion VARCHAR(50)
);

CREATE TABLE admin.Envio (
	id_envio INT IDENTITY(1,1) PRIMARY KEY,
	descripcion VARCHAR(50)
);

CREATE TABLE admin.Receta (
	codigo_receta VARCHAR(6) PRIMARY KEY NOT NULL,
	matricula INT,
	FOREIGN KEY (matricula) REFERENCES admin.Medico(matricula),
	dni_paciente INT,
	FOREIGN KEY (dni_paciente) REFERENCES admin.Paciente(dni) ON DELETE CASCADE,
	matricula_farmaceutico INT NULL,
	FOREIGN KEY (matricula_farmaceutico) REFERENCES admin.Farmaceutico(matricula),
	diagnostico VARCHAR(250) NULL,
	indicaciones VARCHAR(250) NULL,
	motivo_rechazo VARCHAR(250) NULL,
	fecha_emision DATETIME NOT NULL,
	expiracion DATETIME NOT NULL,
	id_estado INT,
	FOREIGN KEY (id_estado) REFERENCES admin.Estado(id_estado),
);

CREATE TABLE admin.Envio_Receta (
	id_envio INT NOT NULL,
	FOREIGN KEY (id_envio) REFERENCES admin.Envio(id_envio) ON DELETE CASCADE,
	codigo_receta VARCHAR(6),
	FOREIGN KEY (codigo_receta) REFERENCES admin.Receta(codigo_receta) ON DELETE CASCADE,
	PRIMARY KEY (id_envio,codigo_receta)
);

CREATE TABLE admin.Receta_Medicamento (
	id_medicamento INT NOT NULL,
	FOREIGN KEY (id_medicamento) REFERENCES admin.Medicamento(id_medicamento) ON DELETE CASCADE,
	codigo_receta VARCHAR(6),
	FOREIGN KEY (codigo_receta) REFERENCES admin.Receta(codigo_receta) ON DELETE CASCADE,
	PRIMARY KEY (id_medicamento,codigo_receta),
	indicaciones VARCHAR(100)
);

-- Insert status
INSERT INTO admin.Estado VALUES ('Emitida');
INSERT INTO admin.Estado VALUES ('Eliminada');
INSERT INTO admin.Estado VALUES ('Aceptada');
INSERT INTO admin.Estado VALUES ('Rechazada');

-- Insert Roles
INSERT INTO admin.ROL VALUES (1, 'Administrador');
INSERT INTO admin.ROL VALUES (2, 'Medico');
INSERT INTO admin.ROL VALUES (3, 'Farmaceutico');

-- Insert Especialidad
INSERT INTO admin.Especialidad VALUES ('Cardiología');
INSERT INTO admin.Especialidad VALUES ('Pediatría');
INSERT INTO admin.Especialidad VALUES ('Ginecología y Obstetricia');
INSERT INTO admin.Especialidad VALUES ('Dermatología');
INSERT INTO admin.Especialidad VALUES ('Oftalmología');
INSERT INTO admin.Especialidad VALUES ('Neurología');
INSERT INTO admin.Especialidad VALUES ('Traumatología y Ortopedia');
INSERT INTO admin.Especialidad VALUES ('Endocrinología');
INSERT INTO admin.Especialidad VALUES ('Psiquiatría');
INSERT INTO admin.Especialidad VALUES ('Gastroenterología');
