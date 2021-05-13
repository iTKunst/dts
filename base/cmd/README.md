# Docker Templating System (DTS)
Designed to simplify the process of creating and running containers

## base/cmd

Submodule for all script commands  

### Changes should only be made here when adding or upgrading templates.

### Changes made here will affect all projects 

### If you absolutely must make changes:
> 1. Go to the root folder of your non-systems project
> 2. Run **pUPDATE.sh** or **pUPDATE.cmd**
> 3. Run **pKILL.sh** or **pKILL.cmd**
> 4. Run **pBUILD.sh** or **pBUILD.cmd**
> 5. Run **pGO.sh** or **pGO.cmd**

### To remove the DTS submodules from a project:
> 1. Go to the root folder of the project
> 2. Run **pREMOVE.sh** or **pREMOVE.cmd**
