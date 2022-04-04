-- Extended Properties [datavalidation].[RuleStatusDescriptor] --
COMMENT ON TABLE datavalidation.RuleStatusDescriptor IS 'The status of a validation rule.';
COMMENT ON COLUMN datavalidation.RuleStatusDescriptor.RuleStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [datavalidation].[RunStatusDescriptor] --
COMMENT ON TABLE datavalidation.RunStatusDescriptor IS 'The status of the validation run.';
COMMENT ON COLUMN datavalidation.RunStatusDescriptor.RunStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [datavalidation].[SeverityDescriptor] --
COMMENT ON TABLE datavalidation.SeverityDescriptor IS 'The level of validation error';
COMMENT ON COLUMN datavalidation.SeverityDescriptor.SeverityDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [datavalidation].[ValidationLogicTypeDescriptor] --
COMMENT ON TABLE datavalidation.ValidationLogicTypeDescriptor IS 'The specific programing language (or pseudo-code) used to specify the rule';
COMMENT ON COLUMN datavalidation.ValidationLogicTypeDescriptor.ValidationLogicTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [datavalidation].[ValidationResult] --
COMMENT ON TABLE datavalidation.ValidationResult IS 'A specific example of a situation that has been identified in a validation run.';
COMMENT ON COLUMN datavalidation.ValidationResult.ResourceType IS 'Tht type of reference identified with the ReferenceId.';
COMMENT ON COLUMN datavalidation.ValidationResult.ResultIdentifier IS 'An identifier for this validation result, unique within the validation run.';
COMMENT ON COLUMN datavalidation.ValidationResult.RuleIdentifier IS 'uniquely identifies a rule in a Collection';
COMMENT ON COLUMN datavalidation.ValidationResult.RuleSource IS 'Collection of validation rule.';
COMMENT ON COLUMN datavalidation.ValidationResult.RunIdentifier IS 'An identifier for the validation run that wil differentiate it from other validation runs from the same engine on the same Ods.';
COMMENT ON COLUMN datavalidation.ValidationResult.Host IS 'A reference to the EdFi Ods that the validation egine ran agianst.';
COMMENT ON COLUMN datavalidation.ValidationResult.RuleEngine IS 'A reference to the specific rules engine that ran the validation.';
COMMENT ON COLUMN datavalidation.ValidationResult.ResourceId IS 'An identifier for the resource related to this validation result.';
COMMENT ON COLUMN datavalidation.ValidationResult.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN datavalidation.ValidationResult.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN datavalidation.ValidationResult.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN datavalidation.ValidationResult.Namespace IS 'The namespace that this validation result is associatied with. This could be used to control access.';

-- Extended Properties [datavalidation].[ValidationResultAdditionalContext] --
COMMENT ON TABLE datavalidation.ValidationResultAdditionalContext IS 'All of the remaining details from the validation results in a JSON string.';
COMMENT ON COLUMN datavalidation.ValidationResultAdditionalContext.IdentificationCode IS 'Labels what the data represents.';
COMMENT ON COLUMN datavalidation.ValidationResultAdditionalContext.ResourceType IS 'Tht type of reference identified with the ReferenceId.';
COMMENT ON COLUMN datavalidation.ValidationResultAdditionalContext.ResultIdentifier IS 'An identifier for this validation result, unique within the validation run.';
COMMENT ON COLUMN datavalidation.ValidationResultAdditionalContext.CustomizationValue IS 'Provides the actual value of the data.';

-- Extended Properties [datavalidation].[ValidationRule] --
COMMENT ON TABLE datavalidation.ValidationRule IS 'A rule that will find specific examples of invalid data.';
COMMENT ON COLUMN datavalidation.ValidationRule.RuleIdentifier IS 'uniquely identifies a rule in a Collection';
COMMENT ON COLUMN datavalidation.ValidationRule.RuleSource IS 'Collection of validation rule.';
COMMENT ON COLUMN datavalidation.ValidationRule.HelpUrl IS 'A link to more information about the rule and how to resolve it.';
COMMENT ON COLUMN datavalidation.ValidationRule.ShortDescription IS 'This is non-structured ASCII text that will include the short details that were used in the evaluation of the validation rule.';
COMMENT ON COLUMN datavalidation.ValidationRule.Description IS 'This is non-structured ASCII text that will include the verbose details that were used in the evaluation of the validation rule.';
COMMENT ON COLUMN datavalidation.ValidationRule.RuleStatusDescriptorId IS 'The status of a validation rule.';
COMMENT ON COLUMN datavalidation.ValidationRule.Category IS 'The category of the rule.';
COMMENT ON COLUMN datavalidation.ValidationRule.SeverityDescriptorId IS 'The level of validation error';
COMMENT ON COLUMN datavalidation.ValidationRule.ExternalRuleId IS 'A reference to an external id for the rule.';
COMMENT ON COLUMN datavalidation.ValidationRule.ValidationLogicTypeDescriptorId IS 'The specific programing language (or pseudo-code) used to specify the rule';
COMMENT ON COLUMN datavalidation.ValidationRule.ValidationLogic IS 'If applicable, the SQL statement that identifies the validation situation.';

-- Extended Properties [datavalidation].[ValidationRun] --
COMMENT ON TABLE datavalidation.ValidationRun IS 'A run of a validation engine.';
COMMENT ON COLUMN datavalidation.ValidationRun.Host IS 'A reference to the EdFi Ods that the validation egine ran agianst.';
COMMENT ON COLUMN datavalidation.ValidationRun.RuleEngine IS 'A reference to the specific rules engine that ran the validation.';
COMMENT ON COLUMN datavalidation.ValidationRun.RunIdentifier IS 'An identifier for the validation run that wil differentiate it from other validation runs from the same engine on the same Ods.';
COMMENT ON COLUMN datavalidation.ValidationRun.RunStartDateTime IS 'The datetime that the validation run started, as recorded by the engine';
COMMENT ON COLUMN datavalidation.ValidationRun.RunFinishDateTime IS 'The datetime that the validation run finished, as recorded by the engine';
COMMENT ON COLUMN datavalidation.ValidationRun.RunStatusDescriptorId IS 'The status of the validation run.';

