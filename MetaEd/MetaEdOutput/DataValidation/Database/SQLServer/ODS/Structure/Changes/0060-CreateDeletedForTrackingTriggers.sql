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


CREATE TRIGGER [datavalidation].[datavalidation_RunStatusDescriptor_TR_DeleteTracking] ON [datavalidation].[RunStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_datavalidation].[RunStatusDescriptor](RunStatusDescriptorId, Id, ChangeVersion)
    SELECT  d.RunStatusDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.RunStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [datavalidation].[RunStatusDescriptor] ENABLE TRIGGER [datavalidation_RunStatusDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [datavalidation].[datavalidation_SeverityDescriptor_TR_DeleteTracking] ON [datavalidation].[SeverityDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_datavalidation].[SeverityDescriptor](SeverityDescriptorId, Id, ChangeVersion)
    SELECT  d.SeverityDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SeverityDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [datavalidation].[SeverityDescriptor] ENABLE TRIGGER [datavalidation_SeverityDescriptor_TR_DeleteTracking]
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

    INSERT INTO [tracked_deletes_datavalidation].[ValidationResult](ResourceType, ResultIdentifier, Id, ChangeVersion)
    SELECT  ResourceType, ResultIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [datavalidation].[ValidationResult] ENABLE TRIGGER [datavalidation_ValidationResult_TR_DeleteTracking]
GO


CREATE TRIGGER [datavalidation].[datavalidation_ValidationRule_TR_DeleteTracking] ON [datavalidation].[ValidationRule] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_datavalidation].[ValidationRule](RuleIdentifier, RuleSource, Id, ChangeVersion)
    SELECT  RuleIdentifier, RuleSource, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [datavalidation].[ValidationRule] ENABLE TRIGGER [datavalidation_ValidationRule_TR_DeleteTracking]
GO


CREATE TRIGGER [datavalidation].[datavalidation_ValidationRun_TR_DeleteTracking] ON [datavalidation].[ValidationRun] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_datavalidation].[ValidationRun](Host, RuleEngine, RunIdentifier, Id, ChangeVersion)
    SELECT  Host, RuleEngine, RunIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [datavalidation].[ValidationRun] ENABLE TRIGGER [datavalidation_ValidationRun_TR_DeleteTracking]
GO


