(

  # next line will aid in recognizing which languages were selected
  # so we output it here:
  set -x                                     &&
  LANGUAGES=${LANGUAGES:=c++}                &&
  ../gcc-$VERSION/configure  --host=$BUILD   \
               --enable-languages=$LANGUAGES \
               --prefix=/usr                 \
               --infodir=/usr/share/info     \
               --mandir=/usr/share/man       \
               --enable-__cxa_atexit         \
               --enable-threads              \
               --disable-nls                 \
               --enable-target-optspace      \
               --with-gnu-ld                 \
               --with-system-zlib            \
               --enable-shared               &&
  set +x                                     &&
  sedit 's/= install-headers-tar/= install-headers-cpio/' gcc/Makefile  &&
  make CFLAGS='-O' LIBCFLAGS='-g -O2' LIBCXXFLAGS='-g -O2 -fno-implicit-templates' bootstrap-lean                            &&
  prepare_install                            && 
  make install                               

) > $C_FIFO 2>&1

