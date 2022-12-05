BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'edfixvalidations.ValidationResult') AND name = N'UX_ValidationResult_ChangeVersion')
    CREATE INDEX [UX_ValidationResult_ChangeVersion] ON [edfixvalidations].[ValidationResult] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'edfixvalidations.ValidationRule') AND name = N'UX_ValidationRule_ChangeVersion')
    CREATE INDEX [UX_ValidationRule_ChangeVersion] ON [edfixvalidations].[ValidationRule] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'edfixvalidations.ValidationRun') AND name = N'UX_ValidationRun_ChangeVersion')
    CREATE INDEX [UX_ValidationRun_ChangeVersion] ON [edfixvalidations].[ValidationRun] ([ChangeVersion] ASC)
    GO
COMMIT

