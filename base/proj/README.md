# Docker Templating System (DTS)
Designed to simplify the process of creating and running containers

## base/proj

Template for configuring and running a docker project

### 1. Create the new repo with the project template

Use:
> <https://github.com/iTKunst/dts/tree/master/base/proj

### 2. Clone the new repo to your dev environment

### 3. Go to the project root folder

### 4. Specify the project parameters
1. Edit **settings.sh** or **settings.cmd**
2. Enter the **SYS** value.
3. Enter the **TMPL_NAME** value. (i.e. tmpl_mysql)

#### 5. Build and Run
1. Run **./init.sh** or **init.cmd**
2. Run **source path.txt** (if on linux)
3. Run **pBUILD.sh** or **pBUILD.cmd**
4. RUN **pGO.sh** or **pGO.cmd**

### Verify
1. Run **./pVIEW.sh** or **pVIEW.cmd**

### To remove the DTS submodules from a project:
> 1. Go to the root folder of the project
> 2. Run **pREMOVE.sh** or **pREMOVE.cmd**

