(
  sed -i -e "171s:\$PREFIX:\"$PREFIX\":" configure &&
  sed -i -e "36s:AMAP_PREFIX\"/bin\":\"etc/amap\":" amap.h &&
  ./configure --prefix=/usr &&
  make                      &&
  prepare_install           &&
  install -o root -g root -m 644 amap /usr/bin        &&
  install -o root -g root -m 644 amapcrap /usr/bin    &&
  mkdir -p /etc/$SPELL                                &&
  install -o root -g root -m 644 appdefs* /etc/$SPELL &&
  install -o root -g root -m 644 amap.1 /usr/share/man/man1
  
) > $C_FIFO 2>&1