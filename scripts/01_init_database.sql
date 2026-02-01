/*
==================================
Create Database and Schemas
==================================
Script Purpose:
	This script creates the new database 'DWH_saas' after checking if it already exists. If the database exists, it's dropped and recreated.
	Additionally, three schemas are created: 'bronze', 'silver' and 'gold'.

WARNING:
	Running this script will drop the entire 'DWH_saas' database if it exists.
	All data in the database will be permanently deleted.
	Proceed with caution and ensure you have proper backups before running this script.
*/


use Master;

-- Drop and recreate the database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DWH_saas')
BEGIN
	ALTER DATABASE DWH_saas SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DWH_saas;
END

-- Create the database

CREATE DATABASE DWH_saas;

-- Create Schemas

GO
CREATE SCHEMA bronze
GO
CREATE SCHEMA silver
GO
CREATE SCHEMA gold
