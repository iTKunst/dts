log_enter run toPG

java  -jar ./$DIR_PROJ/convert/client-0.0.5.jar convert \
      --output-format=postgresql \
      ./cvms_cfg/data/ms.sql \
      ./cvms_cfg/data/
