IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'edfixvalidations')
EXEC sys.sp_executesql N'CREATE SCHEMA [edfixvalidations]'
GO
