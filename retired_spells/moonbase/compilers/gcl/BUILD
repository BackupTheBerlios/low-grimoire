(
  cd $SOURCE_DIRECTORY     &&
  ./configure $OPTS --prefix=/usr --enable-notify=no --enable-tkconfig=/usr/share/gcl        &&
  if ! module_installed emacs; then
  	sedit "s!EMACS_SITE_LISP=!EMACS_SITE_LISP=/usr/share/gcl!" makedefs &&
  	sedit "s!EMACS_SITE_LISP=!EMACS_SITE_LISP=/usr/share/gcl!" makedefc
  fi                       &&
  make                     &&
  prepare_install          &&
  make install

) > $C_FIFO 2>&1
