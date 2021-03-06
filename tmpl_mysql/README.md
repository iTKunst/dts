# tmpl_mysql

Project template for configuring and running mysql database

## Check or Modify Environment variables for project

#### View Global Values
1. Open the **gENV.sh** or the **gENV.cmd** file located in the <proj_dir>/global/env folder.
2. Go to the GEOSERVER section to view global values.  These should never be changed
```
# MAVEN LIBRARY

export MVN_LIB_CONT=$MVN_CONT$LIB_TAG
export MVN_LIB_CONT_HOME_DIR=$MVN_CONT_HOME_DIR
export MVN_LIB_HOST_DIR=$CODE_DIR
export MVN_LIB_IMG=$MVN_IMG$LIB_TAG
export MVN_LIB_PORT_INT=8080
export MVN_LIB_VOL=$MVN_VOL$LIB_TAG

export MVN_LIB_CONT_DIR=$MVN_LIB_CONT_HOME_DIR
export MVN_LIB_CONT_DATA_DIR=$MVN_LIB_CONT_HOME_DIR
export MVN_LIB_VOL_DIR=$MVN_LIB_CONT_HOME_DIR
```

#### View/Set System Values
1. Open the **sENV_MOD.sh** or the **sENV_MOD.cmd** file located in the <sys_proj_dir>/env folder.
2. Go to the GEOSERVER section to view default values.
3. Modify values if required.
4. Check in system changes.
```
# GEOSERVER
export GEO_DB_NAME=
export GEO_PASSWORD=GEO
export GEO_PORT_EXT=8081
export GEO_USER=pjldooley@gmail.com

```

5. Open the sENV_HOST.sh or the sENV_HOST.cmd file located in the <sys_proj_dir>/env folder.
```
# FREEIPA
export FREE_HOST=spectre
```
### Update the project with the changed settings
> Run **pUPDATE.sh** or **pUPDATE.cmd**

### Stop and delete the container and delete the image
> Run **pKILL.sh** or **pKILL.cmd**

### Build image
> Run **pBUILD.sh** or **pBUILD.cmd**

### Create and run container
> Run **pGO.sh** or **pGO.cmd** 
