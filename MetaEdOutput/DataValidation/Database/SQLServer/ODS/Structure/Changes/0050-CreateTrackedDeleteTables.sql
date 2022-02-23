CREATE TABLE [tracked_deletes_datavalidation].[ErrorSeverityLevelDescriptor]
(
       ErrorSeverityLevelDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ErrorSeverityLevelDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_datavalidation].[RuleStatusDescriptor]
(
       RuleStatusDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_RuleStatusDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
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
       ValidationResultIdentifier [NVARCHAR](100) NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ValidationResult PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_datavalidation].[ValidationRule]
(
       CollectionIdentifier [NVARCHAR](100) NOT NULL,
       RuleIdentifier [NVARCHAR](100) NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ValidationRule PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_datavalidation].[ValidationRuleCollection]
(
       CollectionIdentifier [NVARCHAR](100) NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ValidationRuleCollection PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_datavalidation].[ValidationRun]
(
       CollectionIdentifier [NVARCHAR](100) NOT NULL,
       ExaminedOds [NVARCHAR](100) NOT NULL,
       RuleEngine [NVARCHAR](100) NOT NULL,
       RunIdentifier [NVARCHAR](100) NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ValidationRun PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_datavalidation].[ValidationRunStatusDescriptor]
(
       ValidationRunStatusDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ValidationRunStatusDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
