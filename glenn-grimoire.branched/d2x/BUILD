(
  unpack $( guess_filename "${SOURCE[1]}" "$SOURCE_CACHE/$BSPELL/$VERSION" ) &&
  ./configure --prefix=/usr              \
              --bindir=/usr/games        \
	      --with-sharepath=/usr/share/$BSPELL \
	      --disable-debug            \
	      --enable-release           \
              $OPTS                      &&
  make                                   &&
  prepare_install                        &&
  make install                           &&
  mkdir -p /usr/share/$SPELL             &&
  cp -R "${SOURCE[1]}"/* /usr/share/$SPELL

) > $C_FIFO 2>&1