
(

  export  QTDIR=$SOURCE_DIRECTORY
  export  QT2INSTALL=/opt/lunar/qt/2

  sedit "s/-O2/$CXXFLAGS/"  'configs/linux-g++-shared'  &&

  echo  "yes"  |  ./configure  -release            \
                               -shared             \
                               -thread             \
                               -gif                \
                               -system-libmng      \
                               -system-libpng      \
                               -system-jpeg        \
                               -system-zlib        \
                               -no-g++-exceptions  \
                               -no-xft             \
                               $OPTS               &&
  make                                             &&
  prepare_install                                  &&
  make install                                     &&
  mkdir  -p                $QT2INSTALL/include     &&
  cp         include/*     $QT2INSTALL/include     &&
  cp     -r  lib           $QT2INSTALL             &&
  cp     -r  bin           $QT2INSTALL             &&
  cp     -r  doc/man       $QT2INSTALL             &&
  mkdir  -p                $DOCUMENT_DIRECTORY/qt2 &&
  cp     -r  doc/html      $DOCUMENT_DIRECTORY/qt2

  if ! grep -q "/opt/lunar/qt/2/lib" /etc/ld.so.conf; then
    echo "/opt/lunar/qt/2/lib" >> /etc/ld.so.conf  
  fi

) > $C_FIFO 2>&1
