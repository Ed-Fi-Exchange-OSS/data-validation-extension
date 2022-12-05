/* SEED script for data validation descriptors

This file should be copied to: ..\Ed-Fi-ODS-Implementation\Application\EdFi.Ods.Extensions.DataValidation\Artifacts\MsSql\Data\Ods\0001_Descriptors.sql

*/



insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/RunStatusDescriptor','Completed','Completed','Completed');
insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/RunStatusDescriptor','Running','Running','Running');
insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/RunStatusDescriptor','Stopped','Stopped','Stopped');




insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/RuleStatusDescriptor','Active','Active','Active');
insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/RuleStatusDescriptor','Inactive','Inactive','Inactive');

insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/RunStatusDescriptor','Completed','Completed','Completed');
insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/RunStatusDescriptor','Running','Running','Running');
insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/RunStatusDescriptor','Stopped','Stopped','Stopped');



Insert into edfixvalidations.RuleStatusDescriptor(ruleStatusDescriptorId)
SELECT
	descriptorId
FROM edfi.Descriptor
LEFT JOIN edfixvalidations.RuleStatusDescriptor
	on DescriptorId = RuleStatusDescriptorId
where RuleStatusDescriptorId is null
and namespace = 'uri://edfixvalidation.org/RuleStatusDescriptor';


Insert into edfixvalidations.RunStatusDescriptor(RunStatusDescriptorId)
SELECT
	descriptorId
FROM edfi.Descriptor
LEFT JOIN edfixvalidations.RunStatusDescriptor
	on DescriptorId = RunStatusDescriptorId
where RunStatusDescriptorId is null
and namespace = 'uri://edfixvalidation.org/RunStatusDescriptor';


delete edfi.Descriptor where Namespace = 'uri://edfixvalidation.org/SeverityDescriptor'

insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/SeverityDescriptor','1','Info','Informational message');
insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/SeverityDescriptor','2','Warning','Data may be in error, but could be valid');
insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/SeverityDescriptor','3','Error','Data is in error and should be fixed');
insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/SeverityDescriptor','4','Critical','Critical error affecting data quality');


Insert into edfixvalidations.SeverityDescriptor(SeverityDescriptorId)
SELECT
	descriptorId
FROM edfi.Descriptor
LEFT JOIN edfixvalidations.SeverityDescriptor
	on DescriptorId = SeverityDescriptorId
where SeverityDescriptorId is null
and namespace = 'uri://edfixvalidation.org/SeverityDescriptor';


insert into edfi.descriptor(namespace, CodeValue, ShortDescription, Description) values ('uri://edfixvalidation.org/ValidationLogicTypeDescriptor','SQL','SQL','SQL');


Insert into edfixvalidations.ValidationLogicTypeDescriptor(ValidationLogicTypeDescriptorId)
SELECT
	descriptorId
FROM edfi.Descriptor
LEFT JOIN edfixvalidations.ValidationLogicTypeDescriptor
	on DescriptorId = ValidationLogicTypeDescriptorId
where ValidationLogicTypeDescriptorId is null
and namespace = 'uri://edfixvalidation.org/ValidationLogicTypeDescriptor';

