# tmpl_postgis

Submodule for configuring and running postgis

## Check or Modify Environment variables for project

#### View Global Values
1. Open the **gENV.sh** or the **gENV.cmd** file located in the <proj_dir>/global/env folder.
2. Go to the GEOSERVER section to view global values.  These should never be changed
```
# POSTGIS

export GIS_CONT=$SYS_CONT$GIS_TAG
export GIS_CONT_HOME_DIR=$OPT_DIR$GIS_DIR
export GIS_HOST_DIR=$DOT$SYS_DIR$DATA_DIR$GIS_DIR
export GIS_IMG=$SYS_IMG$GIS_TAG
export GIS_PORT_INT=80
export GIS_VOL=$SYS_VOL$GIS_TAG

export GIS_CONT_DIR=$GIS_CONT_HOME_DIR$SRC_DIR
export GIS_CONT_DATA_DIR=$GIS_CONT_HOME_DIR$TRGT_DIR
export GIS_VOL_DIR=$GIS_CONT_HOME_DIR$TRGT_DIR
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
