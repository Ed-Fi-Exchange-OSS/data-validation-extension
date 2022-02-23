-- Table [datavalidation].[ErrorSeverityLevelDescriptor] --
CREATE TABLE [datavalidation].[ErrorSeverityLevelDescriptor] (
    [ErrorSeverityLevelDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ErrorSeverityLevelDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ErrorSeverityLevelDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [datavalidation].[RuleStatusDescriptor] --
CREATE TABLE [datavalidation].[RuleStatusDescriptor] (
    [RuleStatusDescriptorId] [INT] NOT NULL,
    CONSTRAINT [RuleStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [RuleStatusDescriptorId] ASC
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
    [ValidationResultIdentifier] [NVARCHAR](100) NOT NULL,
    [RuleIdentifier] [NVARCHAR](100) NOT NULL,
    [CollectionIdentifier] [NVARCHAR](100) NOT NULL,
    [RuleEngine] [NVARCHAR](100) NULL,
    [ExaminedOds] [NVARCHAR](100) NULL,
    [RunIdentifier] [NVARCHAR](100) NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [Namespace] [NVARCHAR](255) NULL,
    [StudentUSI] [INT] NULL,
    [StaffUSI] [INT] NULL,
    [OtherDetails] [NVARCHAR](1024) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ValidationResult_PK] PRIMARY KEY CLUSTERED (
        [ValidationResultIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [datavalidation].[ValidationResult] ADD CONSTRAINT [ValidationResult_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [datavalidation].[ValidationResult] ADD CONSTRAINT [ValidationResult_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [datavalidation].[ValidationResult] ADD CONSTRAINT [ValidationResult_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [datavalidation].[ValidationRule] --
CREATE TABLE [datavalidation].[ValidationRule] (
    [CollectionIdentifier] [NVARCHAR](100) NOT NULL,
    [RuleIdentifier] [NVARCHAR](100) NOT NULL,
    [ExternalruleCode] [NVARCHAR](100) NULL,
    [ResourceType] [NVARCHAR](100) NULL,
    [HelpUrl] [NVARCHAR](255) NULL,
    [Description] [NVARCHAR](1024) NULL,
    [ShortDescription] [NVARCHAR](1024) NULL,
    [RuleStatusDescriptorId] [INT] NULL,
    [Category] [NVARCHAR](100) NULL,
    [ErrorSeverityLevelDescriptorId] [INT] NULL,
    [ValidationLogicTypeDescriptorId] [INT] NULL,
    [ValidationLogic] [NVARCHAR](1024) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ValidationRule_PK] PRIMARY KEY CLUSTERED (
        [CollectionIdentifier] ASC,
        [RuleIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [datavalidation].[ValidationRule] ADD CONSTRAINT [ValidationRule_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [datavalidation].[ValidationRule] ADD CONSTRAINT [ValidationRule_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [datavalidation].[ValidationRule] ADD CONSTRAINT [ValidationRule_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [datavalidation].[ValidationRuleCollection] --
CREATE TABLE [datavalidation].[ValidationRuleCollection] (
    [CollectionIdentifier] [NVARCHAR](100) NOT NULL,
    [CollectionDescription] [NVARCHAR](255) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ValidationRuleCollection_PK] PRIMARY KEY CLUSTERED (
        [CollectionIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [datavalidation].[ValidationRuleCollection] ADD CONSTRAINT [ValidationRuleCollection_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [datavalidation].[ValidationRuleCollection] ADD CONSTRAINT [ValidationRuleCollection_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [datavalidation].[ValidationRuleCollection] ADD CONSTRAINT [ValidationRuleCollection_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [datavalidation].[ValidationRun] --
CREATE TABLE [datavalidation].[ValidationRun] (
    [CollectionIdentifier] [NVARCHAR](100) NOT NULL,
    [ExaminedOds] [NVARCHAR](100) NOT NULL,
    [RuleEngine] [NVARCHAR](100) NOT NULL,
    [RunIdentifier] [NVARCHAR](100) NOT NULL,
    [ValidationRunStatusDescriptorId] [INT] NOT NULL,
    [StartDateTime] [DATETIME2](7) NOT NULL,
    [FinishDateTime] [DATETIME2](7) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ValidationRun_PK] PRIMARY KEY CLUSTERED (
        [CollectionIdentifier] ASC,
        [ExaminedOds] ASC,
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

-- Table [datavalidation].[ValidationRunStatusDescriptor] --
CREATE TABLE [datavalidation].[ValidationRunStatusDescriptor] (
    [ValidationRunStatusDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ValidationRunStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ValidationRunStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

