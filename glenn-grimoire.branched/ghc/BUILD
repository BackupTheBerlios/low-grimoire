(
#  export CPPFLAGS="$CPPFLAGS -I/usr/include/gtk-2.0"
#  export CPPFLAGS="$CPPFLAGS -I/usr/lib/gtk-2.0/include"
#  export CPPFLAGS="$CPPFLAGS -I/usr/include/glib-2.0"
#  export CPPFLAGS="$CPPFLAGS -I/usr/lib/glib-2.0/include"
#  export CPPFLAGS="$CPPFLAGS -I/usr/include/pango-1.0"
#  export CPPFLAGS="$CPPFLAGS -I/usr/include/atk-1.0"
  export CPPFLAGS="$CPPFLAGS `pkg-config --cflags-only-I gtk+-2.0`"
  
  sed -i "s:GdkRegion \\*clipRgn,:GdkRegion \\*clipRgn,\n\t\t\t\t\t BOOL FIXME /\\* added in to allow ObjectIO to compile \\*/,:" libraries/ObjectIO/cbits/Linux/cpicture_121.c
  
  GHC_BIN=/opt/ghc/6.0.1-binary/bin/ghc
  ./configure --prefix=/opt/ghc/$VERSION \
	      --with-ghc=$GHC_BIN        \
	      --with-hc=$GHC_BIN         \
	      --enable-objectio          \
	      --enable-threaded-rts      \
	      --enable-src-tree-happy    \
	      --enable-src-tree-haddock  \
	      $OPTS            &&
  make                         &&
  prepare_install              &&
  make    install              

#  dispel "ghc,bin"             &&

) > $C_FIFO 2>&1