(
  export PATH=$PATH:/usr/lib/j2sdk1.3.1/bin

  patch_it $SOURCE_CACHE/$SOURCE2 0

  if module_installed db
  then NO_DEFAULTS="sedit /default/d Makefile"
  fi

  cd  build_unix                                   &&
  ../dist/configure  --prefix=/usr                  \
                     --build=$BUILD                 \
                     --bindir=/usr/bin/db4          \
                     --includedir=/usr/include/db4  \
                     --enable-dynamic               \
                     --enable-compat185             \
                     --enable-cxx                   \
                     $OPTS                         &&
  sedit  's/$(prefix)\/docs/\/usr\/share\/doc\/db4/' Makefile  &&
  $NO_DEFAULTS  &&
  make                                             &&
  prepare_install                                  &&
  make    install

) > $C_FIFO 2>&1
