(


  chmod -R u+rwX *
#lets install a better menu
  cd lib && bzcat $SCRIPT_DIRECTORY/mc.menu.patch.bz2 | patch -p0
  cd ..
  unset  CFLAGS
  unset  CXXFLAGS
  sedit "s/CFLAGS=-O2 ;/CFLAGS=\"${CFLAGS} \" LDFLAGS=\"${LDFLAGS}\"/" mc.configure
  sedit "s/-gnome/-gnome --mandir=\/usr\/share\/man/" mc.configure
  sedit "s/\$(prefix)\/man\/man/\$(prefix)\/share\/man\/man/g" Make.common.in

  ./mc.configure     &&
  make               &&
  prepare_install    &&
  make    install

) > $C_FIFO 2>&1
