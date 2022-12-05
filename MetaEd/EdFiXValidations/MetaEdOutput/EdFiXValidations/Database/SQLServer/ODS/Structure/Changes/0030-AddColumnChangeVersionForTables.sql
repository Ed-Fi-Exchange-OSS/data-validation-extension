IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[edfixvalidations].[ValidationResult]') AND name = 'ChangeVersion')
ALTER TABLE [edfixvalidations].[ValidationResult] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[edfixvalidations].[ValidationRule]') AND name = 'ChangeVersion')
ALTER TABLE [edfixvalidations].[ValidationRule] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[edfixvalidations].[ValidationRun]') AND name = 'ChangeVersion')
ALTER TABLE [edfixvalidations].[ValidationRun] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

