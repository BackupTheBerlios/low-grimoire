(
  rm -f .configured Makefile Makefile.config Makefile.drivers
  #patch -p0 < contrib/RPM/sms_client-fhs.patch &&
  #sed -i "s:ETCPREFIC:ETCPREFIX:" config/Makefile.config.linux &&
  #sed -i "s:CFLAGS   = -g -I. -Wall \$(PLATFORM):CFLAGS   = -g -I. -Wall \$(PLATFORM) $CFLAGS:" config/Makefile.config.linux &&
  #sed -i "s:\(CFLAGS\\s*=.*\):\\1 \${CFLAGS}:" config/Makefile.config.linux &&
  #sed -i "s:\(include ../../Makefile.config\):#\\1:" src/*/Makefile &&
  ./configure                            
  #./configure $OPTS                      &&
  #./configure -drivers                   &&
  make "PREFIX=/usr" "ETCPREFIX="        &&
  prepare_install                        &&
  make install                           &&
  mkdir -p /usr/doc/$SPELL               &&
  cp -R docs README* TODO FAQ /usr/doc/$SPELL &&
  mkdir -p /usr/share/$SPELL             &&
  cp -R contrib /usr/share/$SPELL        &&
  cp sms/init.d/smsd /etc/init.d

) > $C_FIFO 2>&1