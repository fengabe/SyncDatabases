SyncDatabases

This was born from a project to copy staging data from one database to another.  Part of the requirements for the project was to be able to adapt the staging process to handle changing columns in the source system as well as potentially changing data types in the columns.

Not included in the project but necessary to the execution of the SSIS package is the EzAPI library.
http://sqlsrvintegrationsrv.codeplex.com/releases/view/21238

I was able to leverage a combination of reference tables and dynamic package generation to accomplish the project.

Checked in here is prototype which references sample databases.

