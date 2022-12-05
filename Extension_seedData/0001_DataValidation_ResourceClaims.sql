/* This script will set up the resource claims nessiary for the data validation extension.
file should be copied to: ...\Ed-Fi-ODS-Implementation\Application\EdFi.Ods.Extensions.DataValidation\Artifacts\MsSql\Data\Security\0001-resourceClaims.sql
*/
DECLARE @ApplicationId INT
 
SELECT @ApplicationId = ApplicationId
FROM [dbo].[Applications]
WHERE ApplicationName = 'Ed-Fi ODS API'
  
DECLARE @ParentResourceClaimId INT
SELECT @ParentResourceClaimId = ResourceClaimId
FROM [dbo].[ResourceClaims]
WHERE ResourceName = 'relationshipBasedData'
 
INSERT INTO [dbo].[ResourceClaims] ( [DisplayName]
                                     ,[ResourceName]
                                     ,[ClaimName]     
                                     ,[ParentResourceClaimId]
                                     ,[Application_ApplicationId]
                                     )
VALUES ('ValidationRun'
        ,'ValidationRun'
        ,'http://ed-fi.org/ods/identity/claims/data-validation/ValidationRun'
        ,@ParentResourceClaimId
        ,@ApplicationId
        );
		
INSERT INTO [dbo].[ResourceClaims] ( [DisplayName]
                                     ,[ResourceName]
                                     ,[ClaimName]     
                                     ,[ParentResourceClaimId]
                                     ,[Application_ApplicationId]
                                     )
VALUES ('ValidationRule'
        ,'ValidationRule'
        ,'http://ed-fi.org/ods/identity/claims/data-validation/ValidationRule'
        ,@ParentResourceClaimId
        ,@ApplicationId
        );
		
INSERT INTO [dbo].[ResourceClaims] ( [DisplayName]
                                     ,[ResourceName]
                                     ,[ClaimName]     
                                     ,[ParentResourceClaimId]
                                     ,[Application_ApplicationId]
                                     )
VALUES ('ValidationResult'
        ,'ValidationResult'
        ,'http://ed-fi.org/ods/identity/claims/data-validation/ValidationResult'
        ,@ParentResourceClaimId
        ,@ApplicationId
        );
		

DECLARE @SystemDescriptorsId INT;
 
SELECT @SystemDescriptorsId = resourceclaimid
FROM   [dbo].[resourceclaims]
WHERE  displayname = 'systemDescriptors';
 
INSERT INTO [dbo].[resourceclaims]
            ([displayname],
             [resourcename],
             [claimname],
             [parentresourceclaimid],
             [application_applicationid])
VALUES      ( 'RuleStatusDescriptor',
              'RuleStatusDescriptor',
'http://ed-fi.org/ods/identity/claims/data-validation/RuleStatusDescriptor',
@SystemDescriptorsId,
@ApplicationId );
 

INSERT INTO [dbo].[resourceclaims]
            ([displayname],
             [resourcename],
             [claimname],
             [parentresourceclaimid],
             [application_applicationid])
VALUES      ( 'RunStatusDescriptor',
              'RunStatusDescriptor',
'http://ed-fi.org/ods/identity/claims/data-validation/RunStatusDescriptor',
@SystemDescriptorsId,
@ApplicationId );
 

INSERT INTO [dbo].[resourceclaims]
            ([displayname],
             [resourcename],
             [claimname],
             [parentresourceclaimid],
             [application_applicationid])
VALUES      ( 'SeverityDescriptor',
              'SeverityDescriptor',
'http://ed-fi.org/ods/identity/claims/data-validation/SeverityDescriptor',
@SystemDescriptorsId,
@ApplicationId );
 


INSERT INTO [dbo].[resourceclaims]
            ([displayname],
             [resourcename],
             [claimname],
             [parentresourceclaimid],
             [application_applicationid])
VALUES      ( 'ValidationLogicTypeDescriptor',
              'ValidationLogicTypeDescriptor',
'http://ed-fi.org/ods/identity/claims/data-validation/ValidationLogicTypeDescriptor',
@SystemDescriptorsId,
@ApplicationId );
 
						
						
						