(
  sed -i "s:gtkd_stc:gtk_stc:" *
  sed -i "s:gtkd_xrc:gtk_xrc:" *

  ./configure $OPTS           &&
  make                        &&
  prepare_install             &&
  make    install  prefix=/usr

) > $C_FIFO 2>&1