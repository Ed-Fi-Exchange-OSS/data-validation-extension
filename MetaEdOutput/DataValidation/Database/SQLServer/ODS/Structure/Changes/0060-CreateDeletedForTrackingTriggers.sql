CREATE TRIGGER [datavalidation].[datavalidation_ErrorSeverityLevelDescriptor_TR_DeleteTracking] ON [datavalidation].[ErrorSeverityLevelDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_datavalidation].[ErrorSeverityLevelDescriptor](ErrorSeverityLevelDescriptorId, Id, ChangeVersion)
    SELECT  d.ErrorSeverityLevelDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ErrorSeverityLevelDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [datavalidation].[ErrorSeverityLevelDescriptor] ENABLE TRIGGER [datavalidation_ErrorSeverityLevelDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [datavalidation].[datavalidation_RuleStatusDescriptor_TR_DeleteTracking] ON [datavalidation].[RuleStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_datavalidation].[RuleStatusDescriptor](RuleStatusDescriptorId, Id, ChangeVersion)
    SELECT  d.RuleStatusDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.RuleStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [datavalidation].[RuleStatusDescriptor] ENABLE TRIGGER [datavalidation_RuleStatusDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [datavalidation].[datavalidation_ValidationLogicTypeDescriptor_TR_DeleteTracking] ON [datavalidation].[ValidationLogicTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_datavalidation].[ValidationLogicTypeDescriptor](ValidationLogicTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.ValidationLogicTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ValidationLogicTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [datavalidation].[ValidationLogicTypeDescriptor] ENABLE TRIGGER [datavalidation_ValidationLogicTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [datavalidation].[datavalidation_ValidationResult_TR_DeleteTracking] ON [datavalidation].[ValidationResult] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_datavalidation].[ValidationResult](ValidationResultIdentifier, Id, ChangeVersion)
    SELECT  ValidationResultIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [datavalidation].[ValidationResult] ENABLE TRIGGER [datavalidation_ValidationResult_TR_DeleteTracking]
GO


CREATE TRIGGER [datavalidation].[datavalidation_ValidationRuleCollection_TR_DeleteTracking] ON [datavalidation].[ValidationRuleCollection] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_datavalidation].[ValidationRuleCollection](CollectionIdentifier, Id, ChangeVersion)
    SELECT  CollectionIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [datavalidation].[ValidationRuleCollection] ENABLE TRIGGER [datavalidation_ValidationRuleCollection_TR_DeleteTracking]
GO


CREATE TRIGGER [datavalidation].[datavalidation_ValidationRule_TR_DeleteTracking] ON [datavalidation].[ValidationRule] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_datavalidation].[ValidationRule](CollectionIdentifier, RuleIdentifier, Id, ChangeVersion)
    SELECT  CollectionIdentifier, RuleIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [datavalidation].[ValidationRule] ENABLE TRIGGER [datavalidation_ValidationRule_TR_DeleteTracking]
GO


CREATE TRIGGER [datavalidation].[datavalidation_ValidationRunStatusDescriptor_TR_DeleteTracking] ON [datavalidation].[ValidationRunStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_datavalidation].[ValidationRunStatusDescriptor](ValidationRunStatusDescriptorId, Id, ChangeVersion)
    SELECT  d.ValidationRunStatusDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ValidationRunStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [datavalidation].[ValidationRunStatusDescriptor] ENABLE TRIGGER [datavalidation_ValidationRunStatusDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [datavalidation].[datavalidation_ValidationRun_TR_DeleteTracking] ON [datavalidation].[ValidationRun] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_datavalidation].[ValidationRun](CollectionIdentifier, ExaminedOds, RuleEngine, RunIdentifier, Id, ChangeVersion)
    SELECT  CollectionIdentifier, ExaminedOds, RuleEngine, RunIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [datavalidation].[ValidationRun] ENABLE TRIGGER [datavalidation_ValidationRun_TR_DeleteTracking]
GO


