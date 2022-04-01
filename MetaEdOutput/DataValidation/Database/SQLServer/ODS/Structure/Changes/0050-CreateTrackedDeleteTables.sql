CREATE TABLE [tracked_deletes_datavalidation].[RuleStatusDescriptor]
(
       RuleStatusDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_RuleStatusDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_datavalidation].[RunStatusDescriptor]
(
       RunStatusDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_RunStatusDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_datavalidation].[SeverityDescriptor]
(
       SeverityDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_SeverityDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_datavalidation].[ValidationLogicTypeDescriptor]
(
       ValidationLogicTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ValidationLogicTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_datavalidation].[ValidationResult]
(
       ResourceType [NVARCHAR](100) NOT NULL,
       ResultIdentifier [NVARCHAR](100) NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ValidationResult PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_datavalidation].[ValidationRule]
(
       RuleIdentifier [NVARCHAR](100) NOT NULL,
       RuleSource [NVARCHAR](100) NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ValidationRule PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_datavalidation].[ValidationRun]
(
       Host [NVARCHAR](100) NOT NULL,
       RuleEngine [NVARCHAR](100) NOT NULL,
       RunIdentifier [NVARCHAR](100) NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ValidationRun PRIMARY KEY CLUSTERED (ChangeVersion)
)
