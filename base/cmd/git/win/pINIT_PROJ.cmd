@echo off


:: echo pINIT_PROJ.cmd [LOADED]


CALL LOG_VAR DIR_BNDL %DIR_BNDL%

if [%DIR_TMPL%]==[] (
  CALL LOG_INVALID DIR_TMPL
  goto :EOF
)

if exist %DIR_TMPL% (

    if NOT exist project (
      mkdir project
    )

    if NOT exist project\pENV_MOD.cmd (
      xcopy %DIR_TMPL%%ENV_DIR%\linux\pENV.sample.cmd ^
            project\pENV.cmd
    )

)

:EOF

EXIT /B