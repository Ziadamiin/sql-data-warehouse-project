/* 
==================================================
Create Database and Schemas
==================================================
Script's Purpose
This script create a new database called "DataWarehouse" after checking if it already exists.
If the database exists, the database is dropped then created. Additionally, the script create the three schemas forthe layers of the datawarehouse
*/


USE master;
GO

--Drop and recreate the database "DataWarehouse"
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER database DataWarehouse SET single_user WITH ROLLBACK IMMEDIATE
	DROP database DataWarehouse
END;
GO

-- create database DataWarehouse
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- creating schemas for the layers of the datawarehouse
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
