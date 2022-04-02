CREATE TABLE tracked_deletes_datavalidation.RuleStatusDescriptor
(
       RuleStatusDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT RuleStatusDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_datavalidation.RunStatusDescriptor
(
       RunStatusDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT RunStatusDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_datavalidation.SeverityDescriptor
(
       SeverityDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT SeverityDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_datavalidation.ValidationLogicTypeDescriptor
(
       ValidationLogicTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ValidationLogicTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_datavalidation.ValidationResult
(
       ResourceType VARCHAR(100) NOT NULL,
       ResultIdentifier VARCHAR(100) NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ValidationResult_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_datavalidation.ValidationRule
(
       RuleIdentifier VARCHAR(100) NOT NULL,
       RuleSource VARCHAR(100) NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ValidationRule_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_datavalidation.ValidationRun
(
       Host VARCHAR(100) NOT NULL,
       RuleEngine VARCHAR(100) NOT NULL,
       RunIdentifier VARCHAR(100) NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ValidationRun_PK PRIMARY KEY (ChangeVersion)
);

