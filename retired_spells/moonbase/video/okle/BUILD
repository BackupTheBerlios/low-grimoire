(

  export PATH=/opt/lunar/qt/3/bin:/opt/lunar/kde/3/bin:$PATH
  export KDEDIR=/opt/lunar/kde/3

  ./configure    --prefix=/opt/lunar/kde/3             \
                 --with-qt-dir=/opt/lunar/qt/3         \
                 --disable-debug                       \
                 --with-xinerama                       \
                 $OPTS                                &&

  make                 &&
  prepare_install      &&
  make install         

 
) > $C_FIFO 2>&1
