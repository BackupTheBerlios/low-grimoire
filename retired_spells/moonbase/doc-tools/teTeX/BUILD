(

  ./configure  --prefix=/usr             \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --with-system-zlib        \
               --with-system-ncurses     \
               --with-system-libwww      \
               --without-texinfo         \
               --without-dialog          \
               --disable-multiplatform   \
               $OPTS                     &&
  default_make

) > $C_FIFO 2>&1
