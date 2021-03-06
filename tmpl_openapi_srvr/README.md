# tmpl_openapi_srvr

Project template for building openapi web applications and services

## Check or Modify Environment variables for project

#### View Global Values
1. Open the **gENV.sh** or the **gENV.cmd** file located in the <proj_dir>/global/env folder.
2. Go to the GEOSERVER section to view global values.  These should never be changed
```
# OPENAPI ONLINE

export OA_SRVR_CONT=$OA_CONT$SRVR_TAG
export OA_SRVR_CONT_HOME_DIR=$OPT_DIR$SRVR_DIR
export OA_SRVR_HOST_DIR=$API_DIR
export OA_SRVR_IMG=$OA_IMG$SRVR_TAG
export OA_SRVR_PORT_INT=8080
export OA_SRVR_VOL=$OA_VOL$SRVR_TAG

export OA_SRVR_CONT_DIR=$OA_SRVR_CONT_HOME_DIR
export OA_SRVR_VOL_DIR=$OA_SRVR_CONT_HOME_DIR

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
1. Run **./view.sh** or **view.bat**

docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli generate \
    -i https://raw.githubusercontent.com/openapitools/openapi-generator/master/modules/openapi-generator/src/test/resources/2_0/petstore.yaml \
    -g go \
    -o /local/out/go