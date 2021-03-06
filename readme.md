# Docker Templating System (DTS)
Designed to simplify the process of creating and running containers

Clone your project from 
<https://github.com/itkunst/base_proj>

For Linux
```
1. Specify your system name, project name, and template name in 'settings.sh'.
2. Run './init.sh'
3. Run 'source path.txt' 
4. Modify /project/pENV_MOD.sh as necessary
4. Run 'pBUILD.sh'
5. Run 'pGO.sh'

6. Run 'pVIEW.sh' to verify
```
For Windows
```
1. Specify your system name, project name, and template name in 'settings.cmd'.
2. Run 'init'
3. Modify /project/pENV_MOD.cmd as necessary
4. Run 'pBUILD'
5. Run 'pGO'

6. Run 'pVIEW' to verify
```

## Knowledge of Docker not required - knowledge of typing also not required :)
```
* Automatic naming system for artifacts
* Simplifies docker commands.
* Keeps project/system and global values ordered - and predefined
* Provides mechanism for hardcoding docker image setup.
* Provides integration with external systems (i.e. nexus, kubernetes, openshift...)
```

## Easily Extensible.
```   
* Templates may be easily created.
* Extensive tracing system provided for ease of debugging.
```   
## Dynamically modifiable
```
 * templating system modifications can be easily ported to existing projects
 * each project has ability to pull modifications
```
## Allows one to easily create and spin up a local system
```
 * Simple for both technical and non-technical.
 * System can be run on both windows and linux.
```
## System requirements are minimal
```
* docker
* git
```

## Please refer to DTS.pdf
<https://github.com/itkunst/base_docs/blob/master/DTS.pdf>
