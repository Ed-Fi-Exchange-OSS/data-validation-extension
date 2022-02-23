BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'datavalidation.ValidationResult') AND name = N'UX_ValidationResult_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_ValidationResult_Id ON [datavalidation].[ValidationResult]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'datavalidation.ValidationRule') AND name = N'UX_ValidationRule_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_ValidationRule_Id ON [datavalidation].[ValidationRule]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'datavalidation.ValidationRuleCollection') AND name = N'UX_ValidationRuleCollection_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_ValidationRuleCollection_Id ON [datavalidation].[ValidationRuleCollection]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'datavalidation.ValidationRun') AND name = N'UX_ValidationRun_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_ValidationRun_Id ON [datavalidation].[ValidationRun]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

