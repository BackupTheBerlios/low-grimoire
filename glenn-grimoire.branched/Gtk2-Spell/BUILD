(
  if [ "$VERSION" == "1.00" ]; then
    sed -i "s:#my %pkgcfg:my %pkgcfg:" Makefile.PL
  fi
  
  perl  Makefile.PL  &&
  make               &&
  prepare_install    &&
  make    install

) > $C_FIFO 2>&1
