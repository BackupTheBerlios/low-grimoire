(
  
  export LD_LIBRARY_PATH=/opt/lunar/qt/2/lib
  export PATH=/opt/lunar/kde/2/bin:/opt/lunar/qt/2/bin:$PATH
  export LD_RUN_PATH=/opt/lunar/kde/2/lib:/opt/lunar/kde/2/lib/kde2

  ./configure  --prefix=/opt/lunar/kde/2      \
               --disable-debug                \
               --enable-final                 \
               --with-qt-dir=/opt/lunar/qt/2  \
               $OPTS                          &&

  make                              &&
  prepare_install                   &&
  make    install

) > $C_FIFO 2>&1
