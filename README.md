
# data-validation-extension

This project is a proof-of-concept implementation of the Ed-Fi data validation API as an Ed-Fi extension. It includes:

 - MetaEd project that will define the extension in any version of Ed-Fi
 - A SQL script that will populate the descriptors defined in the extension
 - A SQL script that will enable the appropriate API access to the extension objects
 - A file that has the SQL statements that will populate the extension tables from a data checker implementation.
 ## Usage instructions
 This project assumes that you already have a working instance of data checker and access to an ODS with data in it.
 - Build the extension project using the .metaed files
 - Run the SQL scripts that seed security and descriptor data
 - put some data in your ODS and validate it
 - Copy the data from data checker to the extension tables
## Implementation notes

 - The SQL statements that move the data from data checker to the extension are just SQL statements and are intended for a proof-of-concept. There is not any flow control or optimization around what needs to be moved over, everything on the extension side is truncated and reinserted.
 - The extension has a concept of a 'ValidationRun' that at the moment does not really exist in data checker. The SQL is deriving this by looking at the first 15 characters of the timestamp on the actual rule runs, this is to the 10-minute mark. This is not ideal...
 - Security for the ValidationRun and ValidationRule is open. For ValidationResults it is tied to 'RelationshipBasedData', and as such the key and secret that is pulling the results must have a relationship defined with the Ed Orgs that the results pertain to.

## To Do

 - Real ETL from data checker to the extensions
 - Consider making access to all validation endpoints read only
 - Add concept of ValidationRun to data checker

## Futher information
techdocs design:  
[https://techdocs.ed-fi.org/pages/viewpage.action?spaceKey=ESIG&title=Ed-Fi+Validation+API+Design+Rev1](https://techdocs.ed-fi.org/pages/viewpage.action?spaceKey=ESIG&title=Ed-Fi+Validation+API+Design+Rev1 "Follow link")

more conceptual in this slide deck:  
[https://docs.google.com/presentation/d/1gt-dLF-DZZxvOE_R4NTkg3oOb3YegnCz/](https://docs.google.com/presentation/d/1gt-dLF-DZZxvOE_R4NTkg3oOb3YegnCz/ "Follow link")

## Legal Information

Copyright (c) 2022 Ed-Fi Alliance, LLC and contributors.

 - 

Licensed under the [Apache License, Version 2.0](LICENSE) (the "License").

Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
CONDITIONS OF ANY KIND, either express or implied. See the License for the
specific language governing permissions and limitations under the License.

See [NOTICES](NOTICES.md) for additional copyright and license notifications.
