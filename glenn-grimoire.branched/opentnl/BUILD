(

  make                                   &&
  prepare_install                        &&
  install -o root -g root -m 644 tnl/libtnl.a /usr/lib &&
  install -o root -g root -m 644 libtomcrypt/libtomcrypt.a /usr/lib &&
  mkdir -p /usr/include/tnl /usr/include/libtomcrypt /usr/src/$BSPELL &&
  cp -r tnl/*.h /usr/include/tnl         &&
  cp -r libtomcrypt/*.h /usr/include/libtomcrypt

) > $C_FIFO 2>&1