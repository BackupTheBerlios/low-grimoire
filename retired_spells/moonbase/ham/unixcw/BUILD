(

#  mkdir  /tmp/unixcw_qt
#  ln  -s /usr/include/qt  /tmp/unixcw_qt/include
#  ln  -s /usr/bin         /tmp/unixcw_qt/bin
#  ln  -s /usr/lib/qt      /tmp/unixcw_qt/lib

  export QTDIR=/opt/lunar/qt/3/
# need to hack Makefile.in
  sedit "s/lqt/lqt-mt/" xcwcp/Makefile.in

  ./configure  --prefix=/usr          \
               --sysconfdir=/etc      \
               --localstatedir=/var   \
               $OPTS                  &&
  make  all                           &&
  prepare_install                     &&
  make    install                     &&
#  rm  -r   /tmp/unixcw_qt/            &&
  ln  -sf  /usr/man/man1/xcwcp.1.gz   \
           /usr/man/man1/unixcw.1.gz  &&

  cp  $SCRIPT_DIRECTORY/unixcw  /usr/bin

) > $C_FIFO 2>&1
