# base_tmpl


Template for creating new docker templates

### 1. Create the new repo with the template template

Use:
> <https://github.com/iTKunst/base_tmpl.git>

### 2. Clone the new repo to your dev environment

#### View Global Values
1. Open the **gENV.sh** or the **gENV.cmd** file located in the <proj_dir>/global/env folder.
2. Go to the GEOSERVER section to view global values.  These should never be changed
```
# KEYCLOAK

export KEY_CONT=$SYS_CONT$KEY_TAG
export KEY_CONT_HOME_DIR=$TMP_DIR
export KEY_HOST_DIR=$SYS_DIR$KEYCLOAK_DIR
export KEY_IMG=$SYS_IMG$KEY_TAG
export KEY_PORT_INT=8080
export KEY_PORT_INT_ADMIN=9990
export KEY_VOL=$SYS_VOL$KEY_TAG

export KEY_CONT_DIR=$KEY_CONT_HOME_DIR
export KEY_CONT_DATA_DIR=$KEY_CONT_HOME_DIR$TRGT_DIR
export KEY_VOL_DIR=$JAVA_CONT_HOME_DIR$TRGT_DIR
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
