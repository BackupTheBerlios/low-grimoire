(

  #sedit "s/sbin\/ldconfig/usr\/&/" Makefile    &&
  prepare_install                              &&
  mkdir -p /usr/X11R6/lib/modules/extensions   &&
  mkdir -p /usr/X11R6/lib/modules/drivers      &&
  make    install                              &&
  cp    -d  /usr/lib/libGL*   /usr/X11R6/lib   &&
  cp    -a  usr/include/GL/*  /usr/include/GL  &&
  
#  if [ ! `grep libgcc_s /etc/ld.so.preload` ] && [ -e /usr/lib/libgcc_s.so ]; then
#   echo "/usr/lib/libgcc_s.so" >> /etc/ld.so.preload &&
#   echo "Adding /usr/lib/libgcc_s.so to /etc/ld.so.preload to make the NVidia glx module load..."
#  fi


[ -e "/etc/ld.so.preload" ] && sedit "/libgcc_s/d" /etc/ld.so.preload || true

) > $C_FIFO 2>&1


