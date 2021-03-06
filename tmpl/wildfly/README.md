# tmpl_wildfly

Submodule for configuring and running wildfly

## Check or Modify Environment variables for project

#### View Global Values
1. Open the **gENV.sh** or the **gENV.cmd** file located in the <proj_dir>/global/env folder.
2. Go to the GEOSERVER section to view global values.  These should never be changed
```
# WILDFLY

export WF_CONT=$SYS_CONT$WF_TAG
export WF_CONT_HOME_DIR=$OPT_DIR$JBOSS_DIR$WF_DIR
export WF_HOST_DIR=$CONF_DIR
export WF_IMG=$SYS_IMG$WF_TAG
export WF_PORT_INT_ADMIN=9990
export WF_PORT_INT_APPS=8080
export WF_PORT_INT_DBG=8787
export WF_VOL=$SYS_VOL$WF_TAG

export WF_CONT_DIR=$WF_CONT_HOME_DIR
export WF_CONT_DATA_DIR=$WF_CONT_HOME_DIR$TRGT_DIR
export WF_VOL_DIR=$WF_CONT_HOME_DIR$TRGT_DIR

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
