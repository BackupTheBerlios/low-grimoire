(
 patch -p0 <$SCRIPT_DIRECTORY/gnome-pilot-conduits.patch &&
 ./configure  --prefix=/usr                              &&
  
  make                                        &&
  prepare_install                             &&
  make    install

) > $C_FIFO 2>&1
