(
  if [ $VERSION == '1.1.0' ]; then
    $SHARE_EXT=support
  fi

  ./configure $OPTS           &&
  make                        &&
  prepare_install             &&
  make    install  prefix=/usr&&
  mkdir -p /usr/share/libnet  &&
  cp -Rap sample $SHARE_EXT /usr/share/libnet &&
  install -o root -g root -m 755  libnet-config  /usr/bin

) > $C_FIFO 2>&1