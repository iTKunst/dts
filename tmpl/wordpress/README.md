# tmpl_wordpress

Project template for building wordpress applications and services

## Check or Modify Environment variables for project

#### View Global Values
1. Open the **gENV.sh** or the **gENV.cmd** file located in the <proj_dir>/global/env folder.
2. Go to the GEOSERVER section to view global values.  These should never be changed
```
# WORDPRESS

export WP_CONTENT_DIR=$WP_DIR$DASH$CONTENT

export WP_CONT=$SYS_CONT$WP_TAG
export WP_CONT_HOME_DIR=$VAR_DIR$WWW_DIR$HTML_DIR
export WP_DB_HOST=$MS_CONT$COLON$MS_PORT_INT
export WP_HOST_DIR=$WP_CONTENT_DIR
export WP_IMG=$SYS_IMG$WP_TAG
export WP_PORT_ADMIN_INT=8080
export WP_PORT_APPS_INT=80
export WP_PORT_DBG_INT=90
export WP_TABLE_PREFIX=$SYS$SPLIT
export WP_VOL=$SYS_VOL$WP_TAG

export WP_CONT_DIR=$WP_CONT_HOME_DIR$WP_CONTENT_DIR
export WP_CONT_DATA_DIR=$WP_CONT_HOME_DIR$TRGT_DIR
export WP_VOL_DIR=$WP_CONT_HOME_DIR

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
