-- Extended Properties [datavalidation].[RuleStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of a validation rule.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'RuleStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'RuleStatusDescriptor', @level2type=N'COLUMN', @level2name=N'RuleStatusDescriptorId'
GO

-- Extended Properties [datavalidation].[RunStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of the validation run.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'RunStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'RunStatusDescriptor', @level2type=N'COLUMN', @level2name=N'RunStatusDescriptorId'
GO

-- Extended Properties [datavalidation].[SeverityDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of validation error', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'SeverityDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'SeverityDescriptor', @level2type=N'COLUMN', @level2name=N'SeverityDescriptorId'
GO

-- Extended Properties [datavalidation].[ValidationLogicTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The specific programing language (or pseudo-code) used to specify the rule', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationLogicTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationLogicTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ValidationLogicTypeDescriptorId'
GO

-- Extended Properties [datavalidation].[ValidationResult] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specific example of a situation that has been identified in a validation run.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tht type of reference identified with the ReferenceId.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResult', @level2type=N'COLUMN', @level2name=N'ResourceType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An identifier for this validation result, unique within the validation run.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResult', @level2type=N'COLUMN', @level2name=N'ResultIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'uniquely identifies a rule in a Collection', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResult', @level2type=N'COLUMN', @level2name=N'RuleIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of validation rule.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResult', @level2type=N'COLUMN', @level2name=N'RuleSource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An identifier for the validation run that wil differentiate it from other validation runs from the same engine on the same Ods.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResult', @level2type=N'COLUMN', @level2name=N'RunIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A reference to the EdFi Ods that the validation egine ran agianst.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResult', @level2type=N'COLUMN', @level2name=N'Host'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A reference to the specific rules engine that ran the validation.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResult', @level2type=N'COLUMN', @level2name=N'RuleEngine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An identifier for the resource related to this validation result.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResult', @level2type=N'COLUMN', @level2name=N'ResourceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResult', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResult', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResult', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The namespace that this validation result is associatied with. This could be used to control access.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResult', @level2type=N'COLUMN', @level2name=N'Namespace'
GO

-- Extended Properties [datavalidation].[ValidationResultAdditionalContext] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'All of the remaining details from the validation results in a JSON string.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResultAdditionalContext'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Labels what the data represents.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResultAdditionalContext', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tht type of reference identified with the ReferenceId.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResultAdditionalContext', @level2type=N'COLUMN', @level2name=N'ResourceType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An identifier for this validation result, unique within the validation run.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResultAdditionalContext', @level2type=N'COLUMN', @level2name=N'ResultIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Provides the actual value of the data.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationResultAdditionalContext', @level2type=N'COLUMN', @level2name=N'CustomizationValue'
GO

-- Extended Properties [datavalidation].[ValidationRule] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A rule that will find specific examples of invalid data.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'uniquely identifies a rule in a Collection', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRule', @level2type=N'COLUMN', @level2name=N'RuleIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of validation rule.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRule', @level2type=N'COLUMN', @level2name=N'RuleSource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A link to more information about the rule and how to resolve it.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRule', @level2type=N'COLUMN', @level2name=N'HelpUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is non-structured ASCII text that will include the short details that were used in the evaluation of the validation rule.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRule', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is non-structured ASCII text that will include the verbose details that were used in the evaluation of the validation rule.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRule', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of a validation rule.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRule', @level2type=N'COLUMN', @level2name=N'RuleStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the rule.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRule', @level2type=N'COLUMN', @level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of validation error', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRule', @level2type=N'COLUMN', @level2name=N'SeverityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A reference to an external id for the rule.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRule', @level2type=N'COLUMN', @level2name=N'ExternalRuleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The specific programing language (or pseudo-code) used to specify the rule', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRule', @level2type=N'COLUMN', @level2name=N'ValidationLogicTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If applicable, the SQL statement that identifies the validation situation.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRule', @level2type=N'COLUMN', @level2name=N'ValidationLogic'
GO

-- Extended Properties [datavalidation].[ValidationRun] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A run of a validation engine.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRun'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A reference to the EdFi Ods that the validation egine ran agianst.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRun', @level2type=N'COLUMN', @level2name=N'Host'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A reference to the specific rules engine that ran the validation.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRun', @level2type=N'COLUMN', @level2name=N'RuleEngine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An identifier for the validation run that wil differentiate it from other validation runs from the same engine on the same Ods.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRun', @level2type=N'COLUMN', @level2name=N'RunIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datetime that the validation run started, as recorded by the engine', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRun', @level2type=N'COLUMN', @level2name=N'RunStartDateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datetime that the validation run finished, as recorded by the engine', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRun', @level2type=N'COLUMN', @level2name=N'RunFinishDateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of the validation run.', @level0type=N'SCHEMA', @level0name=N'datavalidation', @level1type=N'TABLE', @level1name=N'ValidationRun', @level2type=N'COLUMN', @level2name=N'RunStatusDescriptorId'
GO

