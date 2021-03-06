# tmpl_nexus

Project template for configuring, and running a nexus system

## Check or Modify Environment variables for project

#### View Global Values
1. Open the **gENV.sh** or the **gENV.cmd** file located in the <proj_dir>/global/env folder.
2. Go to the GEOSERVER section to view global values.  These should never be changed
```
# NEXUS

export NEXUS_CONT=$SYS_CONT$NEXUS_TAG
export NEXUS_CONT_DIR=$NEXUS_DATA_DIR
export NEXUS_CONT_PATH=/nexus
export NEXUS_HOST_DIR=$SRC_DIR
export NEXUS_IMG=$SYS_IMG$NEXUS_TAG
export NEXUS_PORT_INT=8081

export NEXUS_CONT_MNT_DIR=$NEXUS_CONT_DIR
export NEXUS_HOST_MNT_DIR=$NEXUS_HOST_DIR

export NEXUS_JAVA_OPTS="-server -XX:MaxPermSize=192m -Djava.net.preferIPv4Stack=true"
export NEXUS_LAUNCH_CONF="./conf/jetty.xml ./conf/jetty-requestlog.xml"
export NEXUS_MAX_HEAP=768m
export NEXUS_MIN_HEAP=256m

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
