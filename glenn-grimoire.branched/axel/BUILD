(
  
  ./configure --prefix=/usr      \
              $OPTS              &&
  make                           &&
  prepare_install                &&
  make install                   &&
  if augur installed Python; then
    cd gui/kapt
    make install
  fi

) > $C_FIFO 2>&1