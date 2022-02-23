-- Table datavalidation.ErrorSeverityLevelDescriptor --
CREATE TABLE datavalidation.ErrorSeverityLevelDescriptor (
    ErrorSeverityLevelDescriptorId INT NOT NULL,
    CONSTRAINT ErrorSeverityLevelDescriptor_PK PRIMARY KEY (ErrorSeverityLevelDescriptorId)
); 

-- Table datavalidation.RuleStatusDescriptor --
CREATE TABLE datavalidation.RuleStatusDescriptor (
    RuleStatusDescriptorId INT NOT NULL,
    CONSTRAINT RuleStatusDescriptor_PK PRIMARY KEY (RuleStatusDescriptorId)
); 

-- Table datavalidation.ValidationLogicTypeDescriptor --
CREATE TABLE datavalidation.ValidationLogicTypeDescriptor (
    ValidationLogicTypeDescriptorId INT NOT NULL,
    CONSTRAINT ValidationLogicTypeDescriptor_PK PRIMARY KEY (ValidationLogicTypeDescriptorId)
); 

-- Table datavalidation.ValidationResult --
CREATE TABLE datavalidation.ValidationResult (
    ValidationResultIdentifier VARCHAR(100) NOT NULL,
    RuleIdentifier VARCHAR(100) NOT NULL,
    CollectionIdentifier VARCHAR(100) NOT NULL,
    RuleEngine VARCHAR(100) NULL,
    ExaminedOds VARCHAR(100) NULL,
    RunIdentifier VARCHAR(100) NULL,
    EducationOrganizationId INT NOT NULL,
    Namespace VARCHAR(255) NULL,
    StudentUSI INT NULL,
    StaffUSI INT NULL,
    OtherDetails VARCHAR(1024) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT ValidationResult_PK PRIMARY KEY (ValidationResultIdentifier)
); 
ALTER TABLE datavalidation.ValidationResult ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE datavalidation.ValidationResult ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE datavalidation.ValidationResult ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table datavalidation.ValidationRule --
CREATE TABLE datavalidation.ValidationRule (
    CollectionIdentifier VARCHAR(100) NOT NULL,
    RuleIdentifier VARCHAR(100) NOT NULL,
    ExternalruleCode VARCHAR(100) NULL,
    ResourceType VARCHAR(100) NULL,
    HelpUrl VARCHAR(255) NULL,
    Description VARCHAR(1024) NULL,
    ShortDescription VARCHAR(1024) NULL,
    RuleStatusDescriptorId INT NULL,
    Category VARCHAR(100) NULL,
    ErrorSeverityLevelDescriptorId INT NULL,
    ValidationLogicTypeDescriptorId INT NULL,
    ValidationLogic VARCHAR(1024) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT ValidationRule_PK PRIMARY KEY (CollectionIdentifier, RuleIdentifier)
); 
ALTER TABLE datavalidation.ValidationRule ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE datavalidation.ValidationRule ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE datavalidation.ValidationRule ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table datavalidation.ValidationRuleCollection --
CREATE TABLE datavalidation.ValidationRuleCollection (
    CollectionIdentifier VARCHAR(100) NOT NULL,
    CollectionDescription VARCHAR(255) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT ValidationRuleCollection_PK PRIMARY KEY (CollectionIdentifier)
); 
ALTER TABLE datavalidation.ValidationRuleCollection ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE datavalidation.ValidationRuleCollection ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE datavalidation.ValidationRuleCollection ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table datavalidation.ValidationRun --
CREATE TABLE datavalidation.ValidationRun (
    CollectionIdentifier VARCHAR(100) NOT NULL,
    ExaminedOds VARCHAR(100) NOT NULL,
    RuleEngine VARCHAR(100) NOT NULL,
    RunIdentifier VARCHAR(100) NOT NULL,
    ValidationRunStatusDescriptorId INT NOT NULL,
    StartDateTime TIMESTAMP NOT NULL,
    FinishDateTime TIMESTAMP NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT ValidationRun_PK PRIMARY KEY (CollectionIdentifier, ExaminedOds, RuleEngine, RunIdentifier)
); 
ALTER TABLE datavalidation.ValidationRun ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE datavalidation.ValidationRun ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE datavalidation.ValidationRun ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table datavalidation.ValidationRunStatusDescriptor --
CREATE TABLE datavalidation.ValidationRunStatusDescriptor (
    ValidationRunStatusDescriptorId INT NOT NULL,
    CONSTRAINT ValidationRunStatusDescriptor_PK PRIMARY KEY (ValidationRunStatusDescriptorId)
); 

