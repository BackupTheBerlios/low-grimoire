(
  patch -p0 < $SCRIPT_DIR/gsm-1.0.10.patch &&
  make                                     &&
  prepare_install                          &&
  make install                             &&
  mkdir -p /usr/doc/$SPELL                 &&
  cp ChangeLog* INSTALL README /usr/doc/$SPELL

) > $C_FIFO 2>&1