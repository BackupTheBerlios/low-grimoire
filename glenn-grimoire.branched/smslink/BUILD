(
  patch  -p0  <  $SCRIPT_DIR/smslink-0.48b.patch &&
  cd client                              &&
  make                                   &&
  cd ../server                           &&
  make                                   &&
  prepare_install                        &&
  make install                           &&
  cd ../client                           &&
  make install                           &&
  cd ..                                  &&
  mkdir -p /usr/doc/$SPELL               &&
  mkdir -p /usr/doc/$SPELL/client        &&
  mkdir -p /usr/doc/$SPELL/server        &&
  cp CHANGELOG FAQ INSTALL README* /usr/doc/$SPELL &&
  cp client/{BUGS,INSTALL,TODO} /usr/doc/$SPELL/client      &&
  cp server/{BUGS,GW-INSTALL,INSTALL,TODO} /usr/doc/$SPELL/server &&
  mkdir -p /usr/share/$SPELL             &&
  cp -R varia /usr/share/$SPELL

) > $C_FIFO 2>&1