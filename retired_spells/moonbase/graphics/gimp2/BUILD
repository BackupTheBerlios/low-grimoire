(
  ./configure  --prefix=/usr            \
               --mandir=/usr/share/man  \
               --enable-debug           \
               --without-sendmail       \
               --disable-gtk-doc        \
               $OPTS                    &&
default_make           

) > $C_FIFO 2>&1
