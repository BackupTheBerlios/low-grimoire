(
  if [ "$VERSION" == "0.4.2" ]; then
    sed -i "s:fftw3f:fftw3:" configure
  fi
  
  ./configure --prefix=/usr   \
              $OPTS           &&
  make                        &&
  prepare_install             &&
  make    install  prefix=/usr

) > $C_FIFO 2>&1