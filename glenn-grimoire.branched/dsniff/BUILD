(
  sedit "s/dtd\\/kdex.dtd/\\/usr\\/share\\/apps\\/ksgmltools2\\/customization\\/dtd\\/kdex\\.dtd/" ./gui/docs/en/index.docbook

  ./configure --with-xinerama \
              $OPTS           &&
  make                        &&
  prepare_install             &&
  make    install  prefix=/usr

) > $C_FIFO 2>&1