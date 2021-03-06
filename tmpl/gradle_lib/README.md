# tmpl_gradle_lib

Project template for building gradle libraries

## Check or Modify Environment variables for project

#### View Global Values
1. Open the **gENV.sh** or the **gENV.cmd** file located in the <proj_dir>/global/env folder.
2. Go to the GEOSERVER section to view global values.  These should never be changed
```
# GEOSERVER

export GEO_CONT=$SYS_CONT$GEO_TAG
export GEO_CONT_HOME_DIR=$OPT_DIR$GEO_DIR
export GEO_HOST_DIR=$DATA_DIR
export GEO_IMG=$SYS_IMG$GEO_TAG
export GEO_PORT_INT=8080
export GEO_VOL=$SYS_VOL$GEO_TAG

export GEO_CONT_DIR=$GEO_CONT_HOME_DIR$DATA_DIR
export GEO_CONT_DATA_DIR=$GEO_CONT_HOME_DIR$TRGT_DIR
export GEO_VOL_DIR=$GEO_CONT_HOME_DIR$DATA_DIR
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

### Update the project with the changed settings
> Run **pUPDATE.sh** or **pUPDATE.cmd**

### Stop and delete the container and delete the image
> Run **pKILL.sh** or **pKILL.cmd**

### Build image
> Run **pBUILD.sh** or **pBUILD.cmd**

### Create and run container
> Run **pGO.sh** or **pGO.cmd** 
## Check or Modify Environment variables for project

#### View Global Values
1. Open the **gENV.sh** or the **gENV.cmd** file located in the <proj_dir>/global/env folder.
2. Go to the GEOSERVER section to view global values.  These should never be changed
```
# GRADLE LIBRARY

export GRDL_LIB_CONT=$GRDL_CONT$LIB_TAG
export GRDL_LIB_CONT_HOME_DIR=$HME_DIR$GRDL_DIR$SRC_DIR
export GRDL_LIB_HOST_DIR=$CODE_DIR
export GRDL_LIB_IMG=$GRDL_IMG$LIB_TAG
export GRDL_LIB_PORT_INT=
export GRDL_LIB_VOL=$GRDL_VOL$LIB_TAG

export GRDL_LIB_CONT_DIR=$GRDL_LIB_CONT_HOME_DIR
export GRDL_LIB_CONT_DATA_DIR=$GRDL_LIB_CONT_HOME_DIR$TRGT_DIR
export GRDL_LIB_VOL_DIR=$GRDL_LIB_CONT_HOME_DIR

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
