(
  cd make/linux                &&
  make                         &&
  prepare_install              &&
  make    install  prefix=/usr &&
  mkdir -p /usr/share/$SPELL   &&
  cp -r ../../test /usr/share/$SPELL

) > $C_FIFO 2>&1