(
  export POSTGRES_INCLUDE=`pg_config --includedir`
  export POSTGRES_LIB=`pg_config --libdir`

  perl  Makefile.PL  &&
  make               &&
  prepare_install    &&
  make    install

) > $C_FIFO 2>&1
