(
 patch -p0 <$SCRIPT_DIRECTORY/gnome-pilot.patch &&
 unset LDFLAGS                                  &&
 ./configure  --prefix=/usr                     &&
  
  perl -pi -e 's/PISOCK_LIBS = -lpisock/PISOCK_LIBS = -lpisock -lpisync/g' `find . -name Makefile` &&
  make                                        &&
  prepare_install                             &&
  make    install

) > $C_FIFO 2>&1
