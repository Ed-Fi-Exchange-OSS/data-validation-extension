-- Table edfixvalidations.RuleStatusDescriptor --
CREATE TABLE edfixvalidations.RuleStatusDescriptor (
    RuleStatusDescriptorId INT NOT NULL,
    CONSTRAINT RuleStatusDescriptor_PK PRIMARY KEY (RuleStatusDescriptorId)
); 

-- Table edfixvalidations.RunStatusDescriptor --
CREATE TABLE edfixvalidations.RunStatusDescriptor (
    RunStatusDescriptorId INT NOT NULL,
    CONSTRAINT RunStatusDescriptor_PK PRIMARY KEY (RunStatusDescriptorId)
); 

-- Table edfixvalidations.SeverityDescriptor --
CREATE TABLE edfixvalidations.SeverityDescriptor (
    SeverityDescriptorId INT NOT NULL,
    CONSTRAINT SeverityDescriptor_PK PRIMARY KEY (SeverityDescriptorId)
); 

-- Table edfixvalidations.ValidationLogicTypeDescriptor --
CREATE TABLE edfixvalidations.ValidationLogicTypeDescriptor (
    ValidationLogicTypeDescriptorId INT NOT NULL,
    CONSTRAINT ValidationLogicTypeDescriptor_PK PRIMARY KEY (ValidationLogicTypeDescriptorId)
); 

-- Table edfixvalidations.ValidationResult --
CREATE TABLE edfixvalidations.ValidationResult (
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
ALTER TABLE edfixvalidations.ValidationResult ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfixvalidations.ValidationResult ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE edfixvalidations.ValidationResult ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table edfixvalidations.ValidationResultAdditionalContext --
CREATE TABLE edfixvalidations.ValidationResultAdditionalContext (
    IdentificationCode VARCHAR(60) NOT NULL,
    ResourceType VARCHAR(100) NOT NULL,
    ResultIdentifier VARCHAR(100) NOT NULL,
    CustomizationValue VARCHAR(4000) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT ValidationResultAdditionalContext_PK PRIMARY KEY (IdentificationCode, ResourceType, ResultIdentifier)
); 
ALTER TABLE edfixvalidations.ValidationResultAdditionalContext ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table edfixvalidations.ValidationRule --
CREATE TABLE edfixvalidations.ValidationRule (
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
ALTER TABLE edfixvalidations.ValidationRule ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfixvalidations.ValidationRule ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE edfixvalidations.ValidationRule ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table edfixvalidations.ValidationRun --
CREATE TABLE edfixvalidations.ValidationRun (
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
ALTER TABLE edfixvalidations.ValidationRun ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfixvalidations.ValidationRun ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE edfixvalidations.ValidationRun ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

