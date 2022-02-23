CREATE TRIGGER [datavalidation].[datavalidation_ValidationResult_TR_UpdateChangeVersion] ON [datavalidation].[ValidationResult] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [datavalidation].[ValidationResult]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [datavalidation].[ValidationResult] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [datavalidation].[datavalidation_ValidationRule_TR_UpdateChangeVersion] ON [datavalidation].[ValidationRule] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [datavalidation].[ValidationRule]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [datavalidation].[ValidationRule] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [datavalidation].[datavalidation_ValidationRuleCollection_TR_UpdateChangeVersion] ON [datavalidation].[ValidationRuleCollection] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [datavalidation].[ValidationRuleCollection]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [datavalidation].[ValidationRuleCollection] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [datavalidation].[datavalidation_ValidationRun_TR_UpdateChangeVersion] ON [datavalidation].[ValidationRun] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [datavalidation].[ValidationRun]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [datavalidation].[ValidationRun] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

