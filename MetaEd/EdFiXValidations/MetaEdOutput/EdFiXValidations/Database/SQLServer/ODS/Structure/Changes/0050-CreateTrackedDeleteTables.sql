CREATE TABLE [tracked_deletes_edfixvalidations].[RuleStatusDescriptor]
(
       RuleStatusDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_RuleStatusDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_edfixvalidations].[RunStatusDescriptor]
(
       RunStatusDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_RunStatusDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_edfixvalidations].[SeverityDescriptor]
(
       SeverityDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_SeverityDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_edfixvalidations].[ValidationLogicTypeDescriptor]
(
       ValidationLogicTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ValidationLogicTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_edfixvalidations].[ValidationResult]
(
       ResourceType [NVARCHAR](100) NOT NULL,
       ResultIdentifier [NVARCHAR](100) NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ValidationResult PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_edfixvalidations].[ValidationRule]
(
       RuleIdentifier [NVARCHAR](100) NOT NULL,
       RuleSource [NVARCHAR](100) NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ValidationRule PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_edfixvalidations].[ValidationRun]
(
       Host [NVARCHAR](100) NOT NULL,
       RuleEngine [NVARCHAR](100) NOT NULL,
       RunIdentifier [NVARCHAR](100) NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ValidationRun PRIMARY KEY CLUSTERED (ChangeVersion)
)
