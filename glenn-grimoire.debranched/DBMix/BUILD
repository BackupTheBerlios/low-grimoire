  # This assumes that sed is invoked with -r, if not good luck
  ./configure --prefix=/usr   \
              $OPTS           &&
  sed -r -i "s:^LDFLAGS = :LDFLAGS = -L\\.\\./dbaudiolib/\\.libs:" dbfsd_src/Makefile &&
  sed -r -i "s:^LDFLAGS = :LDFLAGS = -L\\.\\./dbaudiolib/\\.libs:" xmms_plugin/Makefile &&
  read &&
  patch -p0 < $SCRIPT_DIR/DBMix-0.9.8.diff &&
  make                        &&
  prepare_install             &&
  make    install  prefix=/usr
