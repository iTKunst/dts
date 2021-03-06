# tmpl_swag_ui

Project template for configuring and running swagger_ui

## Check or Modify Environment variables for project

#### View Global Values
1. Open the **gENV.sh** or the **gENV.cmd** file located in the <proj_dir>/global/env folder.
2. Go to the GEOSERVER section to view global values.  These should never be changed
```
# SWAGGER UI

export SWAG_UI_CONT=$SWAG_CONT$UI_TAG
export SWAG_UI_CONT_HOME_DIR=$VAR_DIR$SPECS_DIR
export SWAG_UI_HOST_DIR=$API_DIR
export SWAG_UI_IMG=$SWAG_IMG$UI_TAG
export SWAG_UI_PORT_INT=8080
export SWAG_UI_VOL=$SWAG_VOL$UI_TAG

export SWAG_UI_CONT_DIR=$SWAG_UI_CONT_HOME_DIR
export SWAG_UI_CONT_DATA_DIR=$SWAG_UI_CONT_HOME_DIR$TRGT_DIR
export SWAG_UI_JSON=$SWAG_UI_CONT_HOME_DIR$SLASH$API_JSON
export SWAG_UI_VOL_DIR=$SWAG_UI_CONT_HOME_DIR$TRGT_DIR
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
