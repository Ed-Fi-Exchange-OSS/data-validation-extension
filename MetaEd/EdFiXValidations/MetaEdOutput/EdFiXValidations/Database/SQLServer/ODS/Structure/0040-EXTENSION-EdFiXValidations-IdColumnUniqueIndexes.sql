BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'edfixvalidations.ValidationResult') AND name = N'UX_ValidationResult_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_ValidationResult_Id ON [edfixvalidations].[ValidationResult]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'edfixvalidations.ValidationRule') AND name = N'UX_ValidationRule_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_ValidationRule_Id ON [edfixvalidations].[ValidationRule]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'edfixvalidations.ValidationRun') AND name = N'UX_ValidationRun_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_ValidationRun_Id ON [edfixvalidations].[ValidationRun]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

