(
  cp /usr/share/automake-1.6/depcomp $SOURCE_DIRECTORY  &&
  cp /usr/share/automake-1.6/depcomp $SOURCE_DIRECTORY/libmodplug/ &&
  #unset CC CXX      &&
  aclocal           &&
  automake          &&
  autoconf          &&
  default_build

) > $C_FIFO 2>&1
