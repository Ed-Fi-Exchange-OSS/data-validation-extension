/****** Script for SelectTopNRows command from SSMS  ******/

use EdFi_Ods_Sandbox_IRLeFhRR0SAw;


-- Get the runs
delete [edfixvalidations].[ValidationRun];
INSERT INTO [edfixvalidations].[ValidationRun] 
(HOst, RuleEngine, RunIdentifier, RunStartDateTime,RunFinishDateTime, RunStatusDescriptorId)
SELECT 
      DE.[Name] Host
	  ,'DataChecker' engine
	  ,LEFT([ExecutionDate],15) runId
	  ,min([ExecutionDate]) RunStartDt
	  ,max([ExecutionDate]) RunFinishDt
	  ,d_runStatus.DescriptorId 
  FROM [DataCheckerPersistence].[destination].[RuleExecutionLogs] REL
  JOIN DataCheckerPersistence.datachecker.DatabaseEnvironments DE
	ON DE.Id = REL.DatabaseEnvironmentId
  JOIN edfi.Descriptor d_runStatus
    ON d_runStatus.CodeValue like 'Completed'
  JOIN [edfixvalidations].RunStatusDescriptor RSD
	ON RSD.RunStatusDescriptorId = d_runStatus.DescriptorId
  GROUP BY DE.[Name]
  ,LEFT([ExecutionDate],15)
  ,d_runStatus.DescriptorId ;


DELETE edfixvalidations.ValidationRule;

INSERT INTO [edfixvalidations].[ValidationRule]
           ([RuleIdentifier]
           ,[RuleSource]
           ,[ShortDescription]
           ,[Description]
           ,[RuleStatusDescriptorId]
           ,[Category]
           ,[SeverityDescriptorId]
           ,[ExternalRuleId]
           ,[ValidationLogicTypeDescriptorId]
           ,[ValidationLogic])
 SELECT  Rules.Id
         ,Collections.Name CollectionName
         ,rules.Name
         ,Rules.Description
         ,d_ruleStatus.DescriptorId
         ,Containers.Name ContainerName
         ,SeverityDescriptor.DescriptorId ErrorSeverityLevel
         ,Rules.RuleIdentification
         ,LogicTypeDescriptor.DescriptorId
         ,Rules.DiagnosticSql
 FROM DataCheckerPersistence.datachecker.Rules
 JOIN DataCheckerPersistence.datachecker.Containers
    ON Containers.Id = Rules.ContainerId
JOIN DataCheckerPersistence.datachecker.Containers Collections
    ON Containers.ParentContainerId = Collections.id
  JOIN edfi.Descriptor d_ruleStatus
    ON d_ruleStatus.CodeValue like 'Active'
  JOIN [edfixvalidations].RuleStatusDescriptor RSD
	ON RSD.RuleStatusDescriptorId = d_ruleStatus.DescriptorId
  JOIN edfi.Descriptor SeverityDescriptor
    ON Rules.ErrorSeverityLevel = SeverityDescriptor.CodeValue
  JOIN edfixvalidations.SeverityDescriptor SD
    ON SD.SeverityDescriptorId = SeverityDescriptor.DescriptorId
  JOIN edfi.Descriptor LogicTypeDescriptor
    ON LogicTypeDescriptor.CodeValue = 'SQL'
  JOIN edfixvalidations.ValidationLogicTypeDescriptor
    ON ValidationLogicTypeDescriptor.ValidationLogicTypeDescriptorId= LogicTypeDescriptor.DescriptorId
     

delete [edfixvalidations].[ValidationResult];

INSERT INTO [edfixvalidations].[ValidationResult]
           ([ResourceType]
           ,[ResultIdentifier]
           ,[RuleIdentifier]
           ,[RuleSource]
           ,[RunIdentifier]
           ,[Host]
           ,[RuleEngine]
           ,[ResourceId]
           ,[EducationOrganizationId]
           ,[StudentUSI]
           ,[StaffUSI]
           ,[Discriminator]
)
SELECT
      'NA' resourceType
      ,E_REL.Id ResultId
      ,REL.RuleId RuleId
      ,Collections.Name
	  ,LEFT([ExecutionDate],15) runId
      ,DE.[Name] Host
	  ,'DataChecker' engine
      ,'NA' ResourceId
      ,E_REL.EducationOrganizationId
      ,st.StudentUSI
      ,E_REL.StaffUniqueId
      ,E_REL.Discriminator
  FROM [DataCheckerPersistence].[destination].[RuleExecutionLogs] REL
  JOIN DataCheckerPersistence.datachecker.DatabaseEnvironments DE
	ON DE.Id = REL.DatabaseEnvironmentId
   JOIN DataCheckerPersistence.datachecker.Rules
    ON Rules.Id = REL.RuleId
   JOIN DataCheckerPersistence.destination.EdFiRuleExecutionLogDetails E_REL
   on E_REL.RuleExecutionLogId = REL.id
 JOIN DataCheckerPersistence.datachecker.Containers
    ON Containers.Id = Rules.ContainerId
JOIN DataCheckerPersistence.datachecker.Containers Collections
    ON Containers.ParentContainerId = Collections.id
LEFT JOIN edfi.student st
    ON st.StudentUniqueId = E_REL.StudentUniqueId



 LEFT JOIN  edfixvalidations.ValidationRule eRule
    ON eRule.RuleIdentifier = REL.RuleId
    ON 




