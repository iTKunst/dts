log_enter run toPG

java  -jar ./$DIR_PROJ/convert/client-0.0.5.jar convert \
      --output-format=mysql \
      ./cvms_cfg/data/pg.sql \
      ./cvms_cfg/data/
