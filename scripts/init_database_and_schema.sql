/*
=====================================================================
Create database and schemas
=====================================================================

Script Purpose:
	This script create new database named "DataWerehouse"


WARNING:
	Runnign this script will Drop the entire "DataWerehouse" database if it already exists


*/


USE master


----- DROP DataWerehouse
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWerehouse')
BEGIN
	ALTER DATABASE DataWerehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE DataWerehouse;
END;
GO



--- Create the "DataWerehouse" database
CREATE DATABASE DataWerehouse;
GO

USE DataWerehouse
GO



---- Create the three mains Schemas (bronze, silver y gold)
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO





