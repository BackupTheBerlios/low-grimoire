(
  echo CFLAGS:= $CFLAGS
  echo OPTS:= $OPTS
  set -x && #Let's show the logs what we've used for debug
  ./autogen.sh                      &&
  ./configure --prefix=/usr         \
              --sysconfdir=/etc     \
              --localstatedir=/var  \
              $OPTS                 &&
  set +x     && ##turn it off so that the logs stay readable
  make                              &&
  prepare_install                   &&
  make    install

) > $C_FIFO 2>&1
