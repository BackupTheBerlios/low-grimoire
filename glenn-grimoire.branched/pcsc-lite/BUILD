(
  
  sed -i "s:/doc:/doc/pcsc-lite:" doc/Makefile.in
  sed -i "s:/doc:/doc/pcsc-lite:" doc/Makefile.am
  OPTS="--enable-libusb=/usr --enable-debugatr --enable-runpid=/var/run/pcsc-lite.pid"
  OPTS="$OPTS --enable-muscledropdir=/usr/pcsc/services/"
  OPTS="$OPTS --enable-usbdropdir=/usr/pcsc/drivers/"
  default_build
  cp DRIVERS README SECURITY /usr/doc/pcsc-lite
  
) > $C_FIFO 2>&1