(
  if [ "$VERSION" == "0.48b" ]; then
    patch  -p0  <  $SCRIPT_DIR/smslink-0.48b.patch
  fi
  
  cd client                              &&
  make                                   &&
  cd ../server                           &&
  sed -i "s:SQL = :#SQL = :" Makefile    &&
  make                                   &&
  prepare_install                        &&
  make install PREFIX=/usr               &&
  cd ../client                           &&
  make install PREFIX=/usr               &&
  cd ..                                  &&
  mkdir -p /usr/doc/$SPELL               &&
  mkdir -p /usr/doc/$SPELL/client        &&
  mkdir -p /usr/doc/$SPELL/server        &&
  cp CHANGELOG FAQ INSTALL README* /usr/doc/$SPELL &&
  cp client/{BUGS,INSTALL,TODO} /usr/doc/$SPELL/client      &&
  cp server/{BUGS,GW-INSTALL,INSTALL,TODO} /usr/doc/$SPELL/server &&
  mkdir -p /usr/share/$SPELL             &&
  mkdir -p /usr/share/$SPELL/server      &&
  cp -R varia /usr/share/$SPELL          &&
  cp server/{gsmaccess,gsmcaps,gsmdbtab,gsmdevices} /usr/share/$SPELL/server

) > $C_FIFO 2>&1