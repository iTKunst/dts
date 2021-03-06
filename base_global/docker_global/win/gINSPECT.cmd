@echo off
CALL settings


call LOG_ENTER gINSPECT

SET VOL_FILTER="label=SYS"

call LOG_VAR DB_VOL %DB_VOL%
call LOG_VAR DB_MS_VOL %DB_MS_VOL%
call LOG_VAR WF_VOL %WF_VOL%
call LOG_VAR VOL_FILTER %VOL_FILTER%

docker volume ls --filter %VOL_FILTER%
call LOG_MSG " "

docker volume inspect %DB_VOL%
call LOG_MSG " "

docker volume inspect %DB_MS_VOL%
call LOG_MSG " "

docker volume inspect %WF_VOL%
call LOG_MSG " "

call LOG_EXIT gINSPECT

