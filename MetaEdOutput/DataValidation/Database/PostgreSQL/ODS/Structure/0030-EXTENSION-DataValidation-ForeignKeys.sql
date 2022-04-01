ALTER TABLE datavalidation.RuleStatusDescriptor ADD CONSTRAINT FK_61fb33_Descriptor FOREIGN KEY (RuleStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE datavalidation.RunStatusDescriptor ADD CONSTRAINT FK_dd5cf9_Descriptor FOREIGN KEY (RunStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE datavalidation.SeverityDescriptor ADD CONSTRAINT FK_97a343_Descriptor FOREIGN KEY (SeverityDescriptorId)
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

ALTER TABLE datavalidation.ValidationResult ADD CONSTRAINT FK_034d3b_ValidationRule FOREIGN KEY (RuleIdentifier, RuleSource)
REFERENCES datavalidation.ValidationRule (RuleIdentifier, RuleSource)
;

CREATE INDEX FK_034d3b_ValidationRule
ON datavalidation.ValidationResult (RuleIdentifier ASC, RuleSource ASC);

ALTER TABLE datavalidation.ValidationResult ADD CONSTRAINT FK_034d3b_ValidationRun FOREIGN KEY (Host, RuleEngine, RunIdentifier)
REFERENCES datavalidation.ValidationRun (Host, RuleEngine, RunIdentifier)
;

CREATE INDEX FK_034d3b_ValidationRun
ON datavalidation.ValidationResult (Host ASC, RuleEngine ASC, RunIdentifier ASC);

ALTER TABLE datavalidation.ValidationResultAdditionalContext ADD CONSTRAINT FK_6555d2_ValidationResult FOREIGN KEY (ResourceType, ResultIdentifier)
REFERENCES datavalidation.ValidationResult (ResourceType, ResultIdentifier)
ON DELETE CASCADE
;

CREATE INDEX FK_6555d2_ValidationResult
ON datavalidation.ValidationResultAdditionalContext (ResourceType ASC, ResultIdentifier ASC);

ALTER TABLE datavalidation.ValidationRule ADD CONSTRAINT FK_7a797e_RuleStatusDescriptor FOREIGN KEY (RuleStatusDescriptorId)
REFERENCES datavalidation.RuleStatusDescriptor (RuleStatusDescriptorId)
;

CREATE INDEX FK_7a797e_RuleStatusDescriptor
ON datavalidation.ValidationRule (RuleStatusDescriptorId ASC);

ALTER TABLE datavalidation.ValidationRule ADD CONSTRAINT FK_7a797e_SeverityDescriptor FOREIGN KEY (SeverityDescriptorId)
REFERENCES datavalidation.SeverityDescriptor (SeverityDescriptorId)
;

CREATE INDEX FK_7a797e_SeverityDescriptor
ON datavalidation.ValidationRule (SeverityDescriptorId ASC);

ALTER TABLE datavalidation.ValidationRule ADD CONSTRAINT FK_7a797e_ValidationLogicTypeDescriptor FOREIGN KEY (ValidationLogicTypeDescriptorId)
REFERENCES datavalidation.ValidationLogicTypeDescriptor (ValidationLogicTypeDescriptorId)
;

CREATE INDEX FK_7a797e_ValidationLogicTypeDescriptor
ON datavalidation.ValidationRule (ValidationLogicTypeDescriptorId ASC);

ALTER TABLE datavalidation.ValidationRun ADD CONSTRAINT FK_cb5482_RunStatusDescriptor FOREIGN KEY (RunStatusDescriptorId)
REFERENCES datavalidation.RunStatusDescriptor (RunStatusDescriptorId)
;

CREATE INDEX FK_cb5482_RunStatusDescriptor
ON datavalidation.ValidationRun (RunStatusDescriptorId ASC);

