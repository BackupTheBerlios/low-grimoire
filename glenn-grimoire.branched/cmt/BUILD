(
  
  cd src                                     &&
  sed -i "s:/usr/local:/usr:" makefile       &&
  make                                       &&
  prepare_install                            &&
  make    install                           
  
) > $C_FIFO 2>&1