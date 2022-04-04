/* SEED script for data validation descriptors

This file should be copied to: ..\Ed-Fi-ODS-Implementation\Application\EdFi.Ods.Extensions.DataValidation\Artifacts\MsSql\Data\Ods\0001_Descriptors.sql

*/


insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/RuleStatusDescriptor','Active','Active','Active');
insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/RuleStatusDescriptor','Inactive','Inactive','Inactive');

insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/RunStatusDescriptor','Completed','Completed','Completed');
insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/RunStatusDescriptor','Running','Running','Running');
insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/RunStatusDescriptor','Stopped','Stopped','Stopped');

insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/SeverityDescriptor','Info','Info','Informational message');
insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/SeverityDescriptor','Warning','Warning','Data may be in error, but could be valid');
insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/SeverityDescriptor','Error','Error','Data is in error and should be fixed');
insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/SeverityDescriptor','Critical','Critical','Critical error affecting data quality');


Insert into datavalidation.RuleStatusDescriptor(ruleStatusDescriptorId)
SELECT
	descriptorId
FROM edfi.Descriptor
LEFT JOIN datavalidation.RuleStatusDescriptor
	on DescriptorId = RuleStatusDescriptorId
where RuleStatusDescriptorId is null
and namespace = 'uri://edfixvalidation.org/RuleStatusDescriptor';


Insert into datavalidation.RunStatusDescriptor(RunStatusDescriptorId)
SELECT
	descriptorId
FROM edfi.Descriptor
LEFT JOIN datavalidation.RunStatusDescriptor
	on DescriptorId = RunStatusDescriptorId
where RunStatusDescriptorId is null
and namespace = 'uri://edfixvalidation.org/RunStatusDescriptor';


Insert into datavalidation.RuleStatusDescriptor(ruleStatusDescriptorId)
SELECT
	descriptorId
FROM edfi.Descriptor
LEFT JOIN datavalidation.RuleStatusDescriptor
	on DescriptorId = RuleStatusDescriptorId
where RuleStatusDescriptorId is null
and namespace = 'uri://edfixvalidation.org/RuleStatusDescriptor';

