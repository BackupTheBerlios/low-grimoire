(
  #export QTDIR=/usr
  
  #sed -i "s/\\\$QTDIR/\\/usr\\/include\\/qt/" configure
  #sed -i "s/\\\\$\\(QTDIR\\)\\/include/\\/usr\\/include\\/qt/" configure
  #sed -i "s/\\\\$\\(QTDIR\\)\\/lib/\\/usr\\/lib/" configure
  
  if [ $VERSION == "0.19.5" ]; then
      sed -i "s:#include \"MtaRegion.hh\"::" src/Song.hh
  fi
  
  ./configure --prefix=/usr   &&
  make                        &&
  prepare_install             &&
  make    install

) > $C_FIFO 2>&1
