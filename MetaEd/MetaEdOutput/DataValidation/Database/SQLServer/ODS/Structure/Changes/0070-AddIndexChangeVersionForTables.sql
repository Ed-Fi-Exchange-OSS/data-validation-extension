BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'datavalidation.ValidationResult') AND name = N'UX_ValidationResult_ChangeVersion')
    CREATE INDEX [UX_ValidationResult_ChangeVersion] ON [datavalidation].[ValidationResult] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'datavalidation.ValidationRule') AND name = N'UX_ValidationRule_ChangeVersion')
    CREATE INDEX [UX_ValidationRule_ChangeVersion] ON [datavalidation].[ValidationRule] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'datavalidation.ValidationRun') AND name = N'UX_ValidationRun_ChangeVersion')
    CREATE INDEX [UX_ValidationRun_ChangeVersion] ON [datavalidation].[ValidationRun] ([ChangeVersion] ASC)
    GO
COMMIT

