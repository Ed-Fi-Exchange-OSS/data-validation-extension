CREATE TABLE tracked_deletes_datavalidation.ErrorSeverityLevelDescriptor
(
       ErrorSeverityLevelDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ErrorSeverityLevelDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_datavalidation.RuleStatusDescriptor
(
       RuleStatusDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT RuleStatusDescriptor_PK PRIMARY KEY (ChangeVersion)
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
       ValidationResultIdentifier VARCHAR(100) NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ValidationResult_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_datavalidation.ValidationRule
(
       CollectionIdentifier VARCHAR(100) NOT NULL,
       RuleIdentifier VARCHAR(100) NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ValidationRule_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_datavalidation.ValidationRuleCollection
(
       CollectionIdentifier VARCHAR(100) NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ValidationRuleCollection_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_datavalidation.ValidationRun
(
       CollectionIdentifier VARCHAR(100) NOT NULL,
       ExaminedOds VARCHAR(100) NOT NULL,
       RuleEngine VARCHAR(100) NOT NULL,
       RunIdentifier VARCHAR(100) NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ValidationRun_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_datavalidation.ValidationRunStatusDescriptor
(
       ValidationRunStatusDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ValidationRunStatusDescriptor_PK PRIMARY KEY (ChangeVersion)
);

