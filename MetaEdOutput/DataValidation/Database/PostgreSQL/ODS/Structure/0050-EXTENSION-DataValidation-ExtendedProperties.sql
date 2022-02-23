-- Extended Properties [datavalidation].[ErrorSeverityLevelDescriptor] --
COMMENT ON TABLE datavalidation.ErrorSeverityLevelDescriptor IS 'The level of validation error';
COMMENT ON COLUMN datavalidation.ErrorSeverityLevelDescriptor.ErrorSeverityLevelDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [datavalidation].[RuleStatusDescriptor] --
COMMENT ON TABLE datavalidation.RuleStatusDescriptor IS 'The status of a validation rule.';
COMMENT ON COLUMN datavalidation.RuleStatusDescriptor.RuleStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [datavalidation].[ValidationLogicTypeDescriptor] --
COMMENT ON TABLE datavalidation.ValidationLogicTypeDescriptor IS 'The specific programing language (or pseudo-code) used to specify the rule';
COMMENT ON COLUMN datavalidation.ValidationLogicTypeDescriptor.ValidationLogicTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [datavalidation].[ValidationResult] --
COMMENT ON TABLE datavalidation.ValidationResult IS 'A specific example of a situation that has been identified in a validation run.';
COMMENT ON COLUMN datavalidation.ValidationResult.ValidationResultIdentifier IS 'An identifier for this validation result, unique within the validation run.';
COMMENT ON COLUMN datavalidation.ValidationResult.RuleIdentifier IS 'uniquely identifies a rule in a Collection';
COMMENT ON COLUMN datavalidation.ValidationResult.CollectionIdentifier IS 'Rule coolection identifier.';
COMMENT ON COLUMN datavalidation.ValidationResult.RuleEngine IS 'A reference to the specific rules engine that ran the validation.';
COMMENT ON COLUMN datavalidation.ValidationResult.ExaminedOds IS 'A reference to the EdFi Ods that the validation egine ran agianst.';
COMMENT ON COLUMN datavalidation.ValidationResult.RunIdentifier IS 'An identifier for the validation run that wil differentiate it from other validation runs from the same engine on the same Ods.';
COMMENT ON COLUMN datavalidation.ValidationResult.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN datavalidation.ValidationResult.Namespace IS 'The namespace that this validation result is associatied with. This could be used to control access.';
COMMENT ON COLUMN datavalidation.ValidationResult.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN datavalidation.ValidationResult.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN datavalidation.ValidationResult.OtherDetails IS 'All of the remaining details from the validation results in a JSON string.';

-- Extended Properties [datavalidation].[ValidationRule] --
COMMENT ON TABLE datavalidation.ValidationRule IS 'A rule that will find specific examples of invalid data.';
COMMENT ON COLUMN datavalidation.ValidationRule.CollectionIdentifier IS 'Rule coolection identifier.';
COMMENT ON COLUMN datavalidation.ValidationRule.RuleIdentifier IS 'uniquely identifies a rule in a Collection';
COMMENT ON COLUMN datavalidation.ValidationRule.ExternalruleCode IS 'A reference to an external id for the rule.';
COMMENT ON COLUMN datavalidation.ValidationRule.ResourceType IS 'The EdFi resource type that this rule relates to (other then EducationOrganization, Student, or Staff)';
COMMENT ON COLUMN datavalidation.ValidationRule.HelpUrl IS 'A link to more information about the rule and how to resolve it.';
COMMENT ON COLUMN datavalidation.ValidationRule.Description IS 'This is non-structured ASCII text that will include the short details that were used in the evaluation of the validation rule.';
COMMENT ON COLUMN datavalidation.ValidationRule.ShortDescription IS 'This is non-structured ASCII text that will include the short details that were used in the evaluation of the validation rule.';
COMMENT ON COLUMN datavalidation.ValidationRule.RuleStatusDescriptorId IS 'The status of a validation rule.';
COMMENT ON COLUMN datavalidation.ValidationRule.Category IS 'The category of the rule.';
COMMENT ON COLUMN datavalidation.ValidationRule.ErrorSeverityLevelDescriptorId IS 'The level of validation error';
COMMENT ON COLUMN datavalidation.ValidationRule.ValidationLogicTypeDescriptorId IS 'The specific programing language (or pseudo-code) used to specify the rule';
COMMENT ON COLUMN datavalidation.ValidationRule.ValidationLogic IS 'If applicable, the SQL statement that identifies the validation situation.';

-- Extended Properties [datavalidation].[ValidationRuleCollection] --
COMMENT ON TABLE datavalidation.ValidationRuleCollection IS 'Collection of validation rule.';
COMMENT ON COLUMN datavalidation.ValidationRuleCollection.CollectionIdentifier IS 'Rule coolection identifier.';
COMMENT ON COLUMN datavalidation.ValidationRuleCollection.CollectionDescription IS 'Rule collection description';

-- Extended Properties [datavalidation].[ValidationRun] --
COMMENT ON TABLE datavalidation.ValidationRun IS 'A run of a validation engine.';
COMMENT ON COLUMN datavalidation.ValidationRun.CollectionIdentifier IS 'Rule coolection identifier.';
COMMENT ON COLUMN datavalidation.ValidationRun.ExaminedOds IS 'A reference to the EdFi Ods that the validation egine ran agianst.';
COMMENT ON COLUMN datavalidation.ValidationRun.RuleEngine IS 'A reference to the specific rules engine that ran the validation.';
COMMENT ON COLUMN datavalidation.ValidationRun.RunIdentifier IS 'An identifier for the validation run that wil differentiate it from other validation runs from the same engine on the same Ods.';
COMMENT ON COLUMN datavalidation.ValidationRun.ValidationRunStatusDescriptorId IS 'The status of the validation run.';
COMMENT ON COLUMN datavalidation.ValidationRun.StartDateTime IS 'The datetime that the validation run started, as recorded by the engine';
COMMENT ON COLUMN datavalidation.ValidationRun.FinishDateTime IS 'The datetime that the validation run finished, as recorded by the engine';

-- Extended Properties [datavalidation].[ValidationRunStatusDescriptor] --
COMMENT ON TABLE datavalidation.ValidationRunStatusDescriptor IS 'The status of the validation run.';
COMMENT ON COLUMN datavalidation.ValidationRunStatusDescriptor.ValidationRunStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

