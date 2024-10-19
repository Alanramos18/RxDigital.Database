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
	RolId INT PRIMARY KEY,
	descripcion CHAR(13) NOT NULL
);

CREATE TABLE admin.Usuario (
	id_usuario CHAR(100) PRIMARY KEY,
	email CHAR(50) NOT NULL,
	contraseña CHAR(150) NOT NULL,
	nombre CHAR(50) NOT NULL,
	apellido CHAR(50) NOT NULL,
	RolId INT NOT NULL,
	FOREIGN KEY (RolId) REFERENCES admin.ROL(RolId),

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

CREATE TABLE admin.Medico (
	matricula INT PRIMARY KEY,
	id_usuario CHAR(100) NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES admin.Usuario(id_usuario),
);

CREATE TABLE admin.Farmaceutico (
	matricula INT PRIMARY KEY,
	id_usuario CHAR(100) NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES admin.Usuario(id_usuario),
);

CREATE TABLE admin.Medicamento (
	id_medicamento INT IDENTITY(1,1) PRIMARY KEY,
	nombre_comercial CHAR(50),
	presentacion CHAR(50),
	concentracion INT,
	descripcion CHAR(50)
);

CREATE TABLE admin.ObraSocial (
	id_obra_social INT IDENTITY(1,1) PRIMARY KEY,
	nombre CHAR(50),
	plan_social CHAR(50)
);

CREATE TABLE admin.Paciente (
	dni INT PRIMARY KEY,
	nombre CHAR(50),
	apellido CHAR(50),
	fecha_nacimiento DATETIME,
	id_obra_social INT,
	nacionalidad CHAR(15),
	sexo CHAR(1) CHECK (sexo = 'M' OR sexo = 'F'),
	celular CHAR(10),
	telefono_fijo CHAR(8),
	FOREIGN KEY (id_obra_social) REFERENCES admin.ObraSocial(id_obra_social),
	numero_afiliado CHAR(50)
);

CREATE TABLE admin.Estado (
	id_estado INT IDENTITY(1,1) PRIMARY KEY,
	descripcion CHAR(50)
);

CREATE TABLE admin.Receta (
	id_receta INT PRIMARY KEY,
	id_medicamento INT,
	FOREIGN KEY (id_medicamento) REFERENCES admin.Medicamento(id_medicamento),
	matricula INT,
	FOREIGN KEY (matricula) REFERENCES admin.Medico(matricula),
	dni_paciente INT,
	FOREIGN KEY (dni_paciente) REFERENCES admin.Paciente(dni),
	matricula_farmaceutico INT NULL,
	FOREIGN KEY (matricula_farmaceutico) REFERENCES admin.Farmaceutico(matricula),
	diagnostico CHAR(250) NULL,
	indicaciones CHAR(250) NULL,
	expiracion DATETIME NOT NULL,
	id_estado INT,
	FOREIGN KEY (id_estado) REFERENCES admin.Estado(id_estado),
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