-- Table datavalidation.RuleStatusDescriptor --
CREATE TABLE datavalidation.RuleStatusDescriptor (
    RuleStatusDescriptorId INT NOT NULL,
    CONSTRAINT RuleStatusDescriptor_PK PRIMARY KEY (RuleStatusDescriptorId)
); 

-- Table datavalidation.RunStatusDescriptor --
CREATE TABLE datavalidation.RunStatusDescriptor (
    RunStatusDescriptorId INT NOT NULL,
    CONSTRAINT RunStatusDescriptor_PK PRIMARY KEY (RunStatusDescriptorId)
); 

-- Table datavalidation.SeverityDescriptor --
CREATE TABLE datavalidation.SeverityDescriptor (
    SeverityDescriptorId INT NOT NULL,
    CONSTRAINT SeverityDescriptor_PK PRIMARY KEY (SeverityDescriptorId)
); 

-- Table datavalidation.ValidationLogicTypeDescriptor --
CREATE TABLE datavalidation.ValidationLogicTypeDescriptor (
    ValidationLogicTypeDescriptorId INT NOT NULL,
    CONSTRAINT ValidationLogicTypeDescriptor_PK PRIMARY KEY (ValidationLogicTypeDescriptorId)
); 

-- Table datavalidation.ValidationResult --
CREATE TABLE datavalidation.ValidationResult (
    ResourceType VARCHAR(100) NOT NULL,
    ResultIdentifier VARCHAR(100) NOT NULL,
    RuleIdentifier VARCHAR(100) NOT NULL,
    RuleSource VARCHAR(100) NOT NULL,
    RunIdentifier VARCHAR(100) NULL,
    Host VARCHAR(100) NULL,
    RuleEngine VARCHAR(100) NULL,
    ResourceId VARCHAR(100) NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NULL,
    StaffUSI INT NULL,
    Namespace VARCHAR(255) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT ValidationResult_PK PRIMARY KEY (ResourceType, ResultIdentifier)
); 
ALTER TABLE datavalidation.ValidationResult ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE datavalidation.ValidationResult ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE datavalidation.ValidationResult ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table datavalidation.ValidationResultAdditionalContext --
CREATE TABLE datavalidation.ValidationResultAdditionalContext (
    IdentificationCode VARCHAR(60) NOT NULL,
    ResourceType VARCHAR(100) NOT NULL,
    ResultIdentifier VARCHAR(100) NOT NULL,
    CustomizationValue VARCHAR(4000) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT ValidationResultAdditionalContext_PK PRIMARY KEY (IdentificationCode, ResourceType, ResultIdentifier)
); 
ALTER TABLE datavalidation.ValidationResultAdditionalContext ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table datavalidation.ValidationRule --
CREATE TABLE datavalidation.ValidationRule (
    RuleIdentifier VARCHAR(100) NOT NULL,
    RuleSource VARCHAR(100) NOT NULL,
    HelpUrl VARCHAR(255) NULL,
    ShortDescription VARCHAR(1024) NULL,
    Description VARCHAR(4000) NULL,
    RuleStatusDescriptorId INT NULL,
    Category VARCHAR(1024) NULL,
    SeverityDescriptorId INT NULL,
    ExternalRuleId VARCHAR(100) NULL,
    ValidationLogicTypeDescriptorId INT NULL,
    ValidationLogic VARCHAR(4000) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT ValidationRule_PK PRIMARY KEY (RuleIdentifier, RuleSource)
); 
ALTER TABLE datavalidation.ValidationRule ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE datavalidation.ValidationRule ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE datavalidation.ValidationRule ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table datavalidation.ValidationRun --
CREATE TABLE datavalidation.ValidationRun (
    Host VARCHAR(100) NOT NULL,
    RuleEngine VARCHAR(100) NOT NULL,
    RunIdentifier VARCHAR(100) NOT NULL,
    RunStartDateTime TIMESTAMP NOT NULL,
    RunFinishDateTime TIMESTAMP NULL,
    RunStatusDescriptorId INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT ValidationRun_PK PRIMARY KEY (Host, RuleEngine, RunIdentifier)
); 
ALTER TABLE datavalidation.ValidationRun ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE datavalidation.ValidationRun ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE datavalidation.ValidationRun ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

