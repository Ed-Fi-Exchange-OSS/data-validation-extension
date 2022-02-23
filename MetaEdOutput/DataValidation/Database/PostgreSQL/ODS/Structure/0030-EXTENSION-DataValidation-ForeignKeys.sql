ALTER TABLE datavalidation.ErrorSeverityLevelDescriptor ADD CONSTRAINT FK_84fc72_Descriptor FOREIGN KEY (ErrorSeverityLevelDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE datavalidation.RuleStatusDescriptor ADD CONSTRAINT FK_61fb33_Descriptor FOREIGN KEY (RuleStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE datavalidation.ValidationLogicTypeDescriptor ADD CONSTRAINT FK_007cb0_Descriptor FOREIGN KEY (ValidationLogicTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE datavalidation.ValidationResult ADD CONSTRAINT FK_034d3b_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_034d3b_EducationOrganization
ON datavalidation.ValidationResult (EducationOrganizationId ASC);

ALTER TABLE datavalidation.ValidationResult ADD CONSTRAINT FK_034d3b_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

CREATE INDEX FK_034d3b_Staff
ON datavalidation.ValidationResult (StaffUSI ASC);

ALTER TABLE datavalidation.ValidationResult ADD CONSTRAINT FK_034d3b_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_034d3b_Student
ON datavalidation.ValidationResult (StudentUSI ASC);

ALTER TABLE datavalidation.ValidationResult ADD CONSTRAINT FK_034d3b_ValidationRule FOREIGN KEY (CollectionIdentifier, RuleIdentifier)
REFERENCES datavalidation.ValidationRule (CollectionIdentifier, RuleIdentifier)
;

CREATE INDEX FK_034d3b_ValidationRule
ON datavalidation.ValidationResult (CollectionIdentifier ASC, RuleIdentifier ASC);

ALTER TABLE datavalidation.ValidationResult ADD CONSTRAINT FK_034d3b_ValidationRun FOREIGN KEY (CollectionIdentifier, ExaminedOds, RuleEngine, RunIdentifier)
REFERENCES datavalidation.ValidationRun (CollectionIdentifier, ExaminedOds, RuleEngine, RunIdentifier)
;

CREATE INDEX FK_034d3b_ValidationRun
ON datavalidation.ValidationResult (CollectionIdentifier ASC, ExaminedOds ASC, RuleEngine ASC, RunIdentifier ASC);

ALTER TABLE datavalidation.ValidationRule ADD CONSTRAINT FK_7a797e_ErrorSeverityLevelDescriptor FOREIGN KEY (ErrorSeverityLevelDescriptorId)
REFERENCES datavalidation.ErrorSeverityLevelDescriptor (ErrorSeverityLevelDescriptorId)
;

CREATE INDEX FK_7a797e_ErrorSeverityLevelDescriptor
ON datavalidation.ValidationRule (ErrorSeverityLevelDescriptorId ASC);

ALTER TABLE datavalidation.ValidationRule ADD CONSTRAINT FK_7a797e_RuleStatusDescriptor FOREIGN KEY (RuleStatusDescriptorId)
REFERENCES datavalidation.RuleStatusDescriptor (RuleStatusDescriptorId)
;

CREATE INDEX FK_7a797e_RuleStatusDescriptor
ON datavalidation.ValidationRule (RuleStatusDescriptorId ASC);

ALTER TABLE datavalidation.ValidationRule ADD CONSTRAINT FK_7a797e_ValidationLogicTypeDescriptor FOREIGN KEY (ValidationLogicTypeDescriptorId)
REFERENCES datavalidation.ValidationLogicTypeDescriptor (ValidationLogicTypeDescriptorId)
;

CREATE INDEX FK_7a797e_ValidationLogicTypeDescriptor
ON datavalidation.ValidationRule (ValidationLogicTypeDescriptorId ASC);

ALTER TABLE datavalidation.ValidationRule ADD CONSTRAINT FK_7a797e_ValidationRuleCollection FOREIGN KEY (CollectionIdentifier)
REFERENCES datavalidation.ValidationRuleCollection (CollectionIdentifier)
;

CREATE INDEX FK_7a797e_ValidationRuleCollection
ON datavalidation.ValidationRule (CollectionIdentifier ASC);

ALTER TABLE datavalidation.ValidationRun ADD CONSTRAINT FK_cb5482_ValidationRuleCollection FOREIGN KEY (CollectionIdentifier)
REFERENCES datavalidation.ValidationRuleCollection (CollectionIdentifier)
;

CREATE INDEX FK_cb5482_ValidationRuleCollection
ON datavalidation.ValidationRun (CollectionIdentifier ASC);

ALTER TABLE datavalidation.ValidationRun ADD CONSTRAINT FK_cb5482_ValidationRunStatusDescriptor FOREIGN KEY (ValidationRunStatusDescriptorId)
REFERENCES datavalidation.ValidationRunStatusDescriptor (ValidationRunStatusDescriptorId)
;

CREATE INDEX FK_cb5482_ValidationRunStatusDescriptor
ON datavalidation.ValidationRun (ValidationRunStatusDescriptorId ASC);

ALTER TABLE datavalidation.ValidationRunStatusDescriptor ADD CONSTRAINT FK_c63f34_Descriptor FOREIGN KEY (ValidationRunStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

