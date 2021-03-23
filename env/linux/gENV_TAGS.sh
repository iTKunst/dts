#!/bin/bash
# shellcheck disable=SC2086

log_enter gENV_TAGS

source gENV_CATS.sh
source gENV_NAMES.sh
source gENV_TKNS.sh

  export ADMIN_TAG=$SPLIT$ADMIN
  export ANS_TAG=$SPLIT$ANS
  export API_TAG=$SPLIT$API
  export CG_TAG=$SPLIT$CG
  export CLI_TAG=$SPLIT$CLI
  export CONT_TAG=$SPLIT$CONT
  export DB_TAG=$SPLIT$DB
  export DBG_TAG=$SPLIT$DBG
  export EDIT_TAG=$SPLIT$EDIT
  export FREE_TAG=$SPLIT$FREE
  export GEN_TAG=$SPLIT$GEN
  export GEO_TAG=$SPLIT$GEO
  export GIS_TAG=$SPLIT$GIS
  export GIT_TAG=$DOT$GIT
  export GLBL_TAG=$SPLIT$GLBL
  export GO_TAG=$SPLIT$GO
  export GRDL_TAG=$SPLIT$GRDL
  export IMG_TAG=$SPLIT$IMG
  export JFROG_TAG=$SPLIT$JFROG
  export KEY_TAG=$SPLIT$KEY
  export LIB_TAG=$SPLIT$LIB
  export MS_TAG=$SPLIT$MS
  export MVN_TAG=$SPLIT$MVN
  export NANO_TAG=$SPLIT$NANO
  export NET_TAG=$SPLIT$NET
  export NEXUS_TAG=$SPLIT$NEXUS
  export NG_TAG=$SPLIT$NG
  export NODE_TAG=$SPLIT$NODE
  export OA_TAG=$SPLIT$OA
  export PG_ADMIN_TAG=$SPLIT$PG$SPLIT$ADMIN
  export PG_TAG=$SPLIT$PG
  export PORT_TAG=$SPLIT$PORT
  export PROJ_TAG=$SPLIT$PROJ_NAME
  export REACT_TAG=$SPLIT$REACT
  export RHCOS_TAG=$SPLIT$RHCOS
  export SMPL_TAG=$SPLIT$SMPL
  export SMTP_TAG=$SPLIT$SMTP
  export SOAP_TAG=$SPLIT$SOAP
  export SRVR_TAG=$SPLIT$SRVR
  export SRVR2_TAG=$SPLIT$SRVR2
  export SWAG_TAG=$SPLIT$SWAG
  export TRGT_TAG=$SPLIT$TRGT
  export UI_TAG=$SPLIT$UI
  export VOL_TAG=$SPLIT$VOL
  export WF_TAG=$SPLIT$WF
  export WP_TAG=$SPLIT$WP

log_exit gENV_TAGS
