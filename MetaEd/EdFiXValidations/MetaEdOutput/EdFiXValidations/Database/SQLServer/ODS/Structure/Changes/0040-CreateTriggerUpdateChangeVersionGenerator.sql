CREATE TRIGGER [edfixvalidations].[edfixvalidations_ValidationResult_TR_UpdateChangeVersion] ON [edfixvalidations].[ValidationResult] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfixvalidations].[ValidationResult]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfixvalidations].[ValidationResult] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [edfixvalidations].[edfixvalidations_ValidationRule_TR_UpdateChangeVersion] ON [edfixvalidations].[ValidationRule] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfixvalidations].[ValidationRule]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfixvalidations].[ValidationRule] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [edfixvalidations].[edfixvalidations_ValidationRun_TR_UpdateChangeVersion] ON [edfixvalidations].[ValidationRun] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfixvalidations].[ValidationRun]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfixvalidations].[ValidationRun] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

