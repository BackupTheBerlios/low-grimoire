(
  
  ./configure --prefix=/usr              \
              --with-html-dir=/usr/doc/$SPELL \
	      --enable-ipv6              \
	      --enable-gnome_ui=yes      \
	      --enable-platform-gnome-2  \
              $OPTS                      &&
  make                                   &&
  prepare_install                        &&
  make install

) > $C_FIFO 2>&1