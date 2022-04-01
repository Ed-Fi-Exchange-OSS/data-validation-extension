-- Table [datavalidation].[RuleStatusDescriptor] --
CREATE TABLE [datavalidation].[RuleStatusDescriptor] (
    [RuleStatusDescriptorId] [INT] NOT NULL,
    CONSTRAINT [RuleStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [RuleStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [datavalidation].[RunStatusDescriptor] --
CREATE TABLE [datavalidation].[RunStatusDescriptor] (
    [RunStatusDescriptorId] [INT] NOT NULL,
    CONSTRAINT [RunStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [RunStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [datavalidation].[SeverityDescriptor] --
CREATE TABLE [datavalidation].[SeverityDescriptor] (
    [SeverityDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SeverityDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SeverityDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [datavalidation].[ValidationLogicTypeDescriptor] --
CREATE TABLE [datavalidation].[ValidationLogicTypeDescriptor] (
    [ValidationLogicTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ValidationLogicTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ValidationLogicTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [datavalidation].[ValidationResult] --
CREATE TABLE [datavalidation].[ValidationResult] (
    [ResourceType] [NVARCHAR](100) NOT NULL,
    [ResultIdentifier] [NVARCHAR](100) NOT NULL,
    [RuleIdentifier] [NVARCHAR](100) NOT NULL,
    [RuleSource] [NVARCHAR](100) NOT NULL,
    [RunIdentifier] [NVARCHAR](100) NULL,
    [Host] [NVARCHAR](100) NULL,
    [RuleEngine] [NVARCHAR](100) NULL,
    [ResourceId] [NVARCHAR](100) NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NULL,
    [StaffUSI] [INT] NULL,
    [Namespace] [NVARCHAR](255) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ValidationResult_PK] PRIMARY KEY CLUSTERED (
        [ResourceType] ASC,
        [ResultIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [datavalidation].[ValidationResult] ADD CONSTRAINT [ValidationResult_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [datavalidation].[ValidationResult] ADD CONSTRAINT [ValidationResult_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [datavalidation].[ValidationResult] ADD CONSTRAINT [ValidationResult_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [datavalidation].[ValidationResultAdditionalContext] --
CREATE TABLE [datavalidation].[ValidationResultAdditionalContext] (
    [IdentificationCode] [NVARCHAR](60) NOT NULL,
    [ResourceType] [NVARCHAR](100) NOT NULL,
    [ResultIdentifier] [NVARCHAR](100) NOT NULL,
    [CustomizationValue] [NVARCHAR](4000) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [ValidationResultAdditionalContext_PK] PRIMARY KEY CLUSTERED (
        [IdentificationCode] ASC,
        [ResourceType] ASC,
        [ResultIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [datavalidation].[ValidationResultAdditionalContext] ADD CONSTRAINT [ValidationResultAdditionalContext_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [datavalidation].[ValidationRule] --
CREATE TABLE [datavalidation].[ValidationRule] (
    [RuleIdentifier] [NVARCHAR](100) NOT NULL,
    [RuleSource] [NVARCHAR](100) NOT NULL,
    [HelpUrl] [NVARCHAR](255) NULL,
    [ShortDescription] [NVARCHAR](1024) NULL,
    [Description] [NVARCHAR](4000) NULL,
    [RuleStatusDescriptorId] [INT] NULL,
    [Category] [NVARCHAR](1024) NULL,
    [SeverityDescriptorId] [INT] NULL,
    [ExternalRuleId] [NVARCHAR](100) NULL,
    [ValidationLogicTypeDescriptorId] [INT] NULL,
    [ValidationLogic] [NVARCHAR](4000) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ValidationRule_PK] PRIMARY KEY CLUSTERED (
        [RuleIdentifier] ASC,
        [RuleSource] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [datavalidation].[ValidationRule] ADD CONSTRAINT [ValidationRule_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [datavalidation].[ValidationRule] ADD CONSTRAINT [ValidationRule_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [datavalidation].[ValidationRule] ADD CONSTRAINT [ValidationRule_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [datavalidation].[ValidationRun] --
CREATE TABLE [datavalidation].[ValidationRun] (
    [Host] [NVARCHAR](100) NOT NULL,
    [RuleEngine] [NVARCHAR](100) NOT NULL,
    [RunIdentifier] [NVARCHAR](100) NOT NULL,
    [RunStartDateTime] [DATETIME2](7) NOT NULL,
    [RunFinishDateTime] [DATETIME2](7) NULL,
    [RunStatusDescriptorId] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ValidationRun_PK] PRIMARY KEY CLUSTERED (
        [Host] ASC,
        [RuleEngine] ASC,
        [RunIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [datavalidation].[ValidationRun] ADD CONSTRAINT [ValidationRun_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [datavalidation].[ValidationRun] ADD CONSTRAINT [ValidationRun_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [datavalidation].[ValidationRun] ADD CONSTRAINT [ValidationRun_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

