(
  
  sed -i "s:/usr/local:/usr:" src/makefile   &&
  make -C src                                &&
  prepare_install                            &&
  make -C src   install                           
  
) > $C_FIFO 2>&1