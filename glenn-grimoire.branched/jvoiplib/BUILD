(
  # NOTE: at a future date try to compile the Qt test tool that comes with it
  
  ./configure --prefix=/usr              \
              $OPTS                      &&
  make                                   &&
  prepare_install                        &&
  make install                           &&
  mkdir -p /usr/doc/$SPELL               &&
  cp -R doc README* /usr/doc/$SPELL

) > $C_FIFO 2>&1