ALTER TABLE edfixvalidations.RuleStatusDescriptor ADD CONSTRAINT FK_61fb33_Descriptor FOREIGN KEY (RuleStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE edfixvalidations.RunStatusDescriptor ADD CONSTRAINT FK_dd5cf9_Descriptor FOREIGN KEY (RunStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE edfixvalidations.SeverityDescriptor ADD CONSTRAINT FK_97a343_Descriptor FOREIGN KEY (SeverityDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE edfixvalidations.ValidationLogicTypeDescriptor ADD CONSTRAINT FK_007cb0_Descriptor FOREIGN KEY (ValidationLogicTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE edfixvalidations.ValidationResult ADD CONSTRAINT FK_034d3b_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_034d3b_EducationOrganization
ON edfixvalidations.ValidationResult (EducationOrganizationId ASC);

ALTER TABLE edfixvalidations.ValidationResult ADD CONSTRAINT FK_034d3b_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

CREATE INDEX FK_034d3b_Staff
ON edfixvalidations.ValidationResult (StaffUSI ASC);

ALTER TABLE edfixvalidations.ValidationResult ADD CONSTRAINT FK_034d3b_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_034d3b_Student
ON edfixvalidations.ValidationResult (StudentUSI ASC);

ALTER TABLE edfixvalidations.ValidationResult ADD CONSTRAINT FK_034d3b_ValidationRule FOREIGN KEY (RuleIdentifier, RuleSource)
REFERENCES edfixvalidations.ValidationRule (RuleIdentifier, RuleSource)
;

CREATE INDEX FK_034d3b_ValidationRule
ON edfixvalidations.ValidationResult (RuleIdentifier ASC, RuleSource ASC);

ALTER TABLE edfixvalidations.ValidationResult ADD CONSTRAINT FK_034d3b_ValidationRun FOREIGN KEY (Host, RuleEngine, RunIdentifier)
REFERENCES edfixvalidations.ValidationRun (Host, RuleEngine, RunIdentifier)
;

CREATE INDEX FK_034d3b_ValidationRun
ON edfixvalidations.ValidationResult (Host ASC, RuleEngine ASC, RunIdentifier ASC);

ALTER TABLE edfixvalidations.ValidationResultAdditionalContext ADD CONSTRAINT FK_6555d2_ValidationResult FOREIGN KEY (ResourceType, ResultIdentifier)
REFERENCES edfixvalidations.ValidationResult (ResourceType, ResultIdentifier)
ON DELETE CASCADE
;

CREATE INDEX FK_6555d2_ValidationResult
ON edfixvalidations.ValidationResultAdditionalContext (ResourceType ASC, ResultIdentifier ASC);

ALTER TABLE edfixvalidations.ValidationRule ADD CONSTRAINT FK_7a797e_RuleStatusDescriptor FOREIGN KEY (RuleStatusDescriptorId)
REFERENCES edfixvalidations.RuleStatusDescriptor (RuleStatusDescriptorId)
;

CREATE INDEX FK_7a797e_RuleStatusDescriptor
ON edfixvalidations.ValidationRule (RuleStatusDescriptorId ASC);

ALTER TABLE edfixvalidations.ValidationRule ADD CONSTRAINT FK_7a797e_SeverityDescriptor FOREIGN KEY (SeverityDescriptorId)
REFERENCES edfixvalidations.SeverityDescriptor (SeverityDescriptorId)
;

CREATE INDEX FK_7a797e_SeverityDescriptor
ON edfixvalidations.ValidationRule (SeverityDescriptorId ASC);

ALTER TABLE edfixvalidations.ValidationRule ADD CONSTRAINT FK_7a797e_ValidationLogicTypeDescriptor FOREIGN KEY (ValidationLogicTypeDescriptorId)
REFERENCES edfixvalidations.ValidationLogicTypeDescriptor (ValidationLogicTypeDescriptorId)
;

CREATE INDEX FK_7a797e_ValidationLogicTypeDescriptor
ON edfixvalidations.ValidationRule (ValidationLogicTypeDescriptorId ASC);

ALTER TABLE edfixvalidations.ValidationRun ADD CONSTRAINT FK_cb5482_RunStatusDescriptor FOREIGN KEY (RunStatusDescriptorId)
REFERENCES edfixvalidations.RunStatusDescriptor (RunStatusDescriptorId)
;

CREATE INDEX FK_cb5482_RunStatusDescriptor
ON edfixvalidations.ValidationRun (RunStatusDescriptorId ASC);

