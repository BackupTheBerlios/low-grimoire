(
  
  patch -p0 < contrib/RPM/sms_client-fhs.patch &&
  sed -i "s:ETCPREFIC:ETCPREFIX:" config/Makefile.config.linux &&
  ./configure                            &&
  ./configure $OPTS                      &&
  ./configure -drivers                   &&
  sed -i "s:CFLAGS   = -g -I. -Wall \$(PLATFORM):CFLAGS   = -g -I. -Wall \$(PLATFORM) $CFLAGS:" Makefile.config &&
  make "PREFIX=/usr" "ETCPREFIX="        &&
  prepare_install                        &&
  make install                           &&
  mkdir -p /usr/doc/$SPELL               &&
  cp -R docs README* TODO FAQ /usr/doc/$SPELL &&
  mkdir -p /usr/share/$SPELL             &&
  cp -R contrib /usr/share/$SPELL

) > $C_FIFO 2>&1