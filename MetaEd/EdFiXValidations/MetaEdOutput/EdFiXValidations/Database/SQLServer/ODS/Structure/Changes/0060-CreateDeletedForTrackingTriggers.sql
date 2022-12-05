CREATE TRIGGER [edfixvalidations].[edfixvalidations_RuleStatusDescriptor_TR_DeleteTracking] ON [edfixvalidations].[RuleStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfixvalidations].[RuleStatusDescriptor](RuleStatusDescriptorId, Id, ChangeVersion)
    SELECT  d.RuleStatusDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.RuleStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [edfixvalidations].[RuleStatusDescriptor] ENABLE TRIGGER [edfixvalidations_RuleStatusDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [edfixvalidations].[edfixvalidations_RunStatusDescriptor_TR_DeleteTracking] ON [edfixvalidations].[RunStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfixvalidations].[RunStatusDescriptor](RunStatusDescriptorId, Id, ChangeVersion)
    SELECT  d.RunStatusDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.RunStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [edfixvalidations].[RunStatusDescriptor] ENABLE TRIGGER [edfixvalidations_RunStatusDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [edfixvalidations].[edfixvalidations_SeverityDescriptor_TR_DeleteTracking] ON [edfixvalidations].[SeverityDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfixvalidations].[SeverityDescriptor](SeverityDescriptorId, Id, ChangeVersion)
    SELECT  d.SeverityDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SeverityDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [edfixvalidations].[SeverityDescriptor] ENABLE TRIGGER [edfixvalidations_SeverityDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [edfixvalidations].[edfixvalidations_ValidationLogicTypeDescriptor_TR_DeleteTracking] ON [edfixvalidations].[ValidationLogicTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfixvalidations].[ValidationLogicTypeDescriptor](ValidationLogicTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.ValidationLogicTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ValidationLogicTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [edfixvalidations].[ValidationLogicTypeDescriptor] ENABLE TRIGGER [edfixvalidations_ValidationLogicTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [edfixvalidations].[edfixvalidations_ValidationResult_TR_DeleteTracking] ON [edfixvalidations].[ValidationResult] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfixvalidations].[ValidationResult](ResourceType, ResultIdentifier, Id, ChangeVersion)
    SELECT  ResourceType, ResultIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [edfixvalidations].[ValidationResult] ENABLE TRIGGER [edfixvalidations_ValidationResult_TR_DeleteTracking]
GO


CREATE TRIGGER [edfixvalidations].[edfixvalidations_ValidationRule_TR_DeleteTracking] ON [edfixvalidations].[ValidationRule] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfixvalidations].[ValidationRule](RuleIdentifier, RuleSource, Id, ChangeVersion)
    SELECT  RuleIdentifier, RuleSource, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [edfixvalidations].[ValidationRule] ENABLE TRIGGER [edfixvalidations_ValidationRule_TR_DeleteTracking]
GO


CREATE TRIGGER [edfixvalidations].[edfixvalidations_ValidationRun_TR_DeleteTracking] ON [edfixvalidations].[ValidationRun] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfixvalidations].[ValidationRun](Host, RuleEngine, RunIdentifier, Id, ChangeVersion)
    SELECT  Host, RuleEngine, RunIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [edfixvalidations].[ValidationRun] ENABLE TRIGGER [edfixvalidations_ValidationRun_TR_DeleteTracking]
GO


