IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'datavalidation')
EXEC sys.sp_executesql N'CREATE SCHEMA [datavalidation]'
GO
