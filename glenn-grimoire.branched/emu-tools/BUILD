(

  make -C dbgemu                             &&
  make                                       &&
  prepare_install                            &&
  make    install  prefix=/usr               &&
  install -m 755 dbgemu/dbgemu /usr/bin      &&
  mkdir -p /usr/doc/emu-tools/dbgemu         &&
  cp dbgemu/README /usr/doc/emu-tools/dbgemu

) > $C_FIFO 2>&1