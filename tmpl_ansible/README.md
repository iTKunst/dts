# Docker Templating System (DTS)
Designed to simplify the process of creating and running containers

## tmpl_ansible

Template for configuring and running an ansible server

### Check or Modify Environment variables for project

#### View Global Values
1. Open the **gENV.sh** or the **gENV.cmd** file located in the <proj_dir>/global/env folder.
2. Go to the #Ansible section to view global values.  These should never be changed
```
# ANSIBLE

export ANS_CONT=$SYS_CONT$ANS_TAG
export ANS_CONT_HOME_DIR=
export ANS_HOST_DIR=
export ANS_IMG=$SYS_IMG$ANS_TAG
export ANS_PORT_INT=
export ANS_VOL=$SYS_VOL$ANS_TAG

export ANS_CONT_DIR=
export ANS_CONT_DATA_DIR=
export ANS_VOL_DIR=
```

#### View/Set System Values
1. Open the **sENV_MOD.sh** or the **sENV_MOD.cmd** file located in the <sys_proj_dir>/env folder.
2. Go to the #Ansible section to view default values.
3. Modify values if required.
4. Check in system changes.
```
# ANSIBLE

```

5. Open the sENV_HOST.sh or the sENV_HOST.cmd file located in the <sys_proj_dir>/env folder.
```
# ANSIBLE
```

### Update the project with the changed settings
> Run **pUPDATE.sh** or **pUPDATE.cmd**

### Stop and delete the container and delete the image
> Run **pKILL.sh** or **pKILL.cmd** 

### Build image
> Run **pBUILD.sh** or **pBUILD.cmd**

### Create and run container
> Run **pGO.sh** or **pGO.cmd** 
