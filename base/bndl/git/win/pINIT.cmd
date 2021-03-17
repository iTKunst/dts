@echo off


echo pINIT.cmd [LOADED]


if [%DIR_TMPL_CURR%]==[] (
  rem CALL LOG_INVALID DIR_TMPL_CURR
  echo DIR_TMPL_CURR [INVALID]
  GOTO :EOF
)
rem CALL LOG_VAR DIR_TMPL_CURR %DIR_TMPL_CURR%

echo DIR_TMPL_CURR is %DIR_TMPL_CURR% [VAR]

if exist %DIR_TMPL_CURR% (

    if NOT exist project (
      mkdir project
    )

    if NOT exist project\pENV.cmd (
      xcopy %DIR_TMPL_CURR%%ENV_DIR%%OS_DIR%\pENV.sample.cmd ^
            project\pENV.cmd
    )

)

:EOF

call LOG_EXIT pINIT

EXIT /B %ERRORLEVEL%