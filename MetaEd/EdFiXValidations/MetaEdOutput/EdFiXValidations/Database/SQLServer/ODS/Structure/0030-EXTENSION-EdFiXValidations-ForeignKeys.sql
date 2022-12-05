ALTER TABLE [edfixvalidations].[RuleStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_RuleStatusDescriptor_Descriptor] FOREIGN KEY ([RuleStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [edfixvalidations].[RunStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_RunStatusDescriptor_Descriptor] FOREIGN KEY ([RunStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [edfixvalidations].[SeverityDescriptor] WITH CHECK ADD CONSTRAINT [FK_SeverityDescriptor_Descriptor] FOREIGN KEY ([SeverityDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [edfixvalidations].[ValidationLogicTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ValidationLogicTypeDescriptor_Descriptor] FOREIGN KEY ([ValidationLogicTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [edfixvalidations].[ValidationResult] WITH CHECK ADD CONSTRAINT [FK_ValidationResult_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationResult_EducationOrganization]
ON [edfixvalidations].[ValidationResult] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [edfixvalidations].[ValidationResult] WITH CHECK ADD CONSTRAINT [FK_ValidationResult_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationResult_Staff]
ON [edfixvalidations].[ValidationResult] ([StaffUSI] ASC)
GO

ALTER TABLE [edfixvalidations].[ValidationResult] WITH CHECK ADD CONSTRAINT [FK_ValidationResult_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationResult_Student]
ON [edfixvalidations].[ValidationResult] ([StudentUSI] ASC)
GO

ALTER TABLE [edfixvalidations].[ValidationResult] WITH CHECK ADD CONSTRAINT [FK_ValidationResult_ValidationRule] FOREIGN KEY ([RuleIdentifier], [RuleSource])
REFERENCES [edfixvalidations].[ValidationRule] ([RuleIdentifier], [RuleSource])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationResult_ValidationRule]
ON [edfixvalidations].[ValidationResult] ([RuleIdentifier] ASC, [RuleSource] ASC)
GO

ALTER TABLE [edfixvalidations].[ValidationResult] WITH CHECK ADD CONSTRAINT [FK_ValidationResult_ValidationRun] FOREIGN KEY ([Host], [RuleEngine], [RunIdentifier])
REFERENCES [edfixvalidations].[ValidationRun] ([Host], [RuleEngine], [RunIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationResult_ValidationRun]
ON [edfixvalidations].[ValidationResult] ([Host] ASC, [RuleEngine] ASC, [RunIdentifier] ASC)
GO

ALTER TABLE [edfixvalidations].[ValidationResultAdditionalContext] WITH CHECK ADD CONSTRAINT [FK_ValidationResultAdditionalContext_ValidationResult] FOREIGN KEY ([ResourceType], [ResultIdentifier])
REFERENCES [edfixvalidations].[ValidationResult] ([ResourceType], [ResultIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ValidationResultAdditionalContext_ValidationResult]
ON [edfixvalidations].[ValidationResultAdditionalContext] ([ResourceType] ASC, [ResultIdentifier] ASC)
GO

ALTER TABLE [edfixvalidations].[ValidationRule] WITH CHECK ADD CONSTRAINT [FK_ValidationRule_RuleStatusDescriptor] FOREIGN KEY ([RuleStatusDescriptorId])
REFERENCES [edfixvalidations].[RuleStatusDescriptor] ([RuleStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationRule_RuleStatusDescriptor]
ON [edfixvalidations].[ValidationRule] ([RuleStatusDescriptorId] ASC)
GO

ALTER TABLE [edfixvalidations].[ValidationRule] WITH CHECK ADD CONSTRAINT [FK_ValidationRule_SeverityDescriptor] FOREIGN KEY ([SeverityDescriptorId])
REFERENCES [edfixvalidations].[SeverityDescriptor] ([SeverityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationRule_SeverityDescriptor]
ON [edfixvalidations].[ValidationRule] ([SeverityDescriptorId] ASC)
GO

ALTER TABLE [edfixvalidations].[ValidationRule] WITH CHECK ADD CONSTRAINT [FK_ValidationRule_ValidationLogicTypeDescriptor] FOREIGN KEY ([ValidationLogicTypeDescriptorId])
REFERENCES [edfixvalidations].[ValidationLogicTypeDescriptor] ([ValidationLogicTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationRule_ValidationLogicTypeDescriptor]
ON [edfixvalidations].[ValidationRule] ([ValidationLogicTypeDescriptorId] ASC)
GO

ALTER TABLE [edfixvalidations].[ValidationRun] WITH CHECK ADD CONSTRAINT [FK_ValidationRun_RunStatusDescriptor] FOREIGN KEY ([RunStatusDescriptorId])
REFERENCES [edfixvalidations].[RunStatusDescriptor] ([RunStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ValidationRun_RunStatusDescriptor]
ON [edfixvalidations].[ValidationRun] ([RunStatusDescriptorId] ASC)
GO

