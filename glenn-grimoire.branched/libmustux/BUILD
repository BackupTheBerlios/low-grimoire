(
  echo "#include <string.h>" >> MustuxAudioFilter.hh
  
  ./configure $OPTS           &&
  make                        &&
  prepare_install             &&
  make    install  prefix=/usr

) > $C_FIFO 2>&1