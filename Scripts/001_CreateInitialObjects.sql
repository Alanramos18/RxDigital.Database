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

CREATE TABLE admin.Medico (
	matricula INT PRIMARY KEY,
	id_usuario VARCHAR(100) NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES admin.Usuario(id_usuario),
);

CREATE TABLE admin.Farmaceutico (
	matricula INT PRIMARY KEY,
	id_usuario VARCHAR(100) NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES admin.Usuario(id_usuario),
);

CREATE TABLE admin.Medicamento (
	id_medicamento INT IDENTITY(1,1) PRIMARY KEY,
	nombre_comercial VARCHAR(50),
	presentacion VARCHAR(50),
	concentracion INT,
	descripcion VARCHAR(50)
);

CREATE TABLE admin.ObraSocial (
	id_obra_social INT PRIMARY KEY,
	nombre VARCHAR(50),
	plan_social VARCHAR(50)
);

CREATE TABLE admin.Localidad(
	id_localidad INT IDENTITY(1,1) PRIMARY KEY,
	nombre NVARCHAR(50),
	pais NVARCHAR(25),
	provincia NVARCHAR(50)
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
	celular VARCHAR(10),
	telefono_fijo VARCHAR(8),
	habilitado BIT,
	FOREIGN KEY (id_obra_social) REFERENCES admin.ObraSocial(id_obra_social),
	numero_afiliado VARCHAR(50),
	calle NVARCHAR(60),
	numero SMALLINT CHECK (numero >= 0),
	id_localidad INT,
	FOREIGN KEY (id_localidad) REFERENCES admin.Localidad(id_localidad)
);

CREATE TABLE admin.Estado (
	id_estado INT IDENTITY(1,1) PRIMARY KEY,
	descripcion VARCHAR(50)
);

CREATE TABLE admin.Receta (
	codigo_receta VARCHAR(6) PRIMARY KEY NOT NULL,
	id_medicamento INT,
	FOREIGN KEY (id_medicamento) REFERENCES admin.Medicamento(id_medicamento),
	matricula INT,
	FOREIGN KEY (matricula) REFERENCES admin.Medico(matricula),
	dni_paciente INT,
	FOREIGN KEY (dni_paciente) REFERENCES admin.Paciente(dni),
	matricula_farmaceutico INT NULL,
	FOREIGN KEY (matricula_farmaceutico) REFERENCES admin.Farmaceutico(matricula),
	diagnostico VARCHAR(250) NULL,
	indicaciones VARCHAR(250) NULL,
	fecha_emision DATETIME NOT NULL,
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