USE master;
GO

DROP DATABASE IF EXISTS Company;
GO

-- Creating the Company database and the 2 tables in the following

CREATE DATABASE Company;
GO

USE Company;
GO

CREATE TABLE STORE (
StoreName			Char(15)		NOT NULL,
City				Char(15)		NOT NULL,
Phone				Char(12)		NOT NULL,
CONSTRAINT			STORE_PK		PRIMARY KEY(StoreName)

);

CREATE TABLE EMPLOYEE (
EmployeeNumber		Int				NOT NULL IDENTITY(10,100),
LastName			Char(25)		NOT NULL,
FirstName			Char(25)		NOT NULL,
StoreName			Char(15)		NOT NULL,
CONSTRAINT			EMPLOYEE_PK		PRIMARY KEY (EmployeeNumber),
CONSTRAINT			EMP_STORE_FK	FOREIGN KEY(StoreName)
									REFERENCES STORE (StoreName)
									ON UPDATE NO ACTION
									ON DELETE NO ACTION

);