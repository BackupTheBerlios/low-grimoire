(
  
  export LD_LIBRARY_PATH=/opt/lunar/qt/3/lib
  export PATH=/opt/lunar/qt/3/bin:$PATH

  ./configure  --prefix=/usr                     \
               --disable-debug                   \
               --with-qt-dir=/opt/lunar/qt/3     \
               $OPTS                             &&

  make                              &&
  prepare_install                   &&
  make    install

) > $C_FIFO 2>&1
