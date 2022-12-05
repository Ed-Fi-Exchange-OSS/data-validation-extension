IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tracked_deletes_edfixvalidations')
EXEC sys.sp_executesql N'CREATE SCHEMA [tracked_deletes_edfixvalidations]'
GO