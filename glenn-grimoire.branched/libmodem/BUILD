(
  sed -i "s:/var/adm:/var/log:" CONFIG.MAKE         &&
  sed -i "s:CCFLAGS = -Wall -I.:CCFLAGS = -Wall -I. $(CCFLAGS):" CONFIG.MAKE         &&
  make                                   &&
  prepare_install                        &&
  make install                           &&
  mkdir -p /usr/doc/$SPELL               &&
  cp README* TODO /usr/doc/$SPELL        &&
  cp etc/modems /etc

) > $C_FIFO 2>&1