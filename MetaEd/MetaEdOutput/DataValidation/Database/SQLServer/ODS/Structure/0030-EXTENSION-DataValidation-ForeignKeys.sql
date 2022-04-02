ALTER TABLE [datavalidation].[RuleStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_RuleStatusDescriptor_Descriptor] FOREIGN KEY ([RuleStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [datavalidation].[RunStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_RunStatusDescriptor_Descriptor] FOREIGN KEY ([RunStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [datavalidation].[SeverityDescriptor] WITH CHECK ADD CONSTRAINT [FK_SeverityDescriptor_Descriptor] FOREIGN KEY ([SeverityDescriptorId])
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

ALTER TABLE [datavalidation].[ValidationResult] WITH CHECK ADD CONSTRAINT [FK_ValidationResult_ValidationRule] FOREIGN KEY ([RuleIdentifier], [RuleSource])
REFERENCES [datavalidation].[ValidationRule] ([RuleIdentifier], [RuleSource])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationResult_ValidationRule]
ON [datavalidation].[ValidationResult] ([RuleIdentifier] ASC, [RuleSource] ASC)
GO

ALTER TABLE [datavalidation].[ValidationResult] WITH CHECK ADD CONSTRAINT [FK_ValidationResult_ValidationRun] FOREIGN KEY ([Host], [RuleEngine], [RunIdentifier])
REFERENCES [datavalidation].[ValidationRun] ([Host], [RuleEngine], [RunIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationResult_ValidationRun]
ON [datavalidation].[ValidationResult] ([Host] ASC, [RuleEngine] ASC, [RunIdentifier] ASC)
GO

ALTER TABLE [datavalidation].[ValidationResultAdditionalContext] WITH CHECK ADD CONSTRAINT [FK_ValidationResultAdditionalContext_ValidationResult] FOREIGN KEY ([ResourceType], [ResultIdentifier])
REFERENCES [datavalidation].[ValidationResult] ([ResourceType], [ResultIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ValidationResultAdditionalContext_ValidationResult]
ON [datavalidation].[ValidationResultAdditionalContext] ([ResourceType] ASC, [ResultIdentifier] ASC)
GO

ALTER TABLE [datavalidation].[ValidationRule] WITH CHECK ADD CONSTRAINT [FK_ValidationRule_RuleStatusDescriptor] FOREIGN KEY ([RuleStatusDescriptorId])
REFERENCES [datavalidation].[RuleStatusDescriptor] ([RuleStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationRule_RuleStatusDescriptor]
ON [datavalidation].[ValidationRule] ([RuleStatusDescriptorId] ASC)
GO

ALTER TABLE [datavalidation].[ValidationRule] WITH CHECK ADD CONSTRAINT [FK_ValidationRule_SeverityDescriptor] FOREIGN KEY ([SeverityDescriptorId])
REFERENCES [datavalidation].[SeverityDescriptor] ([SeverityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationRule_SeverityDescriptor]
ON [datavalidation].[ValidationRule] ([SeverityDescriptorId] ASC)
GO

ALTER TABLE [datavalidation].[ValidationRule] WITH CHECK ADD CONSTRAINT [FK_ValidationRule_ValidationLogicTypeDescriptor] FOREIGN KEY ([ValidationLogicTypeDescriptorId])
REFERENCES [datavalidation].[ValidationLogicTypeDescriptor] ([ValidationLogicTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationRule_ValidationLogicTypeDescriptor]
ON [datavalidation].[ValidationRule] ([ValidationLogicTypeDescriptorId] ASC)
GO

ALTER TABLE [datavalidation].[ValidationRun] WITH CHECK ADD CONSTRAINT [FK_ValidationRun_RunStatusDescriptor] FOREIGN KEY ([RunStatusDescriptorId])
REFERENCES [datavalidation].[RunStatusDescriptor] ([RunStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationRun_RunStatusDescriptor]
ON [datavalidation].[ValidationRun] ([RunStatusDescriptorId] ASC)
GO

