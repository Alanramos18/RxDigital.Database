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
CREATE TABLE admin.Doctor (
	registrationId INT PRIMARY KEY,
	firstName CHAR(50),
	lastName CHAR(50)
);

CREATE TABLE admin.Medicine (
	medicineId INT IDENTITY(1,1) PRIMARY KEY,
	name CHAR(50),
	description CHAR(50)
);

CREATE TABLE admin.Patient (
	patientId INT PRIMARY KEY,
	firstName CHAR(50),
	lastName CHAR(50)
);

CREATE TABLE admin.Status (
	statusId INT IDENTITY(1,1) PRIMARY KEY,
	description CHAR(50)
);

CREATE TABLE admin.Prescription (
	prescriptionId INT PRIMARY KEY,
	medicineId INT,
	FOREIGN KEY (medicineId) REFERENCES admin.Medicine(medicineId),
	registrationId INT,
	FOREIGN KEY (registrationId) REFERENCES admin.Doctor(registrationId),
	patientId INT,
	FOREIGN KEY (patientId) REFERENCES admin.Patient(patientId),
	amount INT,
	diagnostic CHAR(250) NULL,
	indications CHAR(250) NULL,
	expiration DATETIME NOT NULL,
	statusId INT,
	FOREIGN KEY (statusId) REFERENCES admin.Status(statusId),
);

-- Insert status
INSERT INTO admin.Status VALUES ('Emitida');
INSERT INTO admin.Status VALUES ('Eliminada');
INSERT INTO admin.Status VALUES ('Aceptada');
INSERT INTO admin.Status VALUES ('Rechazada');