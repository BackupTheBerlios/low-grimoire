(
  #export QTDIR=/usr
  
  #sed -i "s/\\\$QTDIR/\\/usr\\/include\\/qt/" configure
  #sed -i "s/\\\\$\\(QTDIR\\)\\/include/\\/usr\\/include\\/qt/" configure
  #sed -i "s/\\\\$\\(QTDIR\\)\\/lib/\\/usr\\/lib/" configure
  #echo "LOOK NOW"
  #sleep 2000
  
  ./configure --prefix=/usr   &&
  make                        &&
  prepare_install             &&
  make    install

) > $C_FIFO 2>&1
