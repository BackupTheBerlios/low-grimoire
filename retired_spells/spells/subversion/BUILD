LDFLAGS="-L$BUILD_DIR/$BSPELL/libsvn_client/.libs \
        -L$BUILD_DIR/$BSPELL/libsvn_delta/.libs \
        -L$BUILD_DIR/$BSPELL/libsvn_fs/.libs \
        -L$BUILD_DIR/$BSPELL/libsvn_repos/.libs \
        -L$BUILD_DIR/$BSPELL/libsvn_ra_svn/.libs \
        -L$BUILD_DIR/$BSPELL/libsvn_ra/.libs \
        -L$BUILD_DIR/$BSPELL/libsvn_ra_dav/.libs \
        -L$BUILD_DIR/$BSPELL/libsvn_ra_local/.libs \
        -L$BUILD_DIR/$BSPELL/libsvn_subr/.libs \
        -L$BUILD_DIR/$BSPELL/libsvn_diff/.libs \
        -L$BUILD_DIR/$BSPELL/libsvn_wc/.libs" \

(

  ./configure --prefix=/usr --with-apr=/usr/bin/apr-config --with-apr-util=/usr/bin/apu-config --with-zlib --with-ssl --with-neon=/usr	&&
  export LD_LIBRARY_PATH=/usr/lib:$LD_LIBRARY_PATH
  make                                                                   &&
  prepare_install                                                        &&
  make install     
  
) 2>&1 > $C_FIFO
