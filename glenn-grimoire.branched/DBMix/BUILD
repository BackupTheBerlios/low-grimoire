(
  # This assumes that sed is invoked with -r, if not good luck
  ./configure --prefix=/usr   \
              $OPTS           &&
  sedit "s/^LDFLAGS = /LDFLAGS = -L\\.\\.\\/dbaudiolib\\/\\.libs/ " dbfsd_src/Makefile &&
  sedit "s/^LDFLAGS = /LDFLAGS = -L\\.\\.\\/dbaudiolib\\/\\.libs/ " xmms_plugin/Makefile &&
  make                        &&
  prepare_install             &&
  make    install  prefix=/usr

) > $C_FIFO 2>&1