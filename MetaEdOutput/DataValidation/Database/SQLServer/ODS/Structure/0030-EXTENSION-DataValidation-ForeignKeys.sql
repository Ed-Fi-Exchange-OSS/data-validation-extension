ALTER TABLE [datavalidation].[ErrorSeverityLevelDescriptor] WITH CHECK ADD CONSTRAINT [FK_ErrorSeverityLevelDescriptor_Descriptor] FOREIGN KEY ([ErrorSeverityLevelDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [datavalidation].[RuleStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_RuleStatusDescriptor_Descriptor] FOREIGN KEY ([RuleStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [datavalidation].[ValidationLogicTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ValidationLogicTypeDescriptor_Descriptor] FOREIGN KEY ([ValidationLogicTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [datavalidation].[ValidationResult] WITH CHECK ADD CONSTRAINT [FK_ValidationResult_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationResult_EducationOrganization]
ON [datavalidation].[ValidationResult] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [datavalidation].[ValidationResult] WITH CHECK ADD CONSTRAINT [FK_ValidationResult_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationResult_Staff]
ON [datavalidation].[ValidationResult] ([StaffUSI] ASC)
GO

ALTER TABLE [datavalidation].[ValidationResult] WITH CHECK ADD CONSTRAINT [FK_ValidationResult_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationResult_Student]
ON [datavalidation].[ValidationResult] ([StudentUSI] ASC)
GO

ALTER TABLE [datavalidation].[ValidationResult] WITH CHECK ADD CONSTRAINT [FK_ValidationResult_ValidationRule] FOREIGN KEY ([CollectionIdentifier], [RuleIdentifier])
REFERENCES [datavalidation].[ValidationRule] ([CollectionIdentifier], [RuleIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationResult_ValidationRule]
ON [datavalidation].[ValidationResult] ([CollectionIdentifier] ASC, [RuleIdentifier] ASC)
GO

ALTER TABLE [datavalidation].[ValidationResult] WITH CHECK ADD CONSTRAINT [FK_ValidationResult_ValidationRun] FOREIGN KEY ([CollectionIdentifier], [ExaminedOds], [RuleEngine], [RunIdentifier])
REFERENCES [datavalidation].[ValidationRun] ([CollectionIdentifier], [ExaminedOds], [RuleEngine], [RunIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationResult_ValidationRun]
ON [datavalidation].[ValidationResult] ([CollectionIdentifier] ASC, [ExaminedOds] ASC, [RuleEngine] ASC, [RunIdentifier] ASC)
GO

ALTER TABLE [datavalidation].[ValidationRule] WITH CHECK ADD CONSTRAINT [FK_ValidationRule_ErrorSeverityLevelDescriptor] FOREIGN KEY ([ErrorSeverityLevelDescriptorId])
REFERENCES [datavalidation].[ErrorSeverityLevelDescriptor] ([ErrorSeverityLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationRule_ErrorSeverityLevelDescriptor]
ON [datavalidation].[ValidationRule] ([ErrorSeverityLevelDescriptorId] ASC)
GO

ALTER TABLE [datavalidation].[ValidationRule] WITH CHECK ADD CONSTRAINT [FK_ValidationRule_RuleStatusDescriptor] FOREIGN KEY ([RuleStatusDescriptorId])
REFERENCES [datavalidation].[RuleStatusDescriptor] ([RuleStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationRule_RuleStatusDescriptor]
ON [datavalidation].[ValidationRule] ([RuleStatusDescriptorId] ASC)
GO

ALTER TABLE [datavalidation].[ValidationRule] WITH CHECK ADD CONSTRAINT [FK_ValidationRule_ValidationLogicTypeDescriptor] FOREIGN KEY ([ValidationLogicTypeDescriptorId])
REFERENCES [datavalidation].[ValidationLogicTypeDescriptor] ([ValidationLogicTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationRule_ValidationLogicTypeDescriptor]
ON [datavalidation].[ValidationRule] ([ValidationLogicTypeDescriptorId] ASC)
GO

ALTER TABLE [datavalidation].[ValidationRule] WITH CHECK ADD CONSTRAINT [FK_ValidationRule_ValidationRuleCollection] FOREIGN KEY ([CollectionIdentifier])
REFERENCES [datavalidation].[ValidationRuleCollection] ([CollectionIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationRule_ValidationRuleCollection]
ON [datavalidation].[ValidationRule] ([CollectionIdentifier] ASC)
GO

ALTER TABLE [datavalidation].[ValidationRun] WITH CHECK ADD CONSTRAINT [FK_ValidationRun_ValidationRuleCollection] FOREIGN KEY ([CollectionIdentifier])
REFERENCES [datavalidation].[ValidationRuleCollection] ([CollectionIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationRun_ValidationRuleCollection]
ON [datavalidation].[ValidationRun] ([CollectionIdentifier] ASC)
GO

ALTER TABLE [datavalidation].[ValidationRun] WITH CHECK ADD CONSTRAINT [FK_ValidationRun_ValidationRunStatusDescriptor] FOREIGN KEY ([ValidationRunStatusDescriptorId])
REFERENCES [datavalidation].[ValidationRunStatusDescriptor] ([ValidationRunStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationRun_ValidationRunStatusDescriptor]
ON [datavalidation].[ValidationRun] ([ValidationRunStatusDescriptorId] ASC)
GO

ALTER TABLE [datavalidation].[ValidationRunStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_ValidationRunStatusDescriptor_Descriptor] FOREIGN KEY ([ValidationRunStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

