-- Extended Properties [edfixvalidations].[RuleStatusDescriptor] --
COMMENT ON TABLE edfixvalidations.RuleStatusDescriptor IS 'The status of a validation rule.';
COMMENT ON COLUMN edfixvalidations.RuleStatusDescriptor.RuleStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [edfixvalidations].[RunStatusDescriptor] --
COMMENT ON TABLE edfixvalidations.RunStatusDescriptor IS 'The status of the validation run.';
COMMENT ON COLUMN edfixvalidations.RunStatusDescriptor.RunStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [edfixvalidations].[SeverityDescriptor] --
COMMENT ON TABLE edfixvalidations.SeverityDescriptor IS 'The level of validation error';
COMMENT ON COLUMN edfixvalidations.SeverityDescriptor.SeverityDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [edfixvalidations].[ValidationLogicTypeDescriptor] --
COMMENT ON TABLE edfixvalidations.ValidationLogicTypeDescriptor IS 'The specific programing language (or pseudo-code) used to specify the rule';
COMMENT ON COLUMN edfixvalidations.ValidationLogicTypeDescriptor.ValidationLogicTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [edfixvalidations].[ValidationResult] --
COMMENT ON TABLE edfixvalidations.ValidationResult IS 'A specific example of a situation that has been identified in a validation run.';
COMMENT ON COLUMN edfixvalidations.ValidationResult.ResourceType IS 'Tht type of reference identified with the ReferenceId.';
COMMENT ON COLUMN edfixvalidations.ValidationResult.ResultIdentifier IS 'An identifier for this validation result, unique within the validation run.';
COMMENT ON COLUMN edfixvalidations.ValidationResult.RuleIdentifier IS 'uniquely identifies a rule in a Collection';
COMMENT ON COLUMN edfixvalidations.ValidationResult.RuleSource IS 'Collection of validation rule.';
COMMENT ON COLUMN edfixvalidations.ValidationResult.RunIdentifier IS 'An identifier for the validation run that wil differentiate it from other validation runs from the same engine on the same Ods.';
COMMENT ON COLUMN edfixvalidations.ValidationResult.Host IS 'A reference to the EdFi Ods that the validation egine ran agianst.';
COMMENT ON COLUMN edfixvalidations.ValidationResult.RuleEngine IS 'A reference to the specific rules engine that ran the validation.';
COMMENT ON COLUMN edfixvalidations.ValidationResult.ResourceId IS 'An identifier for the resource related to this validation result.';
COMMENT ON COLUMN edfixvalidations.ValidationResult.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edfixvalidations.ValidationResult.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN edfixvalidations.ValidationResult.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN edfixvalidations.ValidationResult.Namespace IS 'The namespace that this validation result is associatied with. This could be used to control access.';

-- Extended Properties [edfixvalidations].[ValidationResultAdditionalContext] --
COMMENT ON TABLE edfixvalidations.ValidationResultAdditionalContext IS 'All of the remaining details from the validation results in a JSON string.';
COMMENT ON COLUMN edfixvalidations.ValidationResultAdditionalContext.IdentificationCode IS 'Labels what the data represents.';
COMMENT ON COLUMN edfixvalidations.ValidationResultAdditionalContext.ResourceType IS 'Tht type of reference identified with the ReferenceId.';
COMMENT ON COLUMN edfixvalidations.ValidationResultAdditionalContext.ResultIdentifier IS 'An identifier for this validation result, unique within the validation run.';
COMMENT ON COLUMN edfixvalidations.ValidationResultAdditionalContext.CustomizationValue IS 'Provides the actual value of the data.';

-- Extended Properties [edfixvalidations].[ValidationRule] --
COMMENT ON TABLE edfixvalidations.ValidationRule IS 'A rule that will find specific examples of invalid data.';
COMMENT ON COLUMN edfixvalidations.ValidationRule.RuleIdentifier IS 'uniquely identifies a rule in a Collection';
COMMENT ON COLUMN edfixvalidations.ValidationRule.RuleSource IS 'Collection of validation rule.';
COMMENT ON COLUMN edfixvalidations.ValidationRule.HelpUrl IS 'A link to more information about the rule and how to resolve it.';
COMMENT ON COLUMN edfixvalidations.ValidationRule.ShortDescription IS 'This is non-structured ASCII text that will include the short details that were used in the evaluation of the validation rule.';
COMMENT ON COLUMN edfixvalidations.ValidationRule.Description IS 'This is non-structured ASCII text that will include the verbose details that were used in the evaluation of the validation rule.';
COMMENT ON COLUMN edfixvalidations.ValidationRule.RuleStatusDescriptorId IS 'The status of a validation rule.';
COMMENT ON COLUMN edfixvalidations.ValidationRule.Category IS 'The category of the rule.';
COMMENT ON COLUMN edfixvalidations.ValidationRule.SeverityDescriptorId IS 'The level of validation error';
COMMENT ON COLUMN edfixvalidations.ValidationRule.ExternalRuleId IS 'A reference to an external id for the rule.';
COMMENT ON COLUMN edfixvalidations.ValidationRule.ValidationLogicTypeDescriptorId IS 'The specific programing language (or pseudo-code) used to specify the rule';
COMMENT ON COLUMN edfixvalidations.ValidationRule.ValidationLogic IS 'If applicable, the SQL statement that identifies the validation situation.';

-- Extended Properties [edfixvalidations].[ValidationRun] --
COMMENT ON TABLE edfixvalidations.ValidationRun IS 'A run of a validation engine.';
COMMENT ON COLUMN edfixvalidations.ValidationRun.Host IS 'A reference to the EdFi Ods that the validation egine ran agianst.';
COMMENT ON COLUMN edfixvalidations.ValidationRun.RuleEngine IS 'A reference to the specific rules engine that ran the validation.';
COMMENT ON COLUMN edfixvalidations.ValidationRun.RunIdentifier IS 'An identifier for the validation run that wil differentiate it from other validation runs from the same engine on the same Ods.';
COMMENT ON COLUMN edfixvalidations.ValidationRun.RunStartDateTime IS 'The datetime that the validation run started, as recorded by the engine';
COMMENT ON COLUMN edfixvalidations.ValidationRun.RunFinishDateTime IS 'The datetime that the validation run finished, as recorded by the engine';
COMMENT ON COLUMN edfixvalidations.ValidationRun.RunStatusDescriptorId IS 'The status of the validation run.';

