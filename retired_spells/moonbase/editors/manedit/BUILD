(

  patch_it $SOURCE_CACHE/$SOURCE2 1                       &&
  
  ./configure Linux --prefix=/usr -v --enable="arch-i686" &&
  make                                     &&
  prepare_install                          &&
  make    install

) > $C_FIFO 2>&1
